%% 用于电机线电压分析的FFT脚本 (兼容CSV格式)
clear; clc; close all;

%% 1. 尝试以多种方式加载数据
filename = 'voltage_data.csv';

try
    data = readmatrix(filename);          % 纯数值数组
    if size(data,2) < 2
        error('至少要有两列');
    end
    voltage_signal = data(:,2);           % 第二列就是电压
    disp('使用 readmatrix 读取成功');
catch ME
    try
        data = csvread(filename);
        voltage_signal = data(:,2);
        disp('使用 csvread 读取成功');
    catch
        fileID = fopen(filename,'r');
        data = textscan(fileID,'%f%f','Delimiter','|','HeaderLines',1);
        fclose(fileID);
        voltage_signal = data{2};
        disp('使用 textscan 读取成功');
    end
end

%% 2. 关键参数设置
% 根据示波器设置
% CH1设置为10X探头，示波器可能已补偿，但这里再确认
probe_ratio = 10;  % 根据示波器设置
voltage_signal = voltage_signal / probe_ratio;
Fs_raw = 1e9; % 1 GS/s
N_raw = length(voltage_signal);

fprintf('原始数据点数: %d\n', N_raw);
fprintf('原始采样率: %.0f Hz\n', Fs_raw);
fprintf('原始数据时长: %.6f s\n', N_raw/Fs_raw);

% 检查数据截取 - 基于12ms的采集时间
total_time = N_raw / Fs_raw;
fprintf('总采集时间: %.6f s\n', total_time);

% 如果数据过长，可以截取中间稳定部分
start_idx = max(1, floor(0.1 * N_raw)); % 去掉前10%
end_idx = floor(0.9 * N_raw); % 去掉后10%
voltage_signal = voltage_signal(start_idx:end_idx);
N_raw = length(voltage_signal);
fprintf('截取后数据点数: %d\n', N_raw);

% 降采样因子 - 更保守的降采样
desired_max_freq = 200e3; % 200 kHz
decimation_factor = floor(Fs_raw / (2.5 * desired_max_freq)); % 使用2.5倍过采样
decimation_factor = max(1, min(decimation_factor, 5000)); % 限制最大降采样因子

fprintf('降采样因子: %d\n', decimation_factor);

% 降采样处理
Fs = Fs_raw / decimation_factor;
if decimation_factor > 1
    voltage_signal = resample(voltage_signal, 1, decimation_factor); % 使用resample进行抗混叠
else
    voltage_signal = voltage_signal(1:decimation_factor:end);
end
N = length(voltage_signal);

fprintf('降采样后点数: %d\n', N);
fprintf('降采样后采样率: %.0f Hz\n', Fs);
fprintf('降采样后频率分辨率: %.2f Hz\n', Fs/N);

%% 3. 数据预处理
% 去除直流偏移
voltage_mean = mean(voltage_signal);
voltage_signal_ac = voltage_signal - voltage_mean;

fprintf('信号平均值: %.4f V\n', voltage_mean);
fprintf('信号标准差: %.4f V\n', std(voltage_signal_ac));

% 可选：滤波处理（去除高频噪声）
if Fs > 100e3
    % 设计一个低通滤波器
    fc = 50e3; % 截止频率50kHz
    [b, a] = butter(4, fc/(Fs/2), 'low');
    voltage_signal_ac = filtfilt(b, a, voltage_signal_ac);
    fprintf('应用低通滤波器，截止频率: %.0f Hz\n', fc);
end

%% 4. FFT计算
% 使用整个数据长度
Y = fft(voltage_signal_ac, N);
P2 = abs(Y / N);
P1 = P2(1:floor(N/2)+1);
P1(2:end-1) = 2 * P1(2:end-1);

% 频率轴
f = Fs * (0:(length(P1)-1)) / N;

%% 5. 寻找基频和主要峰值
% 首先找到幅度最大的频率（基频）
[peak_magnitude, peak_index] = max(P1);
fundamental_freq = f(peak_index);

% 寻找所有显著峰值
[pks, locs] = findpeaks(P1, 'MinPeakHeight', max(P1)*0.05, ...
    'MinPeakProminence', max(P1)*0.02, ...
    'MinPeakDistance', round(1/(f(2)-f(1)))); % 至少间隔1个频率分辨率

% 对峰值进行排序
[sorted_pks, sort_idx] = sort(pks, 'descend');
sorted_locs = locs(sort_idx);

