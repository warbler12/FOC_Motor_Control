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
Vdc = 12;              % 直流母线电压

% 频率计算：
f_mech = N_mech / 60;  % 机械频率 = 1 Hz
f_elec = p * f_mech;   % 电频率 = 5 Hz
f_pwm = 20000;         % PWM频率 20 kHz

fprintf('\n===== 参数计算 =====\n');
fprintf('机械转速: %d RPM\n', N_mech);
fprintf('极对数: p = %d\n', p);
fprintf('电频率: f_e = %.3f Hz\n', f_elec);
fprintf('PWM频率: f_pwm = %.0f Hz\n', f_pwm);
fprintf('直流母线电压: %.0f V\n', Vdc);
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
    avg_ac = pwm_avg_voltage - avg_mean;  % PWM平均电压的交流部分
    
    fprintf('\n===== PWM平均电压分析 =====\n');
    fprintf('平均值: %.4f V\n', avg_mean);
    fprintf('峰峰值: %.4f V\n', avg_pp);
    
    % 计算交流成分的有效值（正确的方法2应该使用这个！）
    avg_ac_rms = rms(avg_ac);
    fprintf('交流成分有效值（PWM平均后）: %.4f V\n', avg_ac_rms);
end

%% 13. 修正后的时域计算方法 - 保持一致性
fprintf('\n\n===== 修正后的时域计算方法 =====\n');
fprintf('所有方法基于同一数据源：PWM周期平均电压\n');

% 基础参数
theta_deg = total_time * f_elec * 360;  % 观测电角度
theta_rad = deg2rad(theta_deg);

%% 方法1：PWM平均电压正弦拟合
fprintf('\n【方法1: PWM平均电压正弦拟合法】\n');
fprintf('PWM平均电压峰峰值: %.4f V\n', avg_pp);
fprintf('观测电角度: %.1f°\n', theta_deg);

if avg_pp > 0 && theta_rad > 0
    % 公式：V_peak = V_pp / (2 * sin(θ/2))
    V_line_peak_method1 = avg_pp / (2 * sin(theta_rad/2));
    V_phase_peak_method1 = V_line_peak_method1 / sqrt(3);
    
    fprintf('计算出的线电压峰值: %.4f V\n', V_line_peak_method1);
    fprintf('计算出的相电压峰值: %.4f V\n', V_phase_peak_method1);
    
    % 计算Ke
    n_krpm = N_mech / 1000;
    Ke_phase_method1 = V_phase_peak_method1 / n_krpm;
    Ke_line_method1 = V_line_peak_method1 / n_krpm;
    
    fprintf('Ke_phase = %.4f V_phase/krpm\n', Ke_phase_method1);
    fprintf('Ke_line = %.4f V_line/krpm\n', Ke_line_method1);
end

%% 方法2：修正的交流有效值法
fprintf('\n【方法2: 修正的交流有效值法（基于PWM平均）】\n');
fprintf('交流成分有效值（PWM平均后）: %.4f V\n', avg_ac_rms);

% 对于正弦波：V_peak = √2 × V_rms
% 由于我们只观测了部分周期，需要角度校正
V_line_peak_method2_raw = avg_ac_rms * sqrt(2);

% 角度校正：我们观测的不是完整周期的RMS
% 对于正弦波在θ角度内的RMS：V_rms_θ = V_peak * sqrt((θ-sinθcosθ)/(2θ))
% 因此 V_peak = V_rms_θ * sqrt(2θ/(θ-sinθcosθ))
if theta_rad > 0
    correction_factor = sqrt(2*theta_rad/(theta_rad - sin(theta_rad)*cos(theta_rad)));
    V_line_peak_method2 = avg_ac_rms * sqrt(2) * correction_factor;
else
    V_line_peak_method2 = V_line_peak_method2_raw;
end

V_phase_peak_method2 = V_line_peak_method2 / sqrt(3);

fprintf('角度校正因子: %.4f\n', correction_factor);
fprintf('计算线电压峰值: %.4f V\n', V_line_peak_method2);
fprintf('计算相电压峰值: %.4f V\n', V_phase_peak_method2);

Ke_phase_method2 = V_phase_peak_method2 / (N_mech/1000);
fprintf('Ke_phase = %.4f V_phase/krpm\n', Ke_phase_method2);

