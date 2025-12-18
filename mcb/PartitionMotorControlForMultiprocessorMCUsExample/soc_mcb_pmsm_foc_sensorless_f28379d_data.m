%% ************************************************************************
% Model         :   PMSM Field Oriented Control
% Description   :   Uses Motor Control Blockset APIs to set Parameters for PMSM Field Oriented Control
% File name     :   soc_mcb_pmsm_foc_sensorless_f28379d_data.m

% Copyright 2020-2021 The MathWorks, Inc.

%% Simulation Parameters

%% Set PWM Switching frequency
PWM_frequency 	= 20e3;    %Hz          // Converter s/w freq
T_pwm           = 1/PWM_frequency;  %s  // PWM switching time period
maxClk = 200e6; % 200 MHz - default
% considering PWM high speed clk divider and time base clk divider as 1 (default)
T_pwm_counts_updown = maxClk/(2*PWM_frequency);
T_pwm_counts_up = maxClk/(1*PWM_frequency);
T_pwm_counts_down = maxClk/(1*PWM_frequency);

%% Set Sample Times
Ts          	= T_pwm;        %sec        // Sample time for control system
Ts_simulink     = T_pwm/2;      %sec        // Simulation time step for model simulation
Ts_motor        = T_pwm/2;      %sec        // Simulation sample time for pmsm
Ts_inverter     = T_pwm/2;      %sec        // Simulation time step for inverter
Ts_speed        = 10*Ts;        %sec        // Sample time for speed controller

%% Set data type for controller & code-gen
dataType = 'single';            % Floating point code-generation 
%dataType = fixdt(1,32,24);    % Fixed point code-generation  

%% System Parameters // Hardware parameters 
% Set motor parameters
pmsm = mcb_SetPMSMMotorParameters('custom');
pmsm.Rs = 1.02;          % 定子电阻 (Ohm)
pmsm.Ld = 0.00059;       % D轴电感 (H) 
pmsm.Lq = 0.00059;       % Q轴电感 (H) - 假设Ld = Lq
pmsm.FluxPM = 0.0323;    % 永磁体磁链 (Wb) - 计算得出，见下方说明
pmsm.p = 12;             % 极对数
pmsm.I_rated = 4.0;      % 额定电流 (A) - 峰值
pmsm.N_rated = 2000;     % 额定转速 (RPM)
pmsm.Vdc = 24.0;         % 直流母线电压 (V)
pmsm.PositionOffset = 0.0523;         % Per-Unit position offset
% pmsm = mcb_SetPMSMMotorParameters('BLY171D');
% pmsm = mcb_SetPMSMMotorParameters('BLY172S');


% Set inverter parameters
inverter = mcb_SetInverterParameters('BoostXL-DRV8305');

% Set target hardware parameters
target = mcb_SetProcessorDetails('F28379D',PWM_frequency);

%% Calibration section // Uncomment and update relevant parameters

% %Update ADC offsets with manually calibrated values below
inverter.CtSensAOffset = 2295;
inverter.CtSensBOffset = 2285;

% %Update ADC offsets with auto-calibrate feature
inverter.ADCOffsetCalibEnable = 1; % Enable: 1, Disable: 0
inverter.ADCGain = 1;
     
% Update voltage output of inverter current sense circuit as per new gain
inverter.ISenseVoltPerAmp = inverter.ISenseVoltPerAmp * inverter.ADCGain; 

% Update ISenseMax that is measurable by target ADC
inverter.ISenseMax = inverter.ISenseMax * target.ADC_Vref / inverter.ISenseVref;

 % Update ISenseMax corresponding to configured current sense gain
inverter.ISenseMax = inverter.ISenseMax/inverter.ADCGain;

% Update inverter logic
inverter.EnableLogic    = 1;    % Set 1 for active high, 0 for active low
inverter.invertingAmp   = 1;

if strcmp(inverter.model,'BOOSTXL-3PhGaNInv')
    inverter.EnableLogic = 0;    % Set 1 for active high, 0 for active low
    inverter.invertingAmp = -1;
end

%% Derive Characteristics
pmsm.N_base = mcb_getBaseSpeed(pmsm,inverter); % rpm // Base speed of motor at given Vdc
% mcb_getCharacteristics(pmsm,inverter);       % Uncomment for motor characteristics

%% PU System details // Set base values for pu conversion
PU_System = mcb_SetPUSystem(pmsm,inverter);

%% Open loop reference values
T_Ref_openLoop          = 1;                    % Sec // Time for open-loop start-up
Speed_openLoop_PU       = 0.1;                  % PU  // Per-Unit speed referene for open-loop start-up
Vd_Ref_openLoop_PU      = Speed_openLoop_PU;    % Use 1.2x for Dyno setup and 1x for others

%% Controller design // Get ballpark values!
PI_params = mcb.internal.SetControllerParameters(pmsm,inverter,PU_System,T_pwm,2*Ts,Ts_speed);

% 手动覆盖为安全参数
PI_params.Kp_i = 2;
PI_params.Ki_i = 0.1;
PI_params.Kp_id = 2; 
PI_params.Ki_id = 0.1;
PI_params.Kp_speed = 0.3;
PI_params.Ki_speed = 0.1;

% No extra closed loop delays added in simulation

% %Uncomment for frequency domain analysis
% mcb_getControlAnalysis(pmsm,inverter,PU_System,PI_params,Ts,Ts_speed);
%% Displaying model variables
