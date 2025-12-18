%% 电流环带宽计算脚本
% 从工作区获取必要参数，不破坏现有变量

% 获取电机参数
if ~exist('pmsm', 'var') || ~exist('PI_params', 'var')
    error('请先运行 mcb_pmsm_foc_hall_f28379d_data.m 脚本初始化参数');
end

% 显示当前参数
disp('=== 当前电机参数 ===');
disp(['定子电阻 Rs = ', num2str(pmsm.Rs), ' Ω']);
disp(['D轴电感 Ld = ', num2str(pmsm.Ld), ' H']);
disp(['Q轴电感 Lq = ', num2str(pmsm.Lq), ' H']);
disp(['极对数 p = ', num2str(pmsm.p)]);
disp('====================');

%% 电流环参数分析
disp('=== 电流环PI参数 ===');
disp(['Kp_i = ', num2str(PI_params.Kp_i)]);
disp(['Ki_i = ', num2str(PI_params.Ki_i)]);
disp('====================');

%% 计算电流环带宽（理论分析）
% 从连续时间PI控制器推导带宽

% 1. 获取采样和控制参数
Ts_controller = Ts;  % 控制器采样时间（来自主脚本）
PWM_freq = PWM_frequency;  % PWM频率（来自主脚本）

% 2. 将离散PI参数转换为连续时间近似
% 离散PI控制器形式：Kp + Ki * Ts * z/(z-1)
% 连续时间近似：Kp + Ki/s

Kp_cont = PI_params.Kp_i;
Ki_cont = PI_params.Ki_i;

% 3. 计算开环传递函数
% 电流环被控对象：Gp(s) = 1/(Ls + R)
% 控制器：Gc(s) = Kp + Ki/s

L_avg = (pmsm.Ld + pmsm.Lq) / 2;  % 平均电感
R = pmsm.Rs;

% 开环传递函数：Gol(s) = Gc(s) * Gp(s) = (Kp + Ki/s) * (1/(Ls + R))

% 4. 计算带宽（-3dB频率）
% 通过数值方法求解 |Gol(jω)/(1+Gol(jω))| = 1/√2

% 定义频率范围
f_range = logspace(1, log10(PWM_freq/2), 1000);  % 10Hz到PWM频率/2
w_range = 2*pi*f_range;

% 计算闭环频率响应
bandwidth_est = 0;
found_bandwidth = false;

for i = 1:length(w_range)
    w = w_range(i);
    
    % 控制器传递函数
    Gc = Kp_cont + Ki_cont/(1i*w);
    
    % 被控对象传递函数
    Gp = 1/(1i*w*L_avg + R);
    
    % 开环传递函数
    Gol = Gc * Gp;
    
    % 闭环传递函数
    Gcl = Gol / (1 + Gol);
    
    % 幅值（dB）
    mag_db = 20*log10(abs(Gcl));
    
    % 寻找-3dB点
    if mag_db <= -3 && ~found_bandwidth
        bandwidth_est = f_range(i);
        found_bandwidth = true;
    end
end

% 5. 使用近似公式验证
% 对于典型PI控制器，带宽近似为：f_bandwidth ≈ Kp / (2πL)
bandwidth_approx = Kp_cont / (2*pi*L_avg);

% 6. 考虑离散化影响的保守估计
% 离散系统最大理论带宽受采样频率限制（奈奎斯特频率）
nyquist_freq = PWM_freq / 2;  % PWM频率的奈奎斯特频率
control_nyquist = 1 / (2*Ts_controller);  % 控制器采样率的奈奎斯特频率

% 保守带宽限制（考虑实际可实现性）
max_practical_bw = min(nyquist_freq, control_nyquist) / 10;  % 取1/10作为保守估计

%% 显示结果
disp('=== 电流环带宽分析结果 ===');
disp(['1. 基于频率响应分析（-3dB点）: ', num2str(bandwidth_est), ' Hz']);
disp(['2. 近似公式计算: ', num2str(bandwidth_approx), ' Hz']);
disp(['3. 系统限制:']);
disp(['   - PWM奈奎斯特频率: ', num2str(nyquist_freq), ' Hz']);
disp(['   - 控制器奈奎斯特频率: ', num2str(control_nyquist), ' Hz']);
disp(['4. 建议最大带宽: ', num2str(min(bandwidth_approx, max_practical_bw)), ' Hz']);
disp('==========================');

%% 可视化分析
figure('Name', '电流环带宽分析', 'Position', [100, 100, 1200, 800]);

% 子图1：伯德图分析
subplot(2,2,1);
freq_points = logspace(1, log10(PWM_freq), 500);
w_points = 2*pi*freq_points;

mag_response = zeros(size(freq_points));
phase_response = zeros(size(freq_points));

