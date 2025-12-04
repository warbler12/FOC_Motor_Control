%% 轴向磁通电机定子齿部磁通密度计算
clear; clc; close all;

fprintf('=========================================\n');
fprintf('轴向磁通电机定子齿部磁通密度计算\n');
fprintf('=========================================\n\n');

%% 1. 基本参数输入
fprintf('===== 1. 基本参数 =====\n');

% 电机几何参数
D_outer = 91.2e-3;        % 定子外径 (m)
D_inner = 60e-3;         % 定子内径 (m)
slot_number = 12;        % 槽数
pole_number = 10;        % 极数
tooth_tip_width = (12.5+5.3)*1e-3;  % 齿顶宽度 (m)
tooth_width_tip = tooth_tip_width;%5e-3;  % 齿顶处齿宽 (m)
tooth_width_root = tooth_tip_width;%8e-3; % 齿根处齿宽 (m)
tooth_height = 22e-3;    % 齿高 (m)
back_iron_thickness = 8e-3; % 轭部厚度 (m)

% 磁路参数
airgap_length = 3.0e-3;  % 气隙长度 (m)         ?
magnet_thickness = 4e-3; % 永磁体厚度 (m) 20*10*4
Br = 1.5;               % 永磁体剩磁 (T)
mu_r = 1.05;            % 永磁体相对磁导率
stack_length = 20e-3;   % 轴向长度（叠厚）(m)

% 运行参数
speed_rpm = 60;       % 转速 (RPM)
phase_current = 3;     % 相电流有效值 (A)
turns_per_coil = 140;    % 每线圈匝数

fprintf('定子外径: %.1f mm\n', D_outer*1000);
fprintf('定子内径: %.1f mm\n', D_inner*1000);
fprintf('槽数: %d\n', slot_number);
fprintf('极数: %d\n', pole_number);
fprintf('齿高: %.1f mm\n', tooth_height*1000);
fprintf('气隙长度: %.1f mm\n', airgap_length*1000);
fprintf('永磁体厚度: %.1f mm\n', magnet_thickness*1000);
fprintf('永磁体剩磁: %.1f T\n', Br);
fprintf('轴向长度: %.1f mm\n', stack_length*1000);

%% 2. 几何计算
fprintf('\n===== 2. 几何计算 =====\n');

% 平均半径
R_avg = (D_outer + D_inner) / 4;  % 平均半径 (m)
fprintf('平均半径: %.1f mm\n', R_avg*1000);

% 槽距角
slot_pitch_angle = 2 * pi / slot_number;  % 弧度
slot_pitch_angle_deg = rad2deg(slot_pitch_angle);
fprintf('槽距角: %.2f°\n', slot_pitch_angle_deg);

% 极距角
pole_pitch_angle = 2 * pi / pole_number;  % 弧度
pole_pitch_angle_deg = rad2deg(pole_pitch_angle);
fprintf('极距角: %.2f°\n', pole_pitch_angle_deg);

% 齿部截面积（不同半径处）
% 轴向磁通电机的齿部截面积随半径变化
R_inner = D_inner / 2;
R_outer = D_outer / 2;

% 齿顶处截面积（最小）
A_tooth_tip_inner = tooth_width_tip * stack_length;
A_tooth_tip_outer = tooth_width_tip * stack_length;

% 齿根处截面积（最大）
A_tooth_root_inner = tooth_width_root * stack_length;
A_tooth_root_outer = tooth_width_root * stack_length;

% 平均齿部截面积
A_tooth_avg = ((tooth_width_tip + tooth_width_root) / 2) * stack_length;

fprintf('\n齿部截面积:\n');
fprintf('齿顶处: %.2f mm²\n', A_tooth_tip_inner*1e6);
fprintf('齿根处: %.2f mm²\n', A_tooth_root_inner*1e6);
fprintf('平均值: %.2f mm²\n', A_tooth_avg*1e6);

% 槽口面积
slot_opening_width = (2 * pi * R_avg / slot_number) - tooth_width_tip;
slot_area = slot_opening_width * tooth_height;
fprintf('槽口宽度: %.2f mm\n', slot_opening_width*1000);
fprintf('槽面积: %.2f mm²\n', slot_area*1e6);

%% 3. 磁路计算
fprintf('\n===== 3. 磁路计算 =====\n');

% 气隙磁密计算
% 轴向磁通电机的气隙磁密需要考虑双气隙结构
mu0 = 4 * pi * 1e-7;  % 真空磁导率

% 有效气隙长度（考虑卡特系数）
k_c = 1.1;  % 卡特系数，考虑槽开口效应
airgap_effective = k_c * airgap_length;

% 永磁体等效磁动势
Hc = Br / (mu0 * mu_r);  % 矫顽力
F_magnet = Hc * magnet_thickness;

% 气隙磁密（标幺值，假设正弦分布）
B_g_peak = Br*(magnet_thickness)/(magnet_thickness+airgap_length);  % 峰值气隙磁密 (T)，典型值0.6-1.0T
fprintf('峰值气隙磁密估算: %.2f T\n', B_g_peak);

% 计算气隙磁通
% 轴向磁通电机：磁通通过环形面积
A_pole_avg = (2 * pi * R_avg * stack_length) / pole_number;
phi_g_per_pole = B_g_peak * A_pole_avg;
fprintf('每极气隙磁通: %.4f mWb\n', phi_g_per_pole*1000);

%% 4. 齿部磁通密度计算
fprintf('\n===== 4. 齿部磁通密度计算 =====\n');

% 方法1：基于气隙磁密的计算
% 每个齿承担的磁通
phi_tooth = phi_g_per_pole * (slot_number / pole_number);
fprintf('每个齿承担的磁通: %.4f mWb\n', phi_tooth*1000);

% 齿部磁密（最小截面积处，即齿顶）
B_tooth_tip = phi_tooth / A_tooth_tip_inner;
fprintf('齿顶处磁密(最小截面): %.2f T\n', B_tooth_tip);

% 齿部磁密（平均截面积）
B_tooth_avg = phi_tooth / A_tooth_avg;
fprintf('平均截面处磁密: %.2f T\n', B_tooth_avg);

% 齿部磁密（最大截面积处，即齿根）
B_tooth_root = phi_tooth / A_tooth_root_inner;
fprintf('齿根处磁密(最大截面): %.2f T\n', B_tooth_root);

% 方法2：考虑磁通分流和饱和效应
k_sat = 1.15;  % 饱和系数
B_tooth_saturated = B_tooth_avg * k_sat;
fprintf('考虑饱和后的齿部磁密: %.2f T (饱和系数: %.2f)\n', B_tooth_saturated, k_sat);