% 确保基频是第一个峰值
if sorted_locs(1) ~= peak_index && ismember(peak_index, locs)
    % 将基频移到第一个位置
    sorted_locs = [peak_index; sorted_locs(sorted_locs ~= peak_index)];
    sorted_pks = [P1(peak_index); sorted_pks(sorted_locs(2:end) ~= peak_index)];
end

%% 6. 绘图（优化显示）
figure('Position',[50 50 1400 800]);

% 子图1：时域信号
subplot(3,3,1);
plot_samples = min(2000, N);
t_plot = (0:plot_samples-1) / Fs * 1000; % 转换为毫秒
plot(t_plot, voltage_signal(1:plot_samples));
title('时域电压信号');
xlabel('时间 (ms)'); ylabel('电压 (V)');
grid on;

% 子图2：时域信号AC分量
subplot(3,3,2);
plot(t_plot, voltage_signal_ac(1:plot_samples));
title('去除直流后的信号');
xlabel('时间 (ms)'); ylabel('电压 (V)');
grid on;

% 子图3：全频谱（对数坐标）
subplot(3,3,3);
semilogy(f, P1, 'b', 'LineWidth', 1);
hold on;
plot(f(sorted_locs(1:min(10,length(sorted_locs)))), sorted_pks(1:min(10,length(sorted_pks))), 'ro', 'MarkerSize', 8);
title('全幅度频谱（对数坐标）');
xlabel('频率 (Hz)'); ylabel('幅度 (V)');
grid on;
xlim([0 min(Fs/2, 200e3)]); % 限制到200kHz
legend('频谱', '主要峰值');

% 子图4：0-5kHz低频段
subplot(3,3,4);
plot(f, P1, 'b', 'LineWidth', 1);
hold on;
plot(f(sorted_locs(1:min(10,length(sorted_locs)))), sorted_pks(1:min(10,length(sorted_pks))), 'ro', 'MarkerSize', 8);
title('低频段频谱 (0-5 kHz)');
xlabel('频率 (Hz)'); ylabel('幅度 (V)');
grid on;
xlim([0 5000]);

% 子图5：基频附近详细频谱
subplot(3,3,5);
zoom_range = max(200, fundamental_freq * 0.2); % 基频±20%范围
f_min = max(10, fundamental_freq - zoom_range);
f_max = fundamental_freq + zoom_range;
idx_range = find(f >= f_min & f <= f_max);
plot(f(idx_range), P1(idx_range), 'b-', 'LineWidth', 2);
hold on;
plot(fundamental_freq, peak_magnitude, 'ro', 'MarkerSize', 10, 'LineWidth', 2);
title(sprintf('基频附近频谱: %.1f Hz', fundamental_freq));
xlabel('频率 (Hz)'); ylabel('幅度 (V)');
grid on;

% 子图6：谐波分析（修复bar图错误）
subplot(3,3,6);
if fundamental_freq > 10 % 基频需要足够大
    max_harmonics = min(20, floor(min(Fs/2, 50e3) / fundamental_freq));
    if max_harmonics >= 1
        harmonics = 1:max_harmonics;
        harmonic_freqs = harmonics * fundamental_freq;
        harmonic_amps = zeros(1, max_harmonics);
        
        for i = 1:max_harmonics
            target_freq = harmonic_freqs(i);
            freq_diff = abs(f - target_freq);
            [min_diff, idx] = min(freq_diff);
            if min_diff < f(2) * 2 % 在合理范围内
                harmonic_amps(i) = P1(idx);
            end
        end
        
        % 确保频率值唯一
        [unique_freqs, unique_idx] = unique(harmonic_freqs);
        unique_amps = harmonic_amps(unique_idx);
        
        bar(unique_freqs/1000, unique_amps, 'FaceColor', [0.2 0.6 0.8]);
        title('谐波幅度分析');
        xlabel('频率 (kHz)'); ylabel('幅度 (V)');
        grid on;
        
        % 添加谐波次数标签
        for i = 1:length(unique_freqs)
            text(unique_freqs(i)/1000, unique_amps(i)*1.05, ...
                sprintf('%d', harmonics(unique_idx(i))), ...
                'HorizontalAlignment', 'center', 'FontSize', 8);
        end
    else
        text(0.5, 0.5, '基频过低，无法计算谐波', 'HorizontalAlignment', 'center');
        axis off;
    end
