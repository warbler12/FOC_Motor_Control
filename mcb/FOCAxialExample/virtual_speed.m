%====================  主程序  ====================
Ts_sensor = 1e-3;                 % 1 kHz 采样
time      = 0:Ts_sensor:0.2;
N         = numel(time);
pu        = zeros(1,N);

speed_ref_rpm = 500;              % 给定转速

for k = 1:N
    pu(k) = periodic_pu_pos(speed_ref_rpm, Ts_sensor);  % 把 Ts 传进去
end

plot(time, pu, 'LineWidth', 1.2);
xlabel('Time (s)'); ylabel('Position (pu)');
grid on; title('周期性转子位置标幺值');

%====================  函数文件  ====================
function pu = periodic_pu_pos(speed_ref_rpm, Ts)
% 根据参考转速生成周期变化的转子位置标幺值
% 入口：
%   speed_ref_rpm - 参考转速（rpm）
%   Ts            - 调用周期（s）
% 出口：
%   pu            - 转子位置 0~1

persistent theta
if isempty(theta), theta = 0; end

% 每拍走过的“转数”
delta = (speed_ref_rpm/60)*Ts;   % rpm -> rps -> 转/拍

theta = mod(theta + delta, 1);   % 积分并归一化
pu    = single(theta);
end