%% Partition Motor Control for Multiprocessor MCUs 
% This example shows how to partition real-time motor control application on 
% to multiple processors to achieve design modularity and improved control
% performance. 
% 
% Many MCUs provide multiple processor cores. These additional cores can be 
% leveraged to achieve a variety of design goals:
%
% * Divide the application into real-time tasks, such as control laws, and non-real 
% time tasks, such as external communication, diagnostics, or machine learning
% * Partition the control algorithm to run on multiple CPUs to achieve higher 
% loop rate
% * Run the same application in multiple CPU's for safety critical applications
%
% This example shows how to partition motor control application across two CPUs 
% of the TI Delfino F28379D to achieve higher sampling time/PWM frequency.
% 
% Required hardware:
% 
% * TI Delfino F28379D LaunchPad or TI Delfino F2837xD based board
% * BOOSTXL-DRV8305EVM motor driver board
% * Teknic M-2310P-LN-04K PMSM motor

%% Partition Motor Control Algorithm
%
% Open the <matlab:openExample('shared_mcb_soc_c2b/PartitionMotorControlForMultiprocessorMCUsExample','supportingFile','soc_pmsm_singlecpu_foc.slx') soc_pmsm_singlecpu_foc 
% model>. This model simulates a single CPU motor controller, contained  in the 
% <matlab:openExample('shared_mcb_soc_c2b/PartitionMotorControlForMultiprocessorMCUsExample','supportingFile','soc_pmsm_singlecpu_ref.slx') soc_pmsm_singlecpu_ref model>, 
% for a permanent magnet synchronous machine (PMSM). 
%
% <<../SingleCPU_ref.png>>
% 
% We partition the control algorithm by executing current control on CPU2, and 
% speed control and position estimation on CPU1 respectively. Data transfer between the CPU's are handled by Interprocess Data Channel block. 
% For more information see <docid:c2b_ug#mw_c7e07e10-fe64-47c0-aa35-3849cfc3171f 
% Interprocess Data Communication via Dedicated Hardware Peripheral>.
% 
% Open the <matlab:openExample('shared_mcb_soc_c2b/PartitionMotorControlForMultiprocessorMCUsExample','supportingFile','soc_pmsm_dualcpu_foc.slx') soc_pmsm_dualcpu_foc 
% model>. 

open_system('soc_pmsm_dualcpu_foc');
%%
% On the *System on Chip* tab, click *Hardware Settings* to open the *Configuration Parameters* window. 
% In the *Hardware Implementation* tab, the *Processing Unit* parameter is configured to "None" indicating it is the top-level system model.
% 
% Open the <matlab:openExample('shared_mcb_soc_c2b/PartitionMotorControlForMultiprocessorMCUsExample','supportingFile','soc_pmsm_cpu1_ref.slx') soc_pmsm_cpu1_ref model> 
% and open the <matlab:openExample('shared_mcb_soc_c2b/PartitionMotorControlForMultiprocessorMCUsExample','supportingFile','soc_pmsm_cpu2_ref.slx') soc_pmsm_cpu2_ref 
% model> to view algorithms configured for each CPU. Model references contained within the system model are configured to run on 
% c28xCPU1 (CPU1) and c28xCPU2 (CPU2). 
% 
% On the Simulation tab, click *Run* to simulate the model. Open the <matlab:Simulink.sdi.view Simulation 
% Data Inspector> and view signals. This figure shows results from the single
% and dual CPU models in simulation and deployment.
%
% <<../DualCPUResults.png>>
% 
%% Performance Improvement with Concurrent Execution
% Using both the CPUs to execute control algorithms allows us to achieve higher 
% controller bandwidth. In the original single CPU model, the control algorithm 
% takes just over 25us to execute. To provide a safety margin, single CPU model uses 
% a PWM frequency of 20kHz, equivalent to 50us period.
% 
% After partitioning, the CPU1 and CPU2 execution times reduce to less than 
% 20us. Allowing the PWM frequency to be increase to 40kHz. In the
% |soc_mcb_pmsm_foc_sensorless_f28379d_data.m| script, set PWM_frequency to
% 40e3 and run the script to configure the model to the new PWM frequency.
% With faster sampling of currents, controller gains can then be tuned to achieve faster response times.
% 
% Deploy the model to the TI Delfino F28379D LaunchPad using the *SoC Builder* tool. To open the tool, on the *System on Chip* tab, click *Configure, 
% Build, & Deploy* and follow the guided steps. 
% 
% This figure shows the controller response from simulation and deployment at 25us current 
% loop with 40kHz PWM frequency compared with 50us current loop at 20kHz frequency.
% As expected, the rise time in speed improves with faster current loop by approximately 50 percent.
% 
% <<../DualCPUResults_40kHz.png>>
% 
% Speed response is oscillatory because of sensorless algorithm, for more information, 
% see <docid:mcb_gs#mw_790652fe-f8a9-4547-bef2-5db4606795a6 Sensorless Field-Oriented Control of PMSM Using Sliding Mode Observer and Flux Observer>
%
% For higher simulation granularity, set the PWM Interface block output to Switching Mode and change the plant model variant to use the MOSFET simulation.
%
% _Copyright 2020-2023 The MathWorks, Inc._