else
    text(0.5, 0.5, '基频过低 (<10Hz)', 'HorizontalAlignment', 'center');
    axis off;
end

% 子图7：频谱瀑布图（STFT）
subplot(3,3,7);
window_size = min(1024, floor(N/20));
noverlap = floor(window_size/2);
nfft = window_size;
spectrogram(voltage_signal_ac, window_size, noverlap, nfft, Fs, 'yaxis');
title('短时傅里叶变换');
ylim([0 20]); % 限制频率范围
colorbar;

% 子图8：包络分析（用于检测调制）
subplot(3,3,8);
analytic_signal = hilbert(voltage_signal_ac);
envelope = abs(analytic_signal);
plot((0:length(envelope)-1)/Fs*1000, envelope);
title('信号包络');
xlabel('时间 (ms)'); ylabel('包络幅度 (V)');
grid on;

% 子图9：统计信息
subplot(3,3,9);
axis off;

% 使用更紧凑的布局
info_text = {
    '信号统计信息:'
    '------------------------'
    sprintf('采样率: %.0f Hz', Fs)
    sprintf('数据点数: %d', N) 
    sprintf('分辨率: %.2f Hz', f(2)-f(1))
    sprintf('基频: %.2f Hz', fundamental_freq)
    sprintf('基频幅值: %.4f V', peak_magnitude)
    sprintf('直流分量: %.2f V', voltage_mean)
    sprintf('RMS值: %.2f V', rms(voltage_signal_ac))
    sprintf('峰峰值: %.2f V', max(voltage_signal_ac)-min(voltage_signal_ac))
};

% 如果有THD信息
if exist('THD', 'var')
    info_text{end+1} = sprintf('THD: %.2f%%', THD);
end

% 一次性显示所有文本
text(0.05, 0.95, info_text, 'FontSize', 9, 'VerticalAlignment', 'top', ...
    'FontName', 'FixedWidth');  % 使用等宽字体对齐更好

%% 7. 详细结果输出
fprintf('\n===== 详细FFT分析结果 =====\n');
fprintf('采样频率: %.0f Hz\n', Fs);
fprintf('数据点数: %d\n', N);
fprintf('频率分辨率: %.2f Hz\n', f(2)-f(1));
fprintf('分析带宽: 0 - %.0f Hz\n', Fs/2);
fprintf('基频: %.2f Hz\n', fundamental_freq);
fprintf('基频幅度: %.4f V\n', peak_magnitude);
fprintf('---\n');

% 显示前15个主要频率成分
fprintf('主要频率成分 (前15个):\n');
topN = min(15, length(sorted_pks));
for i = 1:topN
    freq_val = f(sorted_locs(i));
    amp_val = sorted_pks(i);
    
    fprintf('  峰值 %2d: 频率 = %8.2f Hz, 幅度 = %8.4f V', i, freq_val, amp_val);
    
    % 判断是否为谐波
    if fundamental_freq > 1
        harmonic_order = round(freq_val / fundamental_freq);
        if harmonic_order >= 1 && abs(freq_val / fundamental_freq - harmonic_order) < 0.05
            fprintf('  (第%2d次谐波)', harmonic_order);
        end
    end
    
    % 判断是否为基频的倍频
    if i > 1 && fundamental_freq > 1
        ratio = freq_val / fundamental_freq;
        if abs(ratio - round(ratio)) < 0.05
            fprintf('  (基频的%.1f倍)', ratio);
        end
    end
    
    fprintf('\n');
end

% 计算THD
if fundamental_freq > 10
    % 找到基频精确位置
    [~, fund_idx] = min(abs(f - fundamental_freq));
    V_fundamental = P1(fund_idx);
    
    % 计算2-50次谐波
    harmonic_orders = 2:50;
    harmonic_freqs = harmonic_orders * fundamental_freq;
    harmonic_power = 0;
    
    for i = 1:length(harmonic_freqs)
        if harmonic_freqs(i) <= f(end)
            [~, idx] = min(abs(f - harmonic_freqs(i)));
            if abs(f(idx) - harmonic_freqs(i)) < f(2) * 5
                harmonic_power = harmonic_power + (P1(idx)^2);
            end
        end
    end
    
    THD = sqrt(harmonic_power) / V_fundamental * 100;
    fprintf('---\n');
    fprintf('总谐波失真 (THD, 2-50次): %.2f%%\n', THD);
    
    % 计算特定谐波含量
    if fundamental_freq < 1000 % 对于较低基频
        for order = [3, 5, 7] % 奇次谐波通常更显著
            harmonic_freq = order * fundamental_freq;
            if harmonic_freq <= f(end)
                [~, idx] = min(abs(f - harmonic_freq));
                if abs(f(idx) - harmonic_freq) < f(2) * 3
                    harmonic_content = P1(idx) / V_fundamental * 100;
                    fprintf('  第%d次谐波含量: %.2f%%\n', order, harmonic_content);
                end
            end
        end
    end
