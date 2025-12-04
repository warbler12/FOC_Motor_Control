%% 修正：正确应用探头比例（除以10），并合并所有图到一个figure
clear; clc; close all;

%% 1. 加载数据并正确应用探头比例
filename = 'voltage_data.csv';
try
    data = readmatrix(filename);
    voltage_measured = data(:,2);  % 示波器显示的电压值
    disp('数据读取成功');
catch
    error('数据读取失败');
end

% 关键修正：正确应用探头比例因子
probe_ratio = 10;  % 10X探头
voltage_actual = voltage_measured / probe_ratio;  % 实际电压 = 测量值 ÷ 10

fprintf('===== 探头比例校正 =====\n');
fprintf('探头比例: %dX (示波器显示值 ÷ %d = 实际电压)\n', probe_ratio, probe_ratio);

%% 2. 参数计算
Fs_raw = 1e9;          % 原始采样率 1 GS/s
N_total = length(voltage_actual);
total_time = N_total / Fs_raw;  % 12 ms

N_mech = 60;           % 机械转速 60 RPM
p = 5;                 % 极对数

% 频率计算：
f_mech = N_mech / 60;  % 机械频率 = 1 Hz
f_elec = p * f_mech;   % 电频率 = 5 Hz
f_pwm = 20000;         % PWM频率 20 kHz

fprintf('\n===== 参数计算 =====\n');
fprintf('机械转速: %d RPM\n', N_mech);
fprintf('极对数: p = %d\n', p);
fprintf('电频率: f_e = %.3f Hz\n', f_elec);
fprintf('PWM频率: f_pwm = %.0f Hz\n', f_pwm);
fprintf('数据时长: %.3f ms\n', total_time*1000);
fprintf('电角度覆盖: %.1f°\n', total_time * f_elec * 360);

%% 3. 信号统计分析（校正后）
voltage_mean = mean(voltage_actual);
voltage_std = std(voltage_actual);
voltage_pp = max(voltage_actual) - min(voltage_actual);

fprintf('\n===== 信号统计（校正后实际电压） =====\n');
fprintf('平均值: %.4f V\n', voltage_mean);
fprintf('标准差: %.4f V\n', voltage_std);
fprintf('峰峰值: %.4f V\n', voltage_pp);
fprintf('有效值: %.4f V\n', rms(voltage_actual));

%% 4. 创建一个大图包含所有子图
figure('Position', [50 50 1400 900], 'Name', '电机反电动势分析（探头10X已校正）');

%% 子图1：原始信号对比（校正前后）
subplot(3,4,1:2);
t_raw = (0:min(5000,N_total)-1) / Fs_raw * 1e6;
plot(t_raw, voltage_measured(1:min(5000,N_total)), 'b-', 'LineWidth', 1);
hold on;
plot(t_raw, voltage_actual(1:min(5000,N_total)), 'r-', 'LineWidth', 1.5);
title('原始信号对比（校正前后）');
xlabel('时间 (us)'); ylabel('电压 (V)');
legend('示波器显示值', '实际电压（÷10）', 'Location', 'best');
grid on;

%% 子图2：PWM细节
subplot(3,4,3:4);
T_pwm = 1/f_pwm;
samples_per_pwm = round(Fs_raw * T_pwm);
show_pwm_cycles = 10;
show_samples = min(show_pwm_cycles * samples_per_pwm, N_total);
t_pwm = (0:show_samples-1) / Fs_raw * 1e6;
plot(t_pwm, voltage_actual(1:show_samples), 'b-', 'LineWidth', 1);
title(sprintf('%d个PWM周期细节 (周期=%.1f us)', show_pwm_cycles, T_pwm*1e6));
xlabel('时间 (us)'); ylabel('实际电压 (V)');
grid on;

%% 5. 适度降采样
Fs_down = 1e6;  % 1 MHz
dec_factor = floor(Fs_raw / Fs_down);
voltage_down = resample(voltage_actual, 1, dec_factor);
Fs = Fs_raw / dec_factor;
N_down = length(voltage_down);

fprintf('\n降采样到 %.0f Hz，点数: %d\n', Fs, N_down);

%% 子图3：降采样后信号
subplot(3,4,5);
t_down = (0:min(2000,N_down)-1) / Fs * 1e6;
plot(t_down, voltage_down(1:min(2000,N_down)), 'b-', 'LineWidth', 1);
title('降采样后信号');
xlabel('时间 (us)'); ylabel('实际电压 (V)');
grid on;

%% 6. PWM平均电压提取
T_pwm_samples = round(Fs / f_pwm);
num_pwm_periods = floor(N_down / T_pwm_samples);

if num_pwm_periods >= 2
    pwm_avg_voltage = zeros(num_pwm_periods, 1);
    pwm_time = zeros(num_pwm_periods, 1);
    
    for i = 1:num_pwm_periods
        start_idx = (i-1) * T_pwm_samples + 1;
        end_idx = i * T_pwm_samples;
        pwm_avg_voltage(i) = mean(voltage_down(start_idx:end_idx));
        pwm_time(i) = (start_idx + T_pwm_samples/2) / Fs;
    end
    
    %% 子图4：PWM平均电压
    subplot(3,4,6);
    plot(pwm_time*1000, pwm_avg_voltage, 'b.-', 'LineWidth', 1.5, 'MarkerSize', 8);
    title('PWM周期平均电压');
    xlabel('时间 (ms)'); ylabel('平均电压 (V)');
    grid on;
    
    % 分析PWM平均电压
    avg_mean = mean(pwm_avg_voltage);
    avg_pp = max(pwm_avg_voltage) - min(pwm_avg_voltage);
    
    fprintf('\n===== PWM平均电压分析 =====\n');
    fprintf('平均值: %.4f V\n', avg_mean);
    fprintf('峰峰值: %.4f V\n', avg_pp);
    
    % 估算反电动势
    elec_angle_deg = total_time * f_elec * 360;
    theta_rad = deg2rad(elec_angle_deg);
    
    if avg_pp > 0 && theta_rad > 0
        V_peak_est = avg_pp / (2 * sin(theta_rad/2));
        V_rms_est = V_peak_est / sqrt(2);
        
        fprintf('\n基于PWM平均电压估算:\n');
        fprintf('观测电角度: %.1f°\n', elec_angle_deg);
        fprintf('估算的反电动势峰值: %.4f V\n', V_peak_est);
        fprintf('估算的反电动势有效值: %.4f V\n', V_rms_est);
    end
end

%% 7. 频谱分析
%% 子图5：全频谱
subplot(3,4,7);
N_fft = 2^16;
segment = voltage_down(1:min(N_fft, length(voltage_down)));
Y = fft(segment - mean(segment), N_fft);
P2 = abs(Y / N_fft);
P1 = P2(1:N_fft/2+1);
P1(2:end-1) = 2 * P1(2:end-1);
f = Fs * (0:(N_fft/2)) / N_fft;

% 显示0-100 kHz
plot(f/1000, P1, 'b-', 'LineWidth', 1);
title('频谱分析 (0-100 kHz)');
xlabel('频率 (kHz)'); ylabel('幅度 (V)');
grid on;
hold on;
plot([f_pwm/1000 f_pwm/1000], [0 max(P1)], 'r--');
plot([2*f_pwm/1000 2*f_pwm/1000], [0 max(P1)], 'g--');
legend('频谱', 'PWM基频', '2次谐波', 'Location', 'best');

%% 子图6：低频频谱
subplot(3,4,8);
low_freq_idx = find(f <= 100);
plot(f(low_freq_idx), P1(low_freq_idx), 'b-', 'LineWidth', 1.5);
title('低频频谱 (0-100 Hz)');
xlabel('频率 (Hz)'); ylabel('幅度 (V)');
grid on;
hold on;

%% 8. 直流母线电压输入和计算
%% 子图9：参数输入和计算
subplot(3,4,9:10);
axis off;

% 实际参数（请根据实际情况修改）
Vdc_actual = 12;        % 直流母线电压（请修改为实际值）
modulation_type = 'SVPWM';
connection_type = 'Y';

% 计算调制系数
modulation_index = avg_mean / Vdc_actual;
%modulation_index = max(0, min(1, modulation_index));