for i = 1:length(freq_points)
    w = w_points(i);
    Gc = Kp_cont + Ki_cont/(1i*w);
    Gp = 1/(1i*w*L_avg + R);
    Gol = Gc * Gp;
    Gcl = Gol / (1 + Gol);
    mag_response(i) = 20*log10(abs(Gcl));
    phase_response(i) = angle(Gcl)*180/pi;
end

semilogx(freq_points, mag_response, 'b', 'LineWidth', 2);
hold on;
plot([freq_points(1), freq_points(end)], [-3, -3], 'r--', 'LineWidth', 1.5);
if found_bandwidth
    plot([bandwidth_est, bandwidth_est], [-80, 0], 'g--', 'LineWidth', 1.5);
    text(bandwidth_est, -5, ['带宽: ', num2str(round(bandwidth_est)), 'Hz'], ...
        'HorizontalAlignment', 'right');
end
xlabel('频率 (Hz)');
ylabel('幅值 (dB)');
title('电流环闭环频率响应');
grid on;
legend('幅频响应', '-3dB线', '带宽点');

% 子图2：阶跃响应分析
subplot(2,2,2);
% 构建离散传递函数（近似）
sys_cont = tf([Kp_cont, Ki_cont], [L_avg, R+Kp_cont, Ki_cont]);
sys_disc = c2d(sys_cont, Ts_controller, 'zoh');
[y, t] = step(sys_disc, 20*Ts_controller);
plot(t/Ts_controller, y, 'b', 'LineWidth', 2);
hold on;
plot([0, 20], [0.95, 0.95], 'r--');
plot([0, 20], [1.02, 1.02], 'r--');
xlabel('采样周期数');
ylabel('输出');
title('电流环离散阶跃响应');
grid on;

% 子图3：参数敏感性分析
subplot(2,2,3);
L_variation = L_avg * [0.5, 1, 2];  % 电感变化
R_variation = R * [0.5, 1, 2];      % 电阻变化

colors = ['r', 'g', 'b'];
for k = 1:3
    L_test = L_variation(k);
    bandwidth_test = Kp_cont / (2*pi*L_test);
    bar(k, min(bandwidth_test, max_practical_bw), colors(k));
    hold on;
end
set(gca, 'XTick', 1:3, 'XTickLabel', {'L/2', 'L', '2L'});
ylabel('带宽 (Hz)');
title('电感变化对带宽的影响');
grid on;

% 子图4：带宽与PWM频率关系
subplot(2,2,4);
pwm_range = [10e3, 20e3, 40e3, 80e3];
bw_limit = zeros(size(pwm_range));

for k = 1:length(pwm_range)
    bw_limit(k) = pwm_range(k) / 20;  % 通常取PWM频率的1/10到1/20作为带宽上限
end

plot(pwm_range/1e3, bw_limit/1e3, 'b-o', 'LineWidth', 2);
xlabel('PWM频率 (kHz)');
ylabel('可实现带宽上限 (kHz)');
title('PWM频率与带宽限制');
grid on;

%% 给出设计建议
disp('=== 设计建议 ===');
disp(['1. 当前PWM频率: ', num2str(PWM_freq), ' Hz']);
disp(['2. 建议电流环带宽范围: ', num2str(bandwidth_approx*0.3), ' - ', ...
    num2str(min(bandwidth_approx*3, max_practical_bw)), ' Hz']);
disp(['3. 推荐设置:']);
disp(['   - Kp_i: ', num2str(PI_params.Kp_i), ' (当前)']);
disp(['   - 若要调整带宽，Kp_i ≈ 2πL·f_desired']);
disp(['     其中 L = ', num2str(L_avg), ' H, f_desired为期望带宽']);
disp('================');

%% 创建汇总报告结构体（不覆盖工作区变量）
current_loop_analysis = struct();
current_loop_analysis.estimated_bandwidth = bandwidth_est;
current_loop_analysis.approximate_bandwidth = bandwidth_approx;
current_loop_analysis.max_practical_bandwidth = max_practical_bw;
current_loop_analysis.pwm_frequency = PWM_freq;
current_loop_analysis.control_sample_time = Ts_controller;
current_loop_analysis.motor_inductance = L_avg;
current_loop_analysis.motor_resistance = R;
current_loop_analysis.current_Kp = Kp_cont;
current_loop_analysis.current_Ki = Ki_cont;
current_loop_analysis.design_recommendation = sprintf(...
    '建议带宽范围: %.1f - %.1f Hz', ...
    bandwidth_approx*0.3, min(bandwidth_approx*3, max_practical_bw));

disp('分析完成！结果保存在 current_loop_analysis 结构体中，不会覆盖原有工作区变量。');