end

fprintf('\n分析完成！\n');

%% 8. 保存结果到文件
% 保存频谱数据
spectrum_data = [f', P1];
csvwrite('spectrum_results.csv', spectrum_data);

% 保存主要峰值 - 修复维度不一致问题
if ~isempty(sorted_locs)
    % 确保转换为列向量并保持一致性
    top_n = min(20, length(sorted_locs));
    
    % 方法1：确保都是列向量
    freq_peaks = f(sorted_locs(1:top_n))';
    amp_peaks = sorted_pks(1:top_n)';
    
    % 检查维度是否匹配
    if size(freq_peaks, 1) ~= size(amp_peaks, 1)
        % 如果不匹配，强制转换
        freq_peaks = freq_peaks(:);  % 确保是列向量
        amp_peaks = amp_peaks(:);    % 确保是列向量
    end
    
    peak_data = [freq_peaks, amp_peaks];
    csvwrite('peak_frequencies.csv', peak_data);
    
    fprintf('保存了 %d 个峰值频率数据\n', top_n);
end


%% 基于已知电机参数
fprintf('\n===== 基于已知参数分析 =====\n');

% 已知参数
N_mech = 60;        % 机械转速 (RPM) - 您提供的
f_pwm = 20000;      % PWM频率 (Hz) - 您提供的
p = 5;              % 极对数（需要您提供）

% 首先计算实际电频率
% 电频率公式：f_e = (p * N_mech) / 60
if exist('p', 'var') && ~isempty(p)
    f_e_actual = (p * N_mech) / 60;
    fprintf('基于转速和极对数的实际电频率:\n');
    fprintf('  机械转速: %d RPM\n', N_mech);
    fprintf('  极对数: p = %d\n', p);
    fprintf('  计算的电频率: f_e = %.2f Hz\n', f_e_actual);
else
    fprintf('请提供极对数 p 以计算实际电频率\n');
end

fprintf('\n检测到的39.99 kHz分析:\n');
fprintf('  这很可能是 %.0f kHz PWM频率的2次谐波\n', f_pwm/1000);
fprintf('  因为 %.1f kHz ≈ 2 × %.1f kHz\n', fundamental_freq/1000, f_pwm/1000);

%% 寻找实际的反电动势频率
% 在低频段（0-500 Hz）搜索可能的电机基频
fprintf('\n在低频段搜索电机基频...\n');

% 设置搜索范围：0-500 Hz（对应0-3000 RPM，假设p=1-10）
search_range = find(f <= 500);
if ~isempty(search_range)
    [low_freq_peaks, low_freq_locs] = findpeaks(P1(search_range), ...
        'MinPeakHeight', max(P1)*0.01, ...
        'MinPeakProminence', max(P1)*0.005);
    
    if ~isempty(low_freq_peaks)
        [sorted_peaks, sort_idx] = sort(low_freq_peaks, 'descend');
        sorted_locs = low_freq_locs(sort_idx);
        
        fprintf('低频段发现的显著峰值:\n');
        for i = 1:min(5, length(sorted_peaks))
            freq_val = f(search_range(1) + sorted_locs(i) - 1);
            fprintf('  峰值 %d: %.2f Hz, 幅度: %.4f V\n', ...
                i, freq_val, sorted_peaks(i));
            
            % 如果是60 RPM对应的频率
            for test_p = 1:20  % 测试1-20极对数
                test_f = (test_p * N_mech) / 60;
                if abs(freq_val - test_f) < 1  % 1Hz容差
                    fprintf('    -> 可能是 p=%d 极对数的电频率 (%.2f Hz)\n', test_p, test_f);
                end
            end
        end
    else
        fprintf('在0-500 Hz范围内未发现显著峰值\n');
    end
else
    fprintf('频率范围设置错误\n');
end

%% 专门搜索PWM频率及其谐波
fprintf('\n搜索PWM频率 (%.0f Hz) 及其谐波:\n', f_pwm);

% 搜索PWM频率附近
pwm_harmonics = 1:10;  % 1-10次谐波
for harmonic = pwm_harmonics
    target_freq = harmonic * f_pwm;
    [min_diff, idx] = min(abs(f - target_freq));
    
    if min_diff < 100  % 100Hz容差
        fprintf('  %d次谐波: 目标 %.0f Hz, 最近 %.1f Hz, 幅度 %.4f V', ...
            harmonic, target_freq, f(idx), P1(idx));
        
        if abs(f(idx) - fundamental_freq) < 1
            fprintf('  <-- 这是检测到的主要峰值\n');
        else
            fprintf('\n');
        end
    end
end

%% 绘制修正的频谱图（重点关注低频和PWM频段）
figure('Name', '修正频谱分析', 'Position', [100 100 1200 800]);

% 子图1：全频谱
subplot(2,3,1);
semilogy(f, P1);
title('全频谱 (0-250 kHz)');
xlabel('频率 (Hz)'); ylabel('幅度 (V)');
grid on;
hold on;

% 子图2：低频段 (0-1 kHz)
subplot(2,3,2);
low_f_idx = find(f <= 1000);
plot(f(low_f_idx), P1(low_f_idx));
title('低频段 (0-1 kHz)');
xlabel('频率 (Hz)'); ylabel('幅度 (V)');
grid on;

% 标记可能的电频率
if exist('p', 'var') && ~isempty(p)
    f_e_markers = (p * [10:10:100]) / 60;  % 10-100 RPM对应的频率
    hold on;
    for i = 1:length(f_e_markers)
        if f_e_markers(i) <= 1000
            [~, idx] = min(abs(f - f_e_markers(i)));
            plot(f(idx), P1(idx), 'ro', 'MarkerSize', 8);
        end
    end
end

% 子图3：PWM频段附近
subplot(2,3,3);
pwm_range = [f_pwm*0.8, f_pwm*2.2];
pwm_idx = find(f >= pwm_range(1) & f <= pwm_range(2));
plot(f(pwm_idx), P1(pwm_idx));
title(sprintf('PWM频段 (%.0f-%.0f Hz)', pwm_range(1), pwm_range(2)));
xlabel('频率 (Hz)'); ylabel('幅度 (V)');
grid on;
hold on;

% 子图4：时域波形（可能显示PWM调制）
subplot(2,3,4);
% 显示几个PWM周期
pwm_period_samples = round(Fs / f_pwm);
plot_points = min(10 * pwm_period_samples, length(voltage_signal_ac));
t_pwm = (0:plot_points-1) / Fs * 1e6;  % 微秒
plot(t_pwm, voltage_signal_ac(1:plot_points));
title('时域信号（可能显示PWM）');
xlabel('时间 (us)'); ylabel('电压 (V)');
grid on;

% 子图5：包络分析（提取反电动势）
subplot(2,3,5);
% 使用低通滤波提取包络（截止频率设为可能电频率的10倍）
if exist('p', 'var') && ~isempty(p)
    f_cutoff = 10 * f_e_actual;
else
    f_cutoff = 1000;  % 默认1kHz
end

% 设计包络提取滤波器
[b_lp, a_lp] = butter(2, f_cutoff/(Fs/2), 'low');
voltage_envelope = filtfilt(b_lp, a_lp, abs(voltage_signal_ac));

% 显示包络
t_env = (0:length(voltage_envelope)-1) / Fs;
plot(t_env, voltage_envelope);
title('信号包络（可能包含反电动势）');
xlabel('时间 (s)'); ylabel('包络电压 (V)');
grid on;

% 子图6：参数总结
subplot(2,3,6);
axis off;

summary_text = {
    '分析总结:'
    '============'
    sprintf('检测到主峰: %.1f kHz', fundamental_freq/1000)
    sprintf('已知PWM频率: %.1f kHz', f_pwm/1000)
    sprintf('已知机械转速: %d RPM', N_mech)
    ''
    '判断:'
    sprintf('%.1f kHz ≈ 2 × %.1f kHz', fundamental_freq/1000, f_pwm/1000)
    '主峰很可能是PWM的2次谐波'
    ''
    '建议:'
    '1. 在0-500Hz寻找电频率'
    '2. 检查极对数 p'
    '3. 可能需要低通滤波去除PWM'
};

text(0.1, 0.95, summary_text, 'FontSize', 9, 'VerticalAlignment', 'top');