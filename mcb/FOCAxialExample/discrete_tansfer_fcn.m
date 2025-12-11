Ts = T_pwm;                    % 采样时间
Hs = tf(500, [1 500]);         % 连续系统：500/(s+500)
Hz = c2d(Hs, Ts, 'tustin');     % 使用双线性变换离散化

% 方法1：直接显示（默认显示）
disp('离散化传递函数 Hz(z):');
disp(Hz);

% 方法2：获取系数并格式化显示
[num_z, den_z] = tfdata(Hz, 'v');
fprintf('【离散传递函数 H(z)】\n');
fprintf('标准形式：\n');
fprintf('        %.8f + %.8f * z⁻¹\n', num_z(1), num_z(2));
fprintf('H(z) = -------------------------\n');
fprintf('        1 - %.8f * z⁻¹\n\n', abs(den_z(2)));