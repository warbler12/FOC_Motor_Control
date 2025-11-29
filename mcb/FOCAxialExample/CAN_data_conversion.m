% CAN_data_conversion.m

v_des = 270.0;                % 速度值 (rpm)
v_float = single(v_des);      % 转为单精度浮点数 (32位)

% 转换为 uint8 字节数组（小端）
% 方法：先 typecast 为 uint32，再转为 uint8，自动按系统字节序
% 但 MATLAB 默认是大端解释 typecast，所以需要确保输出是小端

% 更可靠的方法：强制小端
v_bytes = typecast(swapbytes(v_float), 'uint8');

% 如果你的系统是小端（大多数 Windows/Linux PC 是小端），
% 其实可以直接用：
% v_bytes = typecast(v_float, 'uint8');

% 但为了明确小端，推荐以下方式：
v_bytes_le = typecast(v_float, 'uint8');  % 在小端机器上就是小端

% 显示结果
fprintf('v_des = %.1f rpm\n', v_des);
fprintf('Bytes (D4-D7): 0x%02X 0x%02X 0x%02X 0x%02X\n', ...
    v_bytes_le(1), v_bytes_le(2), v_bytes_le(3), v_bytes_le(4));