%% 方法3：调制系数法
fprintf('\n【方法3: 调制系数法】\n');

% 调制系数的变化量 = 电压变化 / 直流母线电压
delta_m = avg_pp / Vdc;
fprintf('调制系数变化量: Δm = %.4f\n', delta_m);

% 在θ角度内，正弦波的变化量 = sin(θ)
% 因此：V_line_peak = (Δm × Vdc) / sin(θ)
if theta_rad > 0
    V_line_peak_method3 = (delta_m * Vdc) / sin(theta_rad);
else
    V_line_peak_method3 = 0;
end

V_phase_peak_method3 = V_line_peak_method3 / sqrt(3);

fprintf('计算线电压峰值: %.4f V\n', V_line_peak_method3);
fprintf('计算相电压峰值: %.4f V\n', V_phase_peak_method3);

Ke_phase_method3 = V_phase_peak_method3 / (N_mech/1000);
fprintf('Ke_phase = %.4f V_phase/krpm\n', Ke_phase_method3);

%% 方法4：时域直接拟合
fprintf('\n【方法4: 时域正弦拟合】\n');

% 对PWM平均电压进行正弦拟合
if exist('pwm_time', 'var') && exist('avg_ac', 'var')
    % 定义拟合函数：y = A*sin(2π*f*t + φ)
    sin_func = @(p, t) p(1)*sin(2*pi*f_elec*t + p(2)) + p(3);
    
    % 初始猜测
    A_guess = avg_pp/2;
    phi_guess = 0;
    offset_guess = 0;
    
    % 拟合
    options = optimset('Display', 'off');
    p_fit = lsqcurvefit(sin_func, [A_guess, phi_guess, offset_guess], ...
                       pwm_time, avg_ac, [], [], options);
    
    A_fit = abs(p_fit(1));  % 振幅
    V_line_peak_method4 = A_fit;
    V_phase_peak_method4 = V_line_peak_method4 / sqrt(3);
    
    fprintf('拟合振幅: %.4f V\n', A_fit);
    fprintf('计算线电压峰值: %.4f V\n', V_line_peak_method4);
    fprintf('计算相电压峰值: %.4f V\n', V_phase_peak_method4);
    
    Ke_phase_method4 = V_phase_peak_method4 / (N_mech/1000);
    fprintf('Ke_phase = %.4f V_phase/krpm\n', Ke_phase_method4);
end

%% 7. 统一结果显示在同一张图中
subplot(3,4,7:8);

% 收集所有方法的结果
methods = {'方法1:正弦公式', '方法2:修正RMS', '方法3:调制系数', '方法4:时域拟合'};
V_line_peaks = [V_line_peak_method1, V_line_peak_method2, V_line_peak_method3, V_line_peak_method4];
V_phase_peaks = [V_phase_peak_method1, V_phase_peak_method2, V_phase_peak_method3, V_phase_peak_method4];
Ke_phases = [Ke_phase_method1, Ke_phase_method2, Ke_phase_method3, Ke_phase_method4];

% 绘制比较图
bar(1:4, V_line_peaks);
hold on;
bar(1:4, V_phase_peaks, 0.5);

xlabel('计算方法');
ylabel('电压 (V)');
title('不同方法计算结果比较');
set(gca, 'XTick', 1:4, 'XTickLabel', methods);
xtickangle(45);
legend('线电压峰值', '相电压峰值', 'Location', 'best');
grid on;