% 计算相电压
if strcmpi(modulation_type, 'SVPWM')
    max_phase_voltage_peak = Vdc_actual / sqrt(3);
else
    max_phase_voltage_peak = Vdc_actual / 2;
end

phase_voltage_peak = max_phase_voltage_peak * modulation_index;
phase_voltage_rms = phase_voltage_peak / sqrt(2);

% 计算线电压
if strcmpi(connection_type, 'Y')
    line_voltage_rms = phase_voltage_rms * sqrt(3);
else
    line_voltage_rms = phase_voltage_rms;
end

% 计算反电动势常数
omega_m = 2 * pi * N_mech / 60;  % rad/s
Ke_rpm = phase_voltage_rms / N_mech;
Ke_rad = phase_voltage_rms / omega_m;
Kt = Ke_rad;  % N·m/A

% 显示结果
result_text = {
    '反电动势常数计算'
    '================'
    '计算结果:'
    sprintf('  调制系数: %.4f', modulation_index)
    sprintf('  相电压峰值: %.4f V', phase_voltage_peak)
    sprintf('  相电压有效值: %.4f V', phase_voltage_rms)
    sprintf('  线电压有效值: %.4f V', line_voltage_rms)
    ''
    '反电动势常数:'
    sprintf('  Ke = %.6f V/rpm', Ke_rpm)
    sprintf('  Ke = %.6f V·s/rad', Ke_rad)
    sprintf('  Kt ≈ %.6f N·m/A', Kt)
};

text(0.05, 0.98, result_text, 'FontSize', 8, 'VerticalAlignment', 'top');

%% 9. 包络分析
%% 子图11：包络提取
subplot(3,4,11);
% 使用希尔伯特变换提取包络
analytic = hilbert(voltage_down - mean(voltage_down));
envelope = abs(analytic);

% 平滑处理
window_size = round(Fs / f_pwm);
if window_size < 3
    window_size = 3;
end
envelope_smooth = movmean(envelope, window_size);

t_env = (0:length(envelope_smooth)-1) / Fs;
plot(t_env*1000, envelope_smooth, 'b-', 'LineWidth', 1);
title('信号包络');
xlabel('时间 (ms)'); ylabel('包络电压 (V)');
grid on;

% 包络分析
env_pp = max(envelope_smooth) - min(envelope_smooth);

% 从包络提取反电动势峰值
E_peak = env_pp / 2;  % 单位：V

% 机械角速度（rad/s）
omega_m = 2 * pi * N_mech / 60;

% 反电动势常数
Ke_rpm = E_peak / N_mech;        % V/rpm
Ke_rad = E_peak / omega_m;      % V·s/rad

fprintf('\n===== 包络分析 =====\n');
fprintf('包络峰峰值: %.4f V\n', env_pp);

%% 10. 信号统计直方图
%% 子图12：电压分布
subplot(3,4,12);
histogram(voltage_actual, 50, 'FaceColor', [0.2 0.6 0.8], 'EdgeColor', 'none');
title('电压分布直方图');
xlabel('实际电压 (V)'); ylabel('频次');
grid on;

% 添加统计信息
hold on;
xline(voltage_mean, 'r-', 'LineWidth', 2, 'Label', sprintf('均值=%.3fV', voltage_mean));
xline(voltage_mean + voltage_std, 'g--', 'LineWidth', 1.5, 'Label', '+1σ');
xline(voltage_mean - voltage_std, 'g--', 'LineWidth', 1.5, 'Label', '-1σ');

%% 11. 保存结果和显示最终信息
fprintf('\n===== 最终结果汇总 =====\n');
fprintf('探头比例校正: 所有电压值已 ÷ %d\n', probe_ratio);
fprintf('直流母线电压: %.1f V\n', Vdc_actual);
fprintf('机械转速: %d RPM\n', N_mech);
fprintf('反电动势常数 Ke = %.6f V/rpm\n', Ke_rpm);
fprintf('反电动势常数 Ke = %.6f V·s/rad\n', Ke_rad);
fprintf('转矩常数 Kt ≈ %.6f N·m/A\n', Kt);