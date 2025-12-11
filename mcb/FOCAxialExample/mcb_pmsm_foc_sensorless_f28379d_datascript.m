% Model         :   PMSM Field Oriented Control
% Description   :   Set Parameters for PMSM Field Oriented Control
% File name     :   mcb_pmsm_foc_sensorless_f28379d_datascript.m

% Copyright 2021-2022 The MathWorks, Inc.

%% Simulation Parameters

%% Set PWM Switching frequency
PWM_frequency 	= 20e3;             %Hz     // Converter s/w freq
T_pwm           = 1/PWM_frequency;  %s      // PWM switching time period

%% Set Sample Times
Ts          	= T_pwm;            %sec    // Sample time for control system
Ts_simulink     = T_pwm/2;          %sec    // Simulation time step for model simulation
Ts_motor        = T_pwm/2;          %sec    // Simulation sample time for pmsm
Ts_inverter     = T_pwm/2;          %sec    // Simulation time step for inverter
Ts_speed        = 20*Ts;            %sec    // Sample time for speed controller
Ts_sensor        = 20*Ts; 

T               = Ts;

%% Set data type for controller & code-gen
dataType = 'single';            % Floating point code-generation 
%dataType = fixdt(1,32,24);    % Fixed point code-generation  

%% System Parameters 
% Set motor parameters

pmsm = mcb_SetPMSMMotorParameters("new");
pmsm.Rs = 0.4;          % 定子电阻 (Ohm)
pmsm.Ld = 0.0008;       % D轴电感 (H) 
pmsm.Lq = 0.0009;       % Q轴电感 (H) - 假设Ld = Lq
pmsm.Ls = pmsm.Ld;       % D轴电感 (H) 
pmsm.FluxPM = 0.0035;    % 永磁体磁链 (Wb) - 计算得出，见下方说明
pmsm.p = 5;             % 极对数
pmsm.I_rated = 5;      % 额定电流 (A) - 峰值
pmsm.Ke = 0.00434;
pmsm.Kt = pmsm.Ke;
pmsm.N_rated = 2600;     % 额定转速 (RPM)
pmsm.N_max = 2600;     % 额定转速 (RPM)
pmsm.Vdc = 24.0;         % 直流母线电压 (V)
pmsm.mechanical_offset = -0.01; 

% pmsm = mcb_SetPMSMMotorParameters('Teknic2310P');
% pmsm = mcb_SetPMSMMotorParameters('BLY171D');
% pmsm = mcb_SetPMSMMotorParameters('BLY172S');



%% Target & Inverter Parameters
target = mcb_SetProcessorDetails('F28379D',PWM_frequency);
target.comport = '<Select a port...>';
% target.comport = 'COM3';       % Uncomment and update the appropriate serial port

% Set inverter parameters
inverter = mcb_SetInverterParameters('BoostXL-DRV8305');

%% Calibration section 
% Enable automatic calibration of ADC offset for current measurement
inverter.ADCOffsetCalibEnable = 1;  % Enable: 1, Disable: 0

% If automatic ADC offset calibration is disabled, uncomment and update the 
% offset values below manually
% inverter.CtSensAOffset = 2295;      % ADC Offset for phase current A 
% inverter.CtSensBOffset = 2286;      % ADC Offset for phase current B

% Update inverter.ISenseMax based for the chosen motor and target
inverter = mcb_updateInverterParameters(pmsm,inverter,target);

% Max and min ADC counts for current sense offsets
inverter.CtSensOffsetMax = 2500; % Maximum permitted ADC counts for current sense offset
inverter.CtSensOffsetMin = 1500; % Minimum permitted ADC counts for current sense offset

%% Derive Characteristics
pmsm.N_base = mcb_getBaseSpeed(pmsm,inverter); % rpm // Base speed of motor at given Vdc
% mcb_getCharacteristics(pmsm,inverter);       % Uncomment for motor characteristics

%% PU System details // Set base values for pu conversion
PU_System = mcb_SetPUSystem(pmsm,inverter);


%% Set Acceleration
acceleration = 0.5/Ts_speed/PU_System.N_base;                  %  P.U/Sec // Maximum allowable acceleraton

%% Open loop reference values
T_Ref_openLoop          = 1;                    % Sec // Time for open-loop start-up
Speed_openLoop_PU       = 0.1;                  % PU  // Per-Unit speed referene for open-loop start-up
Vd_Ref_openLoop_PU      = Speed_openLoop_PU;    % Use 1.2x for Dyno setup and 1x for others

%% Controller design // Get ballpark values!
PI_params = mcb_SetControllerParameters(pmsm,inverter,PU_System,T_pwm,2*Ts,Ts_speed);

% 手动覆盖为安全参数
PI_params.Kp_i = 3;
PI_params.Ki_i = 0.1;
PI_params.Kp_id = 2; 
PI_params.Ki_id = 0.1;
PI_params.Kp_speed = 4;
PI_params.Ki_speed = 0.2;
PI_params.Kp_pos = 0.7;
PI_params.Ki_pos = 0.1;

% Set SMO parameters
smo = mcb_ComputeSMOParameters(pmsm,Ts,PU_System);

%Updating delays for simulation
PI_params.delay_Currents    = 1; % No of samples delayed for current sensing

% %Uncomment for frequency domain analysis
% mcb_getControlAnalysis(pmsm,inverter,PU_System,PI_params,Ts,Ts_speed);

%% Displaying model variables
disp(pmsm);
disp(inverter);
disp(target);
disp(PU_System);