% 在柱状图上添加数值
for i = 1:4
    text(i, V_line_peaks(i), sprintf('%.3f', V_line_peaks(i)), ...
        'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
    text(i, V_phase_peaks(i), sprintf('%.3f', V_phase_peaks(i)), ...
        'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
end

%% 8. 绘制Ke值比较
subplot(3,4,9:10);
bar(1:4, Ke_phases);
xlabel('计算方法');
ylabel('Ke_phase (V_phase/krpm)');
title('不同方法计算的Ke值比较');
set(gca, 'XTick', 1:4, 'XTickLabel', methods);
xtickangle(45);
grid on;

% 在柱状图上添加数值
for i = 1:4
    text(i, Ke_phases(i), sprintf('%.2f', Ke_phases(i)), ...
        'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
end

%% 9. 绘制PWM平均电压与所有方法的拟合曲线（增强版）
subplot(3,4,11:12);
plot(pwm_time*1000, avg_ac, 'ko', 'MarkerSize', 6, 'MarkerFaceColor', 'k');
hold on;

% 时间轴精细划分
t_fine = linspace(min(pwm_time), max(pwm_time), 500);

% 方法1：正弦公式法（基于峰峰值）
V1 = V_line_peak_method1;
fit1 = V1 * sin(2*pi*f_elec*(t_fine - t_fine(1)) - pi/2); % 从负峰值开始（符合数据趋势）
plot(t_fine*1000, fit1, 'b-', 'LineWidth', 2, 'DisplayName', '方法1: 正弦公式');

% 方法3：调制系数法
V3 = V_line_peak_method3;
fit3 = V3 * sin(2*pi*f_elec*(t_fine - t_fine(1)) - pi/2);
plot(t_fine*1000, fit3, 'c--', 'LineWidth', 2, 'DisplayName', '方法3: 调制系数');

% 方法2：修正RMS法（用校正后峰值）
V2 = V_line_peak_method2;
fit2 = V2 * sin(2*pi*f_elec*(t_fine - t_fine(1)) - pi/2);
plot(t_fine*1000, fit2, 'm-.', 'LineWidth', 2, 'DisplayName', '方法2: 修正RMS');

% 方法4：时域拟合（如果存在）
if exist('p_fit', 'var')
    fit4 = p_fit(1)*sin(2*pi*f_elec*t_fine + p_fit(2)) + p_fit(3);
    plot(t_fine*1000, fit4, 'r-', 'LineWidth', 2.5, 'DisplayName', '方法4: 时域拟合');
end

xlabel('时间 (ms)');
ylabel('交流电压 (V)');
title('PWM平均电压 vs 各方法拟合曲线');
legend('Location', 'best');
grid on;
xlim([min(pwm_time)*1000, max(pwm_time)*1000]);


%% 最终推荐值
fprintf('\n===== 最终结果汇总 =====\n');
fprintf('测量条件：\n');
fprintf('  • U-V线电压差分测量\n');
fprintf('  • 机械转速: %d RPM (%.3f krpm)\n', N_mech, N_mech/1000);
fprintf('  • 极对数: p = %d，电频率: 5 Hz\n', p);
fprintf('  • 观测电角度: %.1f°\n', theta_deg);
fprintf('  • PWM平均电压峰峰值: %.4f V\n', avg_pp);

fprintf('\n各方法计算结果：\n');
fprintf('%-20s %-15s %-15s %-15s\n', '方法', 'V_line_peak(V)', 'V_phase_peak(V)', 'Ke_phase(V/krpm)');
fprintf('%-20s %-15.3f %-15.3f %-15.2f\n', '方法1:正弦公式', V_line_peak_method1, V_phase_peak_method1, Ke_phase_method1);
fprintf('%-20s %-15.3f %-15.3f %-15.2f\n', '方法2:修正RMS', V_line_peak_method2, V_phase_peak_method2, Ke_phase_method2);
fprintf('%-20s %-15.3f %-15.3f %-15.2f\n', '方法3:调制系数', V_line_peak_method3, V_phase_peak_method3, Ke_phase_method3);
fprintf('%-20s %-15.3f %-15.3f %-15.2f\n', '方法4:时域拟合', V_line_peak_method4, V_phase_peak_method4, Ke_phase_method4);

%% 只取方法 4 的结果
Ke_phase_method4   = Ke_phases(4);   % 方法 4 的 Ke
V_line_peak_method4 = V_line_peaks(4);
V_phase_peak_method4 = V_phase_peaks(4);

fprintf('\n===== 统计结果（仅取方法4） =====\n');
fprintf('Ke_phase : %.2f V/krpm\n', Ke_phase_method4);
fprintf('线电压峰值: %.3f V\n', V_line_peak_method4);
fprintf('相电压峰值: %.3f V\n', V_phase_peak_method4);

% 单位转换
omega_m = 2 * pi * N_mech / 60;          % rad/s
Ke_Vs_rad = V_phase_peak_method4 / omega_m;
fprintf('\n单位转换：\n');
fprintf('机械角速度: %.4f rad/s\n', omega_m);
fprintf('Ke = %.6f V·s/rad (相电压)\n', Ke_Vs_rad);
fprintf('Kt ≈ %.6f N·m/A (假设Kt=Ke)\n', Ke_Vs_rad);