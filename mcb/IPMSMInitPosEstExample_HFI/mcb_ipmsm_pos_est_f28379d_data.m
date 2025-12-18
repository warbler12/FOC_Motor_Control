%% ************************************************************************
% Model         :   mcb_ipmsm_pos_est_f28379d
% Description   :   Set Parameters for initial rotor position estimation of
%                   Interior PMSM 
% File name     :   mcb_ipmsm_pos_est_f28379d_data.m

% Copyright 2021-2022 The MathWorks, Inc.

%% Set PWM Switching frequency
PWM_frequency 	= 20e3;            %Hz    // converter s/w freq
T_pwm           = 1/PWM_frequency; %sec   // PWM switching time period

%% Set Sample Times
Ts          	  = T_pwm;         %sec   // Sample time for control system
Ts_simulink       = T_pwm/2;       %sec   // Simulation time step
Ts_motor_simscape = T_pwm/2000;    %sec   // Simulation time step for inverte

%% Set data type for controller & code-gen
% dataType = fixdt(1,32,18);       % Fixed point code-generation
dataType = 'single';               % Floating point code-generation

%% System Parameters // Hardware parameters
% Set motor parameters

% The example supports two motors: 'Adlee' and 'Teknic2310P'

switch 'Adlee'
    case 'Adlee'
        pmsm = mcb_SetPMSMMotorParameters('Adlee');
        % Ld vs Id data computed through experiment mention in documentation
        % Stator current in d-axis
        pmsm.nonlin.idVec    = [-16.385 -12.69 -10.105 -6.305 -3.755 -1.475 1.57 3.925 6.505 10.44 13.04 14.3325]; %A
        % Stator d-axis inductance
        pmsm.nonlin.Ld_data  = [1.77E-04 1.76E-04 1.76E-04 1.75E-04 1.76E-04 2.63E-04 2.59E-04 1.76E-04 1.73E-04 1.72E-04 1.70E-04	1.69E-04]; %H
        
        % Stator current in q-axis
        pmsm.nonlin.iqVec    = linspace(-13,13,20);                 %A
        % Q-axis inductance value at low currents
        pmsm.nonlin.Lq_data  = 2.88E-04;                            %H
        
        % Here Ld has been considered to be dependent only Id
        pmsm.nonlin.LdMatrix = pmsm.nonlin.Ld_data'*ones(1,20);     %H
        
        % Here Lq has been considered to be independent of Id, Iq
        % Here low current Lq value has been chosen because Ld<Lq has to be
        % satisfied for all Id, Iq
        pmsm.nonlin.LqMatrix = pmsm.nonlin.Lq_data*ones(12,20);     %H
        
        % Here PM flux has been considered to be independent of Id, Iq
        pmsm.nonlin.PmMatrix = pmsm.FluxPM * ones(12,20);

    case 'Teknic2310P'
        pmsm = mcb_SetPMSMMotorParameters('Teknic2310P');
        pmsm.Ld = 2.10E-04;
        pmsm.Lq = 2.29E-04;
        % Ld vs Id data computed through experiment mention in documentation
        % Stator current in d-axis
        pmsm.nonlin.idVec    = [-6.1050 -5.1450 -4.4800 -3.4500 -2.7700 -1.7925 -1.2650 -0.5250 0.5350 1.2800 1.7950 2.7750 3.4625 4.4850 5.1250 5.9750]; %A
        % Stator d-axis inductance
        pmsm.nonlin.Ld_data  = [1.91E-04 1.89E-04 1.86E-04 1.81E-04 1.78E-04 1.80E-04 1.93E-04 2.10E-04 2.10E-04 1.90E-04 1.74E-04	1.71E-04 1.69E-04 1.67E-04 1.66E-04 1.66E-04]; %H
        
        % Stator current in q-axis
        pmsm.nonlin.iqVec    = linspace(-7,7,20);                   %A
        % Q-axis inductance value at low currents
        pmsm.nonlin.Lq_data  = 2.29E-04;                            %H
        
        % Here Ld has been considered to be dependent only Id
        pmsm.nonlin.LdMatrix = pmsm.nonlin.Ld_data'*ones(1,20);     %H
        
        % Here Lq has been considered to be independent of Id, Iq
        % Here low current Lq value has been chosen because Ld<Lq has to be
        % satisfied for all Id, Iq
        pmsm.nonlin.LqMatrix = pmsm.nonlin.Lq_data*ones(16,20);     %H
        
        % Here PM flux has been considered to be independent of Id, Iq
        pmsm.nonlin.PmMatrix = pmsm.FluxPM * ones(16,20);
end

%% Parmeter adaption based on winding type of the motor
% We have to use phase currents for algorithm in case of delta winding type
% selected for Simscape PMSM motor block.
mtr_handle = Simulink.findBlocks(gcs,'name','PMSM');
if(mtr_handle)
    pmsm.winding = get_param(mtr_handle,'winding_type');
    if pmsm.winding == "ee.enum.statorconnection.wye"
        % Phase currents and line current are equal and have no phase shift
        % in case of star/wye connected motor
        pmsm.PositionOffset = 0;                                    %rad
        pmsm.CurrFactor     = 1;                                    %
        % Stator phase resistor "pmsm.Rs" is for star equivalent motor
        pmsm.PhaseResFactor = 1;                                    %
    elseif pmsm.winding == "ee.enum.statorconnection.delta"
        % Phase currents are (1/sqrt(3)) times and 30 elec. radian shift of
        % line currents in case of delta connected motor
        pmsm.PositionOffset = (30/pmsm.p)*(pi/180);                 %rad
        pmsm.CurrFactor     = 1/sqrt(3);                            %
        % Phase resistor for delta equivalent motor is 3 times of phase
        % resistor for star/wye equivalent motor
        pmsm.PhaseResFactor = 3;                                    %
    end
end

%% Inverter & Target Parameters

target = mcb_SetProcessorDetails('F28379D',PWM_frequency);
target.comport = '<Select a port...>';
% target.comport = 'COM3';       % Uncomment and update the appropriate serial port

inverter = mcb_SetInverterParameters('BoostXL-DRV8305');

% Enable automatic calibration of ADC offset for current measurement
inverter.ADCOffsetCalibEnable = 1; % Enable: 1, Disable:0

% If automatic ADC offset calibration is disabled, uncomment and update the 
% offset values below manually
% inverter.CtSensAOffset = 2295;      % ADC Offset for phase current A 
% inverter.CtSensBOffset = 2286;      % ADC Offset for phase current B

% Update inverter.ISenseMax based for the chosen motor and target
inverter = mcb_updateInverterParameters(pmsm,inverter,target);

% Max and min ADC counts for current sense offsets
inverter.CtSensOffsetMax = 2500;    % Maximum permitted ADC counts for current sense offset
inverter.CtSensOffsetMin = 1500;    % Minimum permitted ADC counts for current sense offset

%% PU System details // Set base values for pu conversion
PU_System.I_base   = inverter.ISenseMax;
PU_System.V_base   = inverter.V_dc/sqrt(3);

PI_params.delay_Currents    = 1;
PI_params.delay_Position    = 1;