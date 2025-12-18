/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: soc_pmsm_cpu2_ref.c
 *
 * Code generated for Simulink model 'soc_pmsm_cpu2_ref'.
 *
 * Model version                  : 8.1
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Fri Dec 12 11:44:46 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "soc_pmsm_cpu2_ref.h"
#include "rtwtypes.h"
#include "soc_pmsm_cpu2_ref_types.h"
#include "soc_pmsm_cpu2_ref_private.h"
#include "mw_soc_drv_generic.h"
#include <math.h>
#include "rt_nonfinite.h"
#include "mw_soc_ipc.h"
#include <string.h>

P_soc_pmsm_cpu2_ref_T soc_pmsm_cpu2_ref_P_g = {
  /* Mask Parameter: CompareToConstant_const
   * Referenced by: '<S178>/Constant'
   */
  2.0,

  /* Mask Parameter: CompareToConstant_const_n
   * Referenced by: '<S182>/Constant'
   */
  2.0,

  /* Mask Parameter: CompareToConstant_const_g
   * Referenced by: '<S186>/Constant'
   */
  2.0,

  /* Mask Parameter: DiscretePIControllerwithantiwin
   * Referenced by:
   *   '<S146>/Saturation'
   *   '<S132>/DeadZone'
   */
  -1.0F,

  /* Mask Parameter: DiscretePIControllerwithantiw_m
   * Referenced by:
   *   '<S95>/Saturation'
   *   '<S81>/DeadZone'
   */
  -1.0F,

  /* Mask Parameter: DiscretePIControllerwithantiw_d
   * Referenced by:
   *   '<S146>/Saturation'
   *   '<S132>/DeadZone'
   */
  1.0F,

  /* Mask Parameter: DiscretePIControllerwithantiw_g
   * Referenced by:
   *   '<S95>/Saturation'
   *   '<S81>/DeadZone'
   */
  1.0F,

  /* Mask Parameter: WrapToZero_Threshold
   * Referenced by: '<S18>/FixPt Switch'
   */
  65535U,

  /* Mask Parameter: CompareToConstant_const_b
   * Referenced by: '<S46>/Constant'
   */
  1U,

  /* Mask Parameter: CompareToConstant1_const
   * Referenced by: '<S47>/Constant'
   */
  1U,

  /* Mask Parameter: DetectChange_vinit
   * Referenced by: '<S13>/Delay Input1'
   */
  true,

  /* Expression: 1
   * Referenced by: '<S15>/Constant'
   */
  1.0,

  /* Expression: 10
   * Referenced by: '<S2>/10 counts'
   */
  10.0,

  /* Computed Parameter: Get_ADC_Volt_Gain
   * Referenced by: '<S28>/Get_ADC_Volt'
   */
  1771674010,

  /* Computed Parameter: one_by_sqrt3_Gain
   * Referenced by: '<S36>/one_by_sqrt3'
   */
  0.577350259F,

  /* Computed Parameter: Constant_Value_a
   * Referenced by: '<S52>/Constant'
   */
  0.0F,

  /* Computed Parameter: Gain_Gain
   * Referenced by: '<S52>/Gain'
   */
  -1.0F,

  /* Computed Parameter: Switch1_Threshold
   * Referenced by: '<S52>/Switch1'
   */
  0.0F,

  /* Computed Parameter: Switch_Threshold
   * Referenced by: '<S52>/Switch'
   */
  0.0F,

  /* Computed Parameter: Gain_Gain_d
   * Referenced by: '<S50>/Gain'
   */
  -1.0F,

  /* Computed Parameter: Constant_Value_l
   * Referenced by: '<S44>/Constant'
   */
  1.0F,

  /* Computed Parameter: ReplaceInport_satLim_Value
   * Referenced by: '<S37>/ReplaceInport_satLim'
   */
  0.0F,

  /* Computed Parameter: Constant3_Value
   * Referenced by: '<S42>/Constant3'
   */
  0.95F,

  /* Computed Parameter: Vq_OpenLoop_Value
   * Referenced by: '<S39>/Vq_OpenLoop'
   */
  0.0F,

  /* Computed Parameter: sqrt3_by_two_Gain
   * Referenced by: '<S171>/sqrt3_by_two'
   */
  0.866025388F,

  /* Computed Parameter: one_by_two_Gain
   * Referenced by: '<S171>/one_by_two'
   */
  0.5F,

  /* Computed Parameter: Kc_Gain
   * Referenced by: '<S171>/Kc'
   */
  1.0F,

  /* Computed Parameter: Ka_Gain
   * Referenced by: '<S171>/Ka'
   */
  1.0F,

  /* Computed Parameter: Kb_Gain
   * Referenced by: '<S171>/Kb'
   */
  1.0F,

  /* Computed Parameter: one_by_two_Gain_a
   * Referenced by: '<S168>/one_by_two'
   */
  -0.5F,

  /* Computed Parameter: Gain_Gain_j
   * Referenced by: '<S167>/Gain'
   */
  1.15470052F,

  /* Computed Parameter: One_by_Two_Gain
   * Referenced by: '<S9>/One_by_Two'
   */
  0.5F,

  /* Computed Parameter: Constant_Value_g
   * Referenced by: '<S9>/Constant'
   */
  0.5F,

  /* Computed Parameter: Constant1_Value
   * Referenced by: '<S9>/Constant1'
   */
  0.0F,

  /* Computed Parameter: CurrentSenseGain_Gain
   * Referenced by: '<S28>/Current Sense Gain'
   */
  12.9870129F,

  /* Computed Parameter: PU_Conversion_Gain
   * Referenced by: '<S28>/PU_Conversion'
   */
  0.0466666669F,

  /* Computed Parameter: Kalpha_Gain
   * Referenced by: '<S35>/Kalpha'
   */
  1.0F,

  /* Computed Parameter: Kbeta_Gain
   * Referenced by: '<S35>/Kbeta'
   */
  1.0F,

  /* Computed Parameter: Constant_Value_n
   * Referenced by: '<S30>/Constant'
   */
  0.0F,

  /* Computed Parameter: sine_table_values_Value
   * Referenced by: '<S33>/sine_table_values'
   */
  { 0.0F, 0.00785390101F, 0.0157073177F, 0.023559764F, 0.0314107575F,
    0.0392598175F, 0.0471064523F, 0.0549501814F, 0.0627905205F, 0.070626989F,
    0.0784591F, 0.086286366F, 0.0941083133F, 0.101924457F, 0.109734312F,
    0.117537394F, 0.125333235F, 0.133121341F, 0.140901238F, 0.148672432F,
    0.156434461F, 0.16418685F, 0.171929106F, 0.179660752F, 0.187381312F,
    0.195090324F, 0.202787295F, 0.210471764F, 0.21814324F, 0.225801274F,
    0.233445361F, 0.241075054F, 0.24868989F, 0.256289363F, 0.263873041F,
    0.271440446F, 0.278991103F, 0.286524564F, 0.294040322F, 0.301537961F,
    0.309017F, 0.316476971F, 0.323917419F, 0.331337899F, 0.338737935F,
    0.346117049F, 0.353474855F, 0.360810816F, 0.368124545F, 0.375415564F,
    0.382683426F, 0.389927685F, 0.397147894F, 0.404343605F, 0.411514372F,
    0.418659747F, 0.425779283F, 0.432872593F, 0.439939171F, 0.446978629F,
    0.453990489F, 0.460974365F, 0.46792981F, 0.474856377F, 0.481753677F,
    0.488621235F, 0.495458663F, 0.502265513F, 0.509041429F, 0.515785873F,
    0.522498548F, 0.529179F, 0.535826802F, 0.542441547F, 0.549022794F,
    0.555570245F, 0.562083364F, 0.568561852F, 0.575005233F, 0.581413209F,
    0.587785244F, 0.594121039F, 0.600420237F, 0.60668236F, 0.612907052F,
    0.619093955F, 0.625242651F, 0.631352782F, 0.637424F, 0.643455863F,
    0.649448037F, 0.655400157F, 0.661311865F, 0.667182744F, 0.673012495F,
    0.678800762F, 0.684547126F, 0.690251231F, 0.695912778F, 0.70153141F,
    0.707106769F, 0.712638497F, 0.718126297F, 0.723569751F, 0.72896862F,
    0.734322488F, 0.739631116F, 0.744894F, 0.750111043F, 0.755281806F,
    0.760405958F, 0.765483201F, 0.770513237F, 0.775495768F, 0.780430436F,
    0.785316944F, 0.790155F, 0.794944346F, 0.799684644F, 0.804375648F, 0.809017F,
    0.813608468F, 0.818149745F, 0.822640538F, 0.827080548F, 0.831469595F,
    0.835807383F, 0.840093553F, 0.844327927F, 0.848510206F, 0.852640152F,
    0.856717527F, 0.860742033F, 0.86471343F, 0.868631542F, 0.872496F,
    0.876306653F, 0.880063295F, 0.883765638F, 0.887413442F, 0.891006529F,
    0.894544661F, 0.898027599F, 0.901455104F, 0.904827058F, 0.908143163F,
    0.911403298F, 0.914607167F, 0.91775465F, 0.920845509F, 0.923879504F,
    0.926856577F, 0.92977649F, 0.932639F, 0.935444057F, 0.938191354F,
    0.940880775F, 0.943512142F, 0.946085334F, 0.948600173F, 0.95105654F,
    0.953454196F, 0.955793F, 0.958072901F, 0.96029371F, 0.962455213F,
    0.964557409F, 0.96660012F, 0.968583167F, 0.970506489F, 0.972369909F,
    0.974173367F, 0.975916743F, 0.977599919F, 0.979222834F, 0.980785251F,
    0.982287228F, 0.983728647F, 0.985109329F, 0.986429274F, 0.987688363F,
    0.988886476F, 0.990023673F, 0.991099775F, 0.992114723F, 0.993068457F,
    0.993961F, 0.994792163F, 0.995561957F, 0.996270359F, 0.996917307F,
    0.997502804F, 0.998026729F, 0.998489082F, 0.998889863F, 0.999229F,
    0.999506533F, 0.999722421F, 0.999876618F, 0.999969184F, 1.0F, 0.999969184F,
    0.999876618F, 0.999722421F, 0.999506533F, 0.999229F, 0.998889863F,
    0.998489082F, 0.998026729F, 0.997502804F, 0.996917307F, 0.996270359F,
    0.995561957F, 0.994792163F, 0.993961F, 0.993068457F, 0.992114723F,
    0.991099775F, 0.990023673F, 0.988886476F, 0.987688363F, 0.986429274F,
    0.985109329F, 0.983728647F, 0.982287228F, 0.980785251F, 0.979222834F,
    0.977599919F, 0.975916743F, 0.974173367F, 0.972369909F, 0.970506489F,
    0.968583167F, 0.96660012F, 0.964557409F, 0.962455213F, 0.96029371F,
    0.958072901F, 0.955793F, 0.953454196F, 0.95105654F, 0.948600173F,
    0.946085334F, 0.943512142F, 0.940880775F, 0.938191354F, 0.935444057F,
    0.932639F, 0.92977649F, 0.926856577F, 0.923879504F, 0.920845509F,
    0.91775465F, 0.914607167F, 0.911403298F, 0.908143163F, 0.904827058F,
    0.901455104F, 0.898027599F, 0.894544661F, 0.891006529F, 0.887413442F,
    0.883765638F, 0.880063295F, 0.876306653F, 0.872496F, 0.868631542F,
    0.86471343F, 0.860742033F, 0.856717527F, 0.852640152F, 0.848510206F,
    0.844327927F, 0.840093553F, 0.835807383F, 0.831469595F, 0.827080548F,
    0.822640538F, 0.818149745F, 0.813608468F, 0.809017F, 0.804375648F,
    0.799684644F, 0.794944346F, 0.790155F, 0.785316944F, 0.780430436F,
    0.775495768F, 0.770513237F, 0.765483201F, 0.760405958F, 0.755281806F,
    0.750111043F, 0.744894F, 0.739631116F, 0.734322488F, 0.72896862F,
    0.723569751F, 0.718126297F, 0.712638497F, 0.707106769F, 0.70153141F,
    0.695912778F, 0.690251231F, 0.684547126F, 0.678800762F, 0.673012495F,
    0.667182744F, 0.661311865F, 0.655400157F, 0.649448037F, 0.643455863F,
    0.637424F, 0.631352782F, 0.625242651F, 0.619093955F, 0.612907052F,
    0.60668236F, 0.600420237F, 0.594121039F, 0.587785244F, 0.581413209F,
    0.575005233F, 0.568561852F, 0.562083364F, 0.555570245F, 0.549022794F,
    0.542441547F, 0.535826802F, 0.529179F, 0.522498548F, 0.515785873F,
    0.509041429F, 0.502265513F, 0.495458663F, 0.488621235F, 0.481753677F,
    0.474856377F, 0.46792981F, 0.460974365F, 0.453990489F, 0.446978629F,
    0.439939171F, 0.432872593F, 0.425779283F, 0.418659747F, 0.411514372F,
    0.404343605F, 0.397147894F, 0.389927685F, 0.382683426F, 0.375415564F,
    0.368124545F, 0.360810816F, 0.353474855F, 0.346117049F, 0.338737935F,
    0.331337899F, 0.323917419F, 0.316476971F, 0.309017F, 0.301537961F,
    0.294040322F, 0.286524564F, 0.278991103F, 0.271440446F, 0.263873041F,
    0.256289363F, 0.24868989F, 0.241075054F, 0.233445361F, 0.225801274F,
    0.21814324F, 0.210471764F, 0.202787295F, 0.195090324F, 0.187381312F,
    0.179660752F, 0.171929106F, 0.16418685F, 0.156434461F, 0.148672432F,
    0.140901238F, 0.133121341F, 0.125333235F, 0.117537394F, 0.109734312F,
    0.101924457F, 0.0941083133F, 0.086286366F, 0.0784591F, 0.070626989F,
    0.0627905205F, 0.0549501814F, 0.0471064523F, 0.0392598175F, 0.0314107575F,
    0.023559764F, 0.0157073177F, 0.00785390101F, 1.22464685E-16F,
    -0.00785390101F, -0.0157073177F, -0.023559764F, -0.0314107575F,
    -0.0392598175F, -0.0471064523F, -0.0549501814F, -0.0627905205F,
    -0.070626989F, -0.0784591F, -0.086286366F, -0.0941083133F, -0.101924457F,
    -0.109734312F, -0.117537394F, -0.125333235F, -0.133121341F, -0.140901238F,
    -0.148672432F, -0.156434461F, -0.16418685F, -0.171929106F, -0.179660752F,
    -0.187381312F, -0.195090324F, -0.202787295F, -0.210471764F, -0.21814324F,
    -0.225801274F, -0.233445361F, -0.241075054F, -0.24868989F, -0.256289363F,
    -0.263873041F, -0.271440446F, -0.278991103F, -0.286524564F, -0.294040322F,
    -0.301537961F, -0.309017F, -0.316476971F, -0.323917419F, -0.331337899F,
    -0.338737935F, -0.346117049F, -0.353474855F, -0.360810816F, -0.368124545F,
    -0.375415564F, -0.382683426F, -0.389927685F, -0.397147894F, -0.404343605F,
    -0.411514372F, -0.418659747F, -0.425779283F, -0.432872593F, -0.439939171F,
    -0.446978629F, -0.453990489F, -0.460974365F, -0.46792981F, -0.474856377F,
    -0.481753677F, -0.488621235F, -0.495458663F, -0.502265513F, -0.509041429F,
    -0.515785873F, -0.522498548F, -0.529179F, -0.535826802F, -0.542441547F,
    -0.549022794F, -0.555570245F, -0.562083364F, -0.568561852F, -0.575005233F,
    -0.581413209F, -0.587785244F, -0.594121039F, -0.600420237F, -0.60668236F,
    -0.612907052F, -0.619093955F, -0.625242651F, -0.631352782F, -0.637424F,
    -0.643455863F, -0.649448037F, -0.655400157F, -0.661311865F, -0.667182744F,
    -0.673012495F, -0.678800762F, -0.684547126F, -0.690251231F, -0.695912778F,
    -0.70153141F, -0.707106769F, -0.712638497F, -0.718126297F, -0.723569751F,
    -0.72896862F, -0.734322488F, -0.739631116F, -0.744894F, -0.750111043F,
    -0.755281806F, -0.760405958F, -0.765483201F, -0.770513237F, -0.775495768F,
    -0.780430436F, -0.785316944F, -0.790155F, -0.794944346F, -0.799684644F,
    -0.804375648F, -0.809017F, -0.813608468F, -0.818149745F, -0.822640538F,
    -0.827080548F, -0.831469595F, -0.835807383F, -0.840093553F, -0.844327927F,
    -0.848510206F, -0.852640152F, -0.856717527F, -0.860742033F, -0.86471343F,
    -0.868631542F, -0.872496F, -0.876306653F, -0.880063295F, -0.883765638F,
    -0.887413442F, -0.891006529F, -0.894544661F, -0.898027599F, -0.901455104F,
    -0.904827058F, -0.908143163F, -0.911403298F, -0.914607167F, -0.91775465F,
    -0.920845509F, -0.923879504F, -0.926856577F, -0.92977649F, -0.932639F,
    -0.935444057F, -0.938191354F, -0.940880775F, -0.943512142F, -0.946085334F,
    -0.948600173F, -0.95105654F, -0.953454196F, -0.955793F, -0.958072901F,
    -0.96029371F, -0.962455213F, -0.964557409F, -0.96660012F, -0.968583167F,
    -0.970506489F, -0.972369909F, -0.974173367F, -0.975916743F, -0.977599919F,
    -0.979222834F, -0.980785251F, -0.982287228F, -0.983728647F, -0.985109329F,
    -0.986429274F, -0.987688363F, -0.988886476F, -0.990023673F, -0.991099775F,
    -0.992114723F, -0.993068457F, -0.993961F, -0.994792163F, -0.995561957F,
    -0.996270359F, -0.996917307F, -0.997502804F, -0.998026729F, -0.998489082F,
    -0.998889863F, -0.999229F, -0.999506533F, -0.999722421F, -0.999876618F,
    -0.999969184F, -1.0F, -0.999969184F, -0.999876618F, -0.999722421F,
    -0.999506533F, -0.999229F, -0.998889863F, -0.998489082F, -0.998026729F,
    -0.997502804F, -0.996917307F, -0.996270359F, -0.995561957F, -0.994792163F,
    -0.993961F, -0.993068457F, -0.992114723F, -0.991099775F, -0.990023673F,
    -0.988886476F, -0.987688363F, -0.986429274F, -0.985109329F, -0.983728647F,
    -0.982287228F, -0.980785251F, -0.979222834F, -0.977599919F, -0.975916743F,
    -0.974173367F, -0.972369909F, -0.970506489F, -0.968583167F, -0.96660012F,
    -0.964557409F, -0.962455213F, -0.96029371F, -0.958072901F, -0.955793F,
    -0.953454196F, -0.95105654F, -0.948600173F, -0.946085334F, -0.943512142F,
    -0.940880775F, -0.938191354F, -0.935444057F, -0.932639F, -0.92977649F,
    -0.926856577F, -0.923879504F, -0.920845509F, -0.91775465F, -0.914607167F,
    -0.911403298F, -0.908143163F, -0.904827058F, -0.901455104F, -0.898027599F,
    -0.894544661F, -0.891006529F, -0.887413442F, -0.883765638F, -0.880063295F,
    -0.876306653F, -0.872496F, -0.868631542F, -0.86471343F, -0.860742033F,
    -0.856717527F, -0.852640152F, -0.848510206F, -0.844327927F, -0.840093553F,
    -0.835807383F, -0.831469595F, -0.827080548F, -0.822640538F, -0.818149745F,
    -0.813608468F, -0.809017F, -0.804375648F, -0.799684644F, -0.794944346F,
    -0.790155F, -0.785316944F, -0.780430436F, -0.775495768F, -0.770513237F,
    -0.765483201F, -0.760405958F, -0.755281806F, -0.750111043F, -0.744894F,
    -0.739631116F, -0.734322488F, -0.72896862F, -0.723569751F, -0.718126297F,
    -0.712638497F, -0.707106769F, -0.70153141F, -0.695912778F, -0.690251231F,
    -0.684547126F, -0.678800762F, -0.673012495F, -0.667182744F, -0.661311865F,
    -0.655400157F, -0.649448037F, -0.643455863F, -0.637424F, -0.631352782F,
    -0.625242651F, -0.619093955F, -0.612907052F, -0.60668236F, -0.600420237F,
    -0.594121039F, -0.587785244F, -0.581413209F, -0.575005233F, -0.568561852F,
    -0.562083364F, -0.555570245F, -0.549022794F, -0.542441547F, -0.535826802F,
    -0.529179F, -0.522498548F, -0.515785873F, -0.509041429F, -0.502265513F,
    -0.495458663F, -0.488621235F, -0.481753677F, -0.474856377F, -0.46792981F,
    -0.460974365F, -0.453990489F, -0.446978629F, -0.439939171F, -0.432872593F,
    -0.425779283F, -0.418659747F, -0.411514372F, -0.404343605F, -0.397147894F,
    -0.389927685F, -0.382683426F, -0.375415564F, -0.368124545F, -0.360810816F,
    -0.353474855F, -0.346117049F, -0.338737935F, -0.331337899F, -0.323917419F,
    -0.316476971F, -0.309017F, -0.301537961F, -0.294040322F, -0.286524564F,
    -0.278991103F, -0.271440446F, -0.263873041F, -0.256289363F, -0.24868989F,
    -0.241075054F, -0.233445361F, -0.225801274F, -0.21814324F, -0.210471764F,
    -0.202787295F, -0.195090324F, -0.187381312F, -0.179660752F, -0.171929106F,
    -0.16418685F, -0.156434461F, -0.148672432F, -0.140901238F, -0.133121341F,
    -0.125333235F, -0.117537394F, -0.109734312F, -0.101924457F, -0.0941083133F,
    -0.086286366F, -0.0784591F, -0.070626989F, -0.0627905205F, -0.0549501814F,
    -0.0471064523F, -0.0392598175F, -0.0314107575F, -0.023559764F,
    -0.0157073177F, -0.00785390101F, -2.44929371E-16F, 0.00785390101F,
    0.0157073177F, 0.023559764F, 0.0314107575F, 0.0392598175F, 0.0471064523F,
    0.0549501814F, 0.0627905205F, 0.070626989F, 0.0784591F, 0.086286366F,
    0.0941083133F, 0.101924457F, 0.109734312F, 0.117537394F, 0.125333235F,
    0.133121341F, 0.140901238F, 0.148672432F, 0.156434461F, 0.16418685F,
    0.171929106F, 0.179660752F, 0.187381312F, 0.195090324F, 0.202787295F,
    0.210471764F, 0.21814324F, 0.225801274F, 0.233445361F, 0.241075054F,
    0.24868989F, 0.256289363F, 0.263873041F, 0.271440446F, 0.278991103F,
    0.286524564F, 0.294040322F, 0.301537961F, 0.309017F, 0.316476971F,
    0.323917419F, 0.331337899F, 0.338737935F, 0.346117049F, 0.353474855F,
    0.360810816F, 0.368124545F, 0.375415564F, 0.382683426F, 0.389927685F,
    0.397147894F, 0.404343605F, 0.411514372F, 0.418659747F, 0.425779283F,
    0.432872593F, 0.439939171F, 0.446978629F, 0.453990489F, 0.460974365F,
    0.46792981F, 0.474856377F, 0.481753677F, 0.488621235F, 0.495458663F,
    0.502265513F, 0.509041429F, 0.515785873F, 0.522498548F, 0.529179F,
    0.535826802F, 0.542441547F, 0.549022794F, 0.555570245F, 0.562083364F,
    0.568561852F, 0.575005233F, 0.581413209F, 0.587785244F, 0.594121039F,
    0.600420237F, 0.60668236F, 0.612907052F, 0.619093955F, 0.625242651F,
    0.631352782F, 0.637424F, 0.643455863F, 0.649448037F, 0.655400157F,
    0.661311865F, 0.667182744F, 0.673012495F, 0.678800762F, 0.684547126F,
    0.690251231F, 0.695912778F, 0.70153141F, 0.707106769F, 0.712638497F,
    0.718126297F, 0.723569751F, 0.72896862F, 0.734322488F, 0.739631116F,
    0.744894F, 0.750111043F, 0.755281806F, 0.760405958F, 0.765483201F,
    0.770513237F, 0.775495768F, 0.780430436F, 0.785316944F, 0.790155F,
    0.794944346F, 0.799684644F, 0.804375648F, 0.809017F, 0.813608468F,
    0.818149745F, 0.822640538F, 0.827080548F, 0.831469595F, 0.835807383F,
    0.840093553F, 0.844327927F, 0.848510206F, 0.852640152F, 0.856717527F,
    0.860742033F, 0.86471343F, 0.868631542F, 0.872496F, 0.876306653F,
    0.880063295F, 0.883765638F, 0.887413442F, 0.891006529F, 0.894544661F,
    0.898027599F, 0.901455104F, 0.904827058F, 0.908143163F, 0.911403298F,
    0.914607167F, 0.91775465F, 0.920845509F, 0.923879504F, 0.926856577F,
    0.92977649F, 0.932639F, 0.935444057F, 0.938191354F, 0.940880775F,
    0.943512142F, 0.946085334F, 0.948600173F, 0.95105654F, 0.953454196F,
    0.955793F, 0.958072901F, 0.96029371F, 0.962455213F, 0.964557409F,
    0.96660012F, 0.968583167F, 0.970506489F, 0.972369909F, 0.974173367F,
    0.975916743F, 0.977599919F, 0.979222834F, 0.980785251F, 0.982287228F,
    0.983728647F, 0.985109329F, 0.986429274F, 0.987688363F, 0.988886476F,
    0.990023673F, 0.991099775F, 0.992114723F, 0.993068457F, 0.993961F,
    0.994792163F, 0.995561957F, 0.996270359F, 0.996917307F, 0.997502804F,
    0.998026729F, 0.998489082F, 0.998889863F, 0.999229F, 0.999506533F,
    0.999722421F, 0.999876618F, 0.999969184F, 1.0F, 0.999969184F },

  /* Computed Parameter: convert_pu_Gain
   * Referenced by: '<S161>/convert_pu'
   */
  1.0F,

  /* Computed Parameter: Constant_Value_aa
   * Referenced by: '<S162>/Constant'
   */
  0.0F,

  /* Computed Parameter: indexing_Gain
   * Referenced by: '<S33>/indexing'
   */
  800.0F,

  /* Expression: PI_params.Kp_i
   * Referenced by: '<S39>/Kp'
   */
  2.0F,

  /* Computed Parameter: UnitDelay_InitialCondition
   * Referenced by: '<S39>/Unit Delay'
   */
  0.0F,

  /* Computed Parameter: Integrator_gainval
   * Referenced by: '<S139>/Integrator'
   */
  1.0F,

  /* Expression: PI_params.Kp_i
   * Referenced by: '<S38>/Kp'
   */
  2.0F,

  /* Computed Parameter: UnitDelay_InitialCondition_m
   * Referenced by: '<S38>/Unit Delay'
   */
  0.0F,

  /* Computed Parameter: Integrator_gainval_d
   * Referenced by: '<S88>/Integrator'
   */
  1.0F,

  /* Computed Parameter: Clamping_zero_Value
   * Referenced by: '<S79>/Clamping_zero'
   */
  0.0F,

  /* Computed Parameter: Ki_Value
   * Referenced by: '<S38>/Ki'
   */
  5.0E-6F,

  /* Computed Parameter: Constant1_Value_d
   * Referenced by: '<S79>/Constant1'
   */
  0.0F,

  /* Computed Parameter: Clamping_zero_Value_m
   * Referenced by: '<S130>/Clamping_zero'
   */
  0.0F,

  /* Computed Parameter: Ki_Value_a
   * Referenced by: '<S39>/Ki'
   */
  5.0E-6F,

  /* Computed Parameter: Constant1_Value_m
   * Referenced by: '<S130>/Constant1'
   */
  0.0F,

  /* Computed Parameter: offset_Value
   * Referenced by: '<S33>/offset'
   */
  { 1, 0, 201, 200 },

  /* Computed Parameter: Constant_Value_k
   * Referenced by: '<S18>/Constant'
   */
  0U,

  /* Computed Parameter: Out1_Y0
   * Referenced by: '<S14>/Out1'
   */
  2048U,

  /* Computed Parameter: Out2_Y0
   * Referenced by: '<S14>/Out2'
   */
  2048U,

  /* Computed Parameter: Out3_Y0
   * Referenced by: '<S14>/Out3'
   */
  2048U,

  /* Computed Parameter: Memory_InitialCondition
   * Referenced by: '<S14>/Memory'
   */
  0U,

  /* Computed Parameter: Memory1_InitialCondition
   * Referenced by: '<S14>/Memory1'
   */
  0U,

  /* Computed Parameter: FixPtConstant_Value
   * Referenced by: '<S17>/FixPt Constant'
   */
  1U,

  /* Computed Parameter: Output_InitialCondition
   * Referenced by: '<S16>/Output'
   */
  0U,

  /* Computed Parameter: Constant_Value_c
   * Referenced by: '<S20>/Constant'
   */
  2295U,

  /* Computed Parameter: Constant1_Value_n
   * Referenced by: '<S22>/Constant1'
   */
  2285U,

  /* Computed Parameter: ReplaceInport_satMethod_Value
   * Referenced by: '<S37>/ReplaceInport_satMethod'
   */
  0U,

  /* Computed Parameter: ChosenMethod_Value
   * Referenced by: '<S42>/ChosenMethod'
   */
  3U,

  /* Computed Parameter: Offset_Value
   * Referenced by: '<S157>/Offset'
   */
  0U,

  /* Computed Parameter: Switch_Threshold_i
   * Referenced by: '<S157>/Switch'
   */
  1U,

  /* Computed Parameter: Offset_Value_h
   * Referenced by: '<S159>/Offset'
   */
  0U,

  /* Computed Parameter: Switch_Threshold_m
   * Referenced by: '<S159>/Switch'
   */
  1U,

  /* Computed Parameter: UnitDelay1_InitialCondition
   * Referenced by: '<S2>/Unit Delay1'
   */
  0U,

  /* Computed Parameter: enableInportSatMethod_Value
   * Referenced by: '<S42>/enableInportSatMethod'
   */
  0U,

  /* Computed Parameter: enableInportSatLim_Value
   * Referenced by: '<S42>/enableInportSatLim'
   */
  0U,

  /* Computed Parameter: DataStoreMemory1_InitialValue
   * Referenced by: '<S1>/Data Store Memory1'
   */
  2295U,

  /* Computed Parameter: DataStoreMemory2_InitialValue
   * Referenced by: '<S1>/Data Store Memory2'
   */
  2285U,

  /* Computed Parameter: UnitDelay_InitialCondition_k
   * Referenced by: '<S2>/Unit Delay'
   */
  false,

  /* Computed Parameter: Constant1_Value_p
   * Referenced by: '<S176>/Constant1'
   */
  false,

  /* Computed Parameter: Constant2_Value
   * Referenced by: '<S176>/Constant2'
   */
  false,

  /* Computed Parameter: Constant1_Value_h
   * Referenced by: '<S180>/Constant1'
   */
  false,

  /* Computed Parameter: Constant2_Value_m
   * Referenced by: '<S180>/Constant2'
   */
  false,

  /* Computed Parameter: Constant1_Value_mn
   * Referenced by: '<S184>/Constant1'
   */
  false,

  /* Computed Parameter: Constant2_Value_k
   * Referenced by: '<S184>/Constant2'
   */
  false,

  /* Computed Parameter: Constant_Value_i
   * Referenced by: '<S79>/Constant'
   */
  1,

  /* Computed Parameter: Constant2_Value_a
   * Referenced by: '<S79>/Constant2'
   */
  -1,

  /* Computed Parameter: Constant3_Value_j
   * Referenced by: '<S79>/Constant3'
   */
  1,

  /* Computed Parameter: Constant4_Value
   * Referenced by: '<S79>/Constant4'
   */
  -1,

  /* Computed Parameter: Constant_Value_j
   * Referenced by: '<S130>/Constant'
   */
  1,

  /* Computed Parameter: Constant2_Value_l
   * Referenced by: '<S130>/Constant2'
   */
  -1,

  /* Computed Parameter: Constant3_Value_n
   * Referenced by: '<S130>/Constant3'
   */
  1,

  /* Computed Parameter: Constant4_Value_f
   * Referenced by: '<S130>/Constant4'
   */
  -1
};

MdlrefDW_soc_pmsm_cpu2_ref_T soc_pmsm_cpu2_ref_MdlrefDW;

/* Block signals (default storage) */
B_soc_pmsm_cpu2_ref_c_T soc_pmsm_cpu2_ref_B;

/* Block states (default storage) */
DW_soc_pmsm_cpu2_ref_f_T soc_pmsm_cpu2_ref_DW;

/* Forward declaration for local functions */
static void soc_pmsm_cpu2__SystemCore_setup(soc_blocks_IPCRead_soc_pmsm_c_T *obj);
static void soc_pmsm_cpu_SystemCore_setup_n(soc_blocks_IPCWrite_soc_pmsm__T *obj,
  const real32_T varargin_1[4]);
static void soc_pmsm_cp_SystemCore_setup_n2(soc_blocks_PWMWrite_soc_pmsm__T *obj);
static void soc_pmsm_c_SystemCore_setup_n2i(soc_blocks_PWMWrite_soc_pmsm__T *obj);
static void soc_pmsm__SystemCore_setup_n2ij(soc_blocks_PWMWrite_soc_pmsm__T *obj);
static void soc_pmsm_cpu2__SystemCore_setup(soc_blocks_IPCRead_soc_pmsm_c_T *obj)
{
  uint16_T structSize;
  static const sfCnzoXdCATDCJJHAHlPZhD_soc_p_T tmp = { 0U,/* signal1 */
    0U                                 /* signal2 */
  };

  obj->isSetupComplete = false;

  /* Start for MATLABSystem: '<S173>/IPC Read' */
  obj->isInitialized = 1L;
  obj->DataTypeInBytes = 4U;
  obj->DataTypeId = 6U;
  structSize = obj->DataTypeInBytes;
  if (obj->DataTypeId == (uint16_T)MW_STRUCT) {
    structSize = sizeof(tmp);
    if (structSize > 32767U) {
      structSize = MAX_uint16_T;
    } else {
      structSize <<= 1U;
    }
  }

  obj->IpcParams.NumOfBuffers = 1.0;
  obj->IpcParams.ChNum = 0.0;
  obj->IpcParams.BufferSize = 3.0;
  obj->IpcParams.DataTypeInBytes = structSize;
  obj->IpcParams.IsIntEnabled = 0.0;
  obj->IpcParams.IPCBetween = 0.0;
  obj->IpcHandle = MW_IPC_Init(&obj->IpcParams);

  /* End of Start for MATLABSystem: '<S173>/IPC Read' */
  obj->isSetupComplete = true;
}

static void soc_pmsm_cpu_SystemCore_setup_n(soc_blocks_IPCWrite_soc_pmsm__T *obj,
  const real32_T varargin_1[4])
{
  real32_T b_in[4];
  uint16_T structSize;
  obj->isSetupComplete = false;

  /* Start for MATLABSystem: '<S175>/IPC Write' */
  obj->isInitialized = 1L;
  obj->BuffSize = 4.0;
  obj->DataTypeInBytes = 4U;
  obj->DataTypeId = 6U;
  structSize = obj->DataTypeInBytes;
  if (obj->DataTypeId == (uint16_T)MW_STRUCT) {
    b_in[0] = varargin_1[0];
    b_in[1] = varargin_1[1];
    b_in[2] = varargin_1[2];
    b_in[3] = varargin_1[3];
    structSize = sizeof(&b_in[0]);
    if (structSize > 32767U) {
      structSize = MAX_uint16_T;
    } else {
      structSize <<= 1U;
    }
  }

  obj->IpcParams.NumOfBuffers = 1.0;
  obj->IpcParams.ChNum = 1.0;
  obj->IpcParams.BufferSize = obj->BuffSize;
  obj->IpcParams.DataTypeInBytes = structSize;
  obj->IpcParams.IsIntEnabled = 0.0;
  obj->IpcParams.IPCBetween = 0.0;
  obj->IpcHandle = MW_IPC_Init(&obj->IpcParams);

  /* End of Start for MATLABSystem: '<S175>/IPC Write' */
  obj->isSetupComplete = true;
}

static void soc_pmsm_cp_SystemCore_setup_n2(soc_blocks_PWMWrite_soc_pmsm__T *obj)
{
  obj->isSetupComplete = false;

  /* Start for MATLABSystem: '<S179>/PWM Write' */
  obj->isInitialized = 1L;
  extern MW_PWM_CustomHW_Params_T soc_pmsm_cpu2_ref_787;//();

  /* Start for MATLABSystem: '<S179>/PWM Write' */
  obj->PwmParams.Compare1 = 0.0F;
  obj->PwmParams.Compare2 = 0.0F;
  obj->PwmParams.IsPeriodInpVal = false;
  obj->PwmParams.Period = 0.0F;
  obj->PwmParams.IsPhaseInpVal = false;
  obj->PwmParams.Phase = 0.0F;
  obj->PwmHandle = MW_PWM_Init(&obj->PwmParams, (MW_Void_Ptr_T)
    &soc_pmsm_cpu2_ref_787);
  obj->isSetupComplete = true;
}

static void soc_pmsm_c_SystemCore_setup_n2i(soc_blocks_PWMWrite_soc_pmsm__T *obj)
{
  obj->isSetupComplete = false;

  /* Start for MATLABSystem: '<S183>/PWM Write' */
  obj->isInitialized = 1L;
  extern MW_PWM_CustomHW_Params_T soc_pmsm_cpu2_ref_788;//();

  /* Start for MATLABSystem: '<S183>/PWM Write' */
  obj->PwmParams.Compare1 = 0.0F;
  obj->PwmParams.Compare2 = 0.0F;
  obj->PwmParams.IsPeriodInpVal = false;
  obj->PwmParams.Period = 0.0F;
  obj->PwmParams.IsPhaseInpVal = false;
  obj->PwmParams.Phase = 0.0F;
  obj->PwmHandle = MW_PWM_Init(&obj->PwmParams, (MW_Void_Ptr_T)
    &soc_pmsm_cpu2_ref_788);
  obj->isSetupComplete = true;
}

static void soc_pmsm__SystemCore_setup_n2ij(soc_blocks_PWMWrite_soc_pmsm__T *obj)
{
  obj->isSetupComplete = false;

  /* Start for MATLABSystem: '<S187>/PWM Write' */
  obj->isInitialized = 1L;
  extern MW_PWM_CustomHW_Params_T soc_pmsm_cpu2_ref_789;//();

  /* Start for MATLABSystem: '<S187>/PWM Write' */
  obj->PwmParams.Compare1 = 0.0F;
  obj->PwmParams.Compare2 = 0.0F;
  obj->PwmParams.IsPeriodInpVal = false;
  obj->PwmParams.Period = 0.0F;
  obj->PwmParams.IsPhaseInpVal = false;
  obj->PwmParams.Phase = 0.0F;
  obj->PwmHandle = MW_PWM_Init(&obj->PwmParams, (MW_Void_Ptr_T)
    &soc_pmsm_cpu2_ref_789);
  obj->isSetupComplete = true;
}

/* System initialize for referenced model: 'soc_pmsm_cpu2_ref' */
void soc_pmsm_cpu2_ref_Init(real32_T *rty_duty1, real32_T *rty_duty2, real32_T
  *rty_duty3, real32_T *rty_VI_IPC)
{
  real32_T rtb_TmpSignalConversionAtIPCWri[4];

  /* SystemInitialize for RootInportFunctionCallGenerator generated from: '<Root>/In1' incorporates:
   *  SubSystem: '<Root>/Current Control'
   */

  /* Start for Product: '<S15>/Divide' incorporates:
   *  DataStoreMemory: '<S1>/Data Store Memory1'
   */
  soc_pmsm_cpu2_ref_DW.IaOffset =
    soc_pmsm_cpu2_ref_P_g.DataStoreMemory1_InitialValue;

  /* Start for Product: '<S15>/Divide1' incorporates:
   *  DataStoreMemory: '<S1>/Data Store Memory2'
   */
  soc_pmsm_cpu2_ref_DW.IbOffset =
    soc_pmsm_cpu2_ref_P_g.DataStoreMemory2_InitialValue;

  /* InitializeConditions for UnitDelay: '<S2>/Unit Delay1' */
  soc_pmsm_cpu2_ref_DW.UnitDelay1_DSTATE =
    soc_pmsm_cpu2_ref_P_g.UnitDelay1_InitialCondition;

  /* InitializeConditions for UnitDelay: '<S13>/Delay Input1'
   *
   * Block description for '<S13>/Delay Input1':
   *
   *  Store in Global RAM
   */
  soc_pmsm_cpu2_ref_DW.DelayInput1_DSTATE =
    soc_pmsm_cpu2_ref_P_g.DetectChange_vinit;

  /* InitializeConditions for UnitDelay: '<S2>/Unit Delay' */
  soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_l =
    soc_pmsm_cpu2_ref_P_g.UnitDelay_InitialCondition_k;

  /* InitializeConditions for UnitDelay: '<S39>/Unit Delay' */
  soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE =
    soc_pmsm_cpu2_ref_P_g.UnitDelay_InitialCondition;

  /* InitializeConditions for DiscreteIntegrator: '<S139>/Integrator' */
  soc_pmsm_cpu2_ref_DW.Integrator_PrevResetState = 0;
  soc_pmsm_cpu2_ref_DW.Integrator_IC_LOADING = 1U;

  /* InitializeConditions for UnitDelay: '<S38>/Unit Delay' */
  soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_j =
    soc_pmsm_cpu2_ref_P_g.UnitDelay_InitialCondition_m;

  /* InitializeConditions for DiscreteIntegrator: '<S88>/Integrator' */
  soc_pmsm_cpu2_ref_DW.Integrator_PrevResetState_i = 0;
  soc_pmsm_cpu2_ref_DW.Integrator_IC_LOADING_m = 1U;

  /* Start for MATLABSystem: '<S26>/ADC Read' */
  soc_pmsm_cpu2_ref_DW.obj_k.matlabCodegenIsDeleted = false;
  soc_pmsm_cpu2_ref_DW.objisempty_nq = true;
  soc_pmsm_cpu2_ref_DW.obj_k.isInitialized = 1L;
  soc_pmsm_cpu2_ref_DW.obj_k.DataTypeId = MW_UINT16;
  extern MW_ADC_CustomHW_Params_T soc_pmsm_cpu2_ref_682;//();
  soc_pmsm_cpu2_ref_DW.obj_k.AdcParams.DataType = MW_UINT16;
  soc_pmsm_cpu2_ref_DW.obj_k.AdcHandle = MW_ADC_Init
    (&soc_pmsm_cpu2_ref_DW.obj_k.AdcParams, (MW_Void_Ptr_T)
     &soc_pmsm_cpu2_ref_682);
  soc_pmsm_cpu2_ref_DW.obj_k.isSetupComplete = true;

  /* Start for MATLABSystem: '<S24>/ADC Read' */
  soc_pmsm_cpu2_ref_DW.obj_h.matlabCodegenIsDeleted = false;
  soc_pmsm_cpu2_ref_DW.objisempty_j = true;
  soc_pmsm_cpu2_ref_DW.obj_h.isInitialized = 1L;
  soc_pmsm_cpu2_ref_DW.obj_h.DataTypeId = MW_UINT16;
  extern MW_ADC_CustomHW_Params_T soc_pmsm_cpu2_ref_681;//();
  soc_pmsm_cpu2_ref_DW.obj_h.AdcParams.DataType = MW_UINT16;
  soc_pmsm_cpu2_ref_DW.obj_h.AdcHandle = MW_ADC_Init
    (&soc_pmsm_cpu2_ref_DW.obj_h.AdcParams, (MW_Void_Ptr_T)
     &soc_pmsm_cpu2_ref_681);
  soc_pmsm_cpu2_ref_DW.obj_h.isSetupComplete = true;

  /* SystemInitialize for Enabled SubSystem: '<S2>/Subsystem' */
  /* InitializeConditions for Memory: '<S14>/Memory' */
  soc_pmsm_cpu2_ref_DW.Memory_PreviousInput =
    soc_pmsm_cpu2_ref_P_g.Memory_InitialCondition;

  /* InitializeConditions for Memory: '<S14>/Memory1' */
  soc_pmsm_cpu2_ref_DW.Memory1_PreviousInput =
    soc_pmsm_cpu2_ref_P_g.Memory1_InitialCondition;

  /* InitializeConditions for Sum: '<S17>/FixPt Sum1' incorporates:
   *  UnitDelay: '<S16>/Output'
   */
  soc_pmsm_cpu2_ref_DW.Output_DSTATE =
    soc_pmsm_cpu2_ref_P_g.Output_InitialCondition;

  /* SystemInitialize for Sum: '<S14>/Sum' incorporates:
   *  Outport: '<S14>/Out1'
   */
  soc_pmsm_cpu2_ref_B.Sum = soc_pmsm_cpu2_ref_P_g.Out1_Y0;

  /* SystemInitialize for Sum: '<S14>/Sum1' incorporates:
   *  Outport: '<S14>/Out2'
   */
  soc_pmsm_cpu2_ref_B.Sum1 = soc_pmsm_cpu2_ref_P_g.Out2_Y0;

  /* SystemInitialize for UnitDelay: '<S16>/Output' incorporates:
   *  Outport: '<S14>/Out3'
   */
  soc_pmsm_cpu2_ref_B.Output = soc_pmsm_cpu2_ref_P_g.Out3_Y0;

  /* End of SystemInitialize for SubSystem: '<S2>/Subsystem' */

  /* Start for MATLABSystem: '<S173>/IPC Read' */
  soc_pmsm_cpu2_ref_DW.obj_j.isInitialized = 0L;
  soc_pmsm_cpu2_ref_DW.obj_j.matlabCodegenIsDeleted = false;
  soc_pmsm_cpu2_ref_DW.objisempty_n = true;
  soc_pmsm_cpu2__SystemCore_setup(&soc_pmsm_cpu2_ref_DW.obj_j);

  /* Start for MATLABSystem: '<S175>/IPC Write' */
  soc_pmsm_cpu2_ref_DW.obj.Overwritten = 0ULL;
  soc_pmsm_cpu2_ref_DW.obj.NumBufUsed = 0U;
  soc_pmsm_cpu2_ref_DW.obj.isInitialized = 0L;
  soc_pmsm_cpu2_ref_DW.obj.matlabCodegenIsDeleted = false;
  soc_pmsm_cpu2_ref_DW.objisempty_d = true;
  soc_pmsm_cpu_SystemCore_setup_n(&soc_pmsm_cpu2_ref_DW.obj,
    rtb_TmpSignalConversionAtIPCWri);

  /* SystemInitialize for SignalConversion generated from: '<S1>/PWM' */
  *rty_duty1 = 0.0F;

  /* SystemInitialize for SignalConversion generated from: '<S1>/PWM1' */
  *rty_duty2 = 0.0F;

  /* SystemInitialize for SignalConversion generated from: '<S1>/PWM2' */
  *rty_duty3 = 0.0F;

  /* SystemInitialize for SignalConversion generated from: '<S1>/VandI' */
  *rty_VI_IPC = 0.0F;

  /* Start for MATLABSystem: '<S179>/PWM Write' */
  soc_pmsm_cpu2_ref_DW.obj_e.isInitialized = 0L;
  soc_pmsm_cpu2_ref_DW.obj_e.matlabCodegenIsDeleted = false;
  soc_pmsm_cpu2_ref_DW.objisempty_f = true;
  soc_pmsm_cp_SystemCore_setup_n2(&soc_pmsm_cpu2_ref_DW.obj_e);

  /* Start for MATLABSystem: '<S183>/PWM Write' */
  soc_pmsm_cpu2_ref_DW.obj_c.isInitialized = 0L;
  soc_pmsm_cpu2_ref_DW.obj_c.matlabCodegenIsDeleted = false;
  soc_pmsm_cpu2_ref_DW.objisempty_l = true;
  soc_pmsm_c_SystemCore_setup_n2i(&soc_pmsm_cpu2_ref_DW.obj_c);

  /* Start for MATLABSystem: '<S187>/PWM Write' */
  soc_pmsm_cpu2_ref_DW.obj_b.isInitialized = 0L;
  soc_pmsm_cpu2_ref_DW.obj_b.matlabCodegenIsDeleted = false;
  soc_pmsm_cpu2_ref_DW.objisempty = true;
  soc_pmsm__SystemCore_setup_n2ij(&soc_pmsm_cpu2_ref_DW.obj_b);

  /* End of SystemInitialize for RootInportFunctionCallGenerator generated from: '<Root>/In1' */
}

/* Output and update for referenced model: 'soc_pmsm_cpu2_ref' */
void soc_pmsm_cpu2_ref(void)
{
}

/* Output and update for referenced model: 'soc_pmsm_cpu2_ref' */
void soc_pmsm_cpu2_ref_In1(real32_T *rty_duty1, real32_T *rty_duty2, real32_T
  *rty_duty3, real32_T *rty_VI_IPC)
{
  MW_IPC_Diag_T diagDataOut;
  real_T rtb_Add;
  real_T tmp;
  uint64_T qY;
  real32_T rtb_TmpSignalConversionAtIPCWri[4];
  real32_T rtb_pwm_dutycycles[3];
  real32_T rtb_DeadZone;
  real32_T rtb_IProdOut;
  real32_T rtb_Kalpha;
  real32_T rtb_Kbeta;
  real32_T rtb_PU_Conversion_idx_0;
  real32_T rtb_PU_Conversion_idx_1;
  real32_T rtb_Product;
  real32_T rtb_Sum4;
  real32_T rtb_Sum6;
  real32_T rtb_Switch_ep;
  real32_T rtb_convert_pu;
  real32_T rtb_dcos;
  int16_T b_varargout_2;
  int16_T tmp_0;
  uint16_T rtb_Get_Integer;
  uint16_T rtb_Switch1_f;
  boolean_T rtb_Equal;
  boolean_T rtb_LogicalOperator;
  boolean_T rtb_NOT1;
  boolean_T tmp_1;

  /* RootInportFunctionCallGenerator generated from: '<Root>/In1' incorporates:
   *  SubSystem: '<Root>/Current Control'
   */

  /* user code (Output function Body for TID1) */

  /* System '<Root>/Current Control' */
  GpioDataRegs.GPDSET.bit.GPIO124= 1;

  /* MATLABSystem: '<S26>/ADC Read' */
  rtb_Switch1_f = MW_ADC_getCount(soc_pmsm_cpu2_ref_DW.obj_k.AdcHandle);

  /* MATLABSystem: '<S24>/ADC Read' */
  rtb_Get_Integer = MW_ADC_getCount(soc_pmsm_cpu2_ref_DW.obj_h.AdcHandle);

  /* RelationalOperator: '<S2>/Equal' incorporates:
   *  Constant: '<S2>/10 counts'
   *  UnitDelay: '<S2>/Unit Delay1'
   */
  rtb_Equal = (soc_pmsm_cpu2_ref_DW.UnitDelay1_DSTATE ==
               soc_pmsm_cpu2_ref_P_g.u0counts_Value);

  /* Logic: '<S2>/NOT1' */
  rtb_NOT1 = !rtb_Equal;

  /* Outputs for Enabled SubSystem: '<S2>/Subsystem' incorporates:
   *  EnablePort: '<S14>/Enable'
   */
  if (rtb_NOT1) {
    /* Sum: '<S14>/Sum' incorporates:
     *  MATLABSystem: '<S26>/ADC Read'
     *  Memory: '<S14>/Memory'
     */
    soc_pmsm_cpu2_ref_B.Sum = rtb_Switch1_f +
      soc_pmsm_cpu2_ref_DW.Memory_PreviousInput;

    /* Sum: '<S14>/Sum1' incorporates:
     *  MATLABSystem: '<S24>/ADC Read'
     *  Memory: '<S14>/Memory1'
     */
    soc_pmsm_cpu2_ref_B.Sum1 = rtb_Get_Integer +
      soc_pmsm_cpu2_ref_DW.Memory1_PreviousInput;

    /* UnitDelay: '<S16>/Output' */
    soc_pmsm_cpu2_ref_B.Output = soc_pmsm_cpu2_ref_DW.Output_DSTATE;

    /* Sum: '<S17>/FixPt Sum1' incorporates:
     *  Constant: '<S17>/FixPt Constant'
     */
    soc_pmsm_cpu2_ref_DW.Output_DSTATE = soc_pmsm_cpu2_ref_B.Output +
      soc_pmsm_cpu2_ref_P_g.FixPtConstant_Value;

    /* Switch: '<S18>/FixPt Switch' */
    if (soc_pmsm_cpu2_ref_DW.Output_DSTATE >
        soc_pmsm_cpu2_ref_P_g.WrapToZero_Threshold) {
      /* Sum: '<S17>/FixPt Sum1' incorporates:
       *  Constant: '<S18>/Constant'
       */
      soc_pmsm_cpu2_ref_DW.Output_DSTATE =
        soc_pmsm_cpu2_ref_P_g.Constant_Value_k;
    }

    /* End of Switch: '<S18>/FixPt Switch' */

    /* Update for Memory: '<S14>/Memory' */
    soc_pmsm_cpu2_ref_DW.Memory_PreviousInput = soc_pmsm_cpu2_ref_B.Sum;

    /* Update for Memory: '<S14>/Memory1' */
    soc_pmsm_cpu2_ref_DW.Memory1_PreviousInput = soc_pmsm_cpu2_ref_B.Sum1;
  }

  /* End of Outputs for SubSystem: '<S2>/Subsystem' */

  /* Outputs for Enabled SubSystem: '<S2>/Subsystem1' incorporates:
   *  EnablePort: '<S15>/Enable'
   */
  /* RelationalOperator: '<S13>/FixPt Relational Operator' incorporates:
   *  UnitDelay: '<S13>/Delay Input1'
   *
   * Block description for '<S13>/Delay Input1':
   *
   *  Store in Global RAM
   */
  if (rtb_NOT1 != soc_pmsm_cpu2_ref_DW.DelayInput1_DSTATE) {
    /* Sum: '<S15>/Add' incorporates:
     *  Constant: '<S15>/Constant'
     */
    rtb_Add = (real_T)soc_pmsm_cpu2_ref_B.Output +
      soc_pmsm_cpu2_ref_P_g.Constant_Value;

    /* Product: '<S15>/Divide' */
    tmp = floor((real_T)soc_pmsm_cpu2_ref_B.Sum / rtb_Add);
    if (rtIsNaN(tmp) || rtIsInf(tmp)) {
      tmp = 0.0;
    } else {
      tmp = fmod(tmp, 65536.0);
    }

    /* Product: '<S15>/Divide' */
    soc_pmsm_cpu2_ref_DW.IaOffset = tmp < 0.0 ? (uint16_T)-(int16_T)(uint16_T)
      -tmp : (uint16_T)tmp;

    /* If: '<S15>/If' */
    if ((soc_pmsm_cpu2_ref_DW.IaOffset <= 1700U) ||
        (soc_pmsm_cpu2_ref_DW.IaOffset >= 2600U)) {
      /* Outputs for IfAction SubSystem: '<S15>/If Action Subsystem1' incorporates:
       *  ActionPort: '<S20>/Action Port'
       */
      /* Product: '<S15>/Divide' incorporates:
       *  Constant: '<S20>/Constant'
       *  DataStoreWrite: '<S20>/Data Store Write1'
       */
      soc_pmsm_cpu2_ref_DW.IaOffset = soc_pmsm_cpu2_ref_P_g.Constant_Value_c;

      /* End of Outputs for SubSystem: '<S15>/If Action Subsystem1' */
    }

    /* End of If: '<S15>/If' */

    /* Product: '<S15>/Divide1' */
    tmp = floor((real_T)soc_pmsm_cpu2_ref_B.Sum1 / rtb_Add);
    if (rtIsNaN(tmp) || rtIsInf(tmp)) {
      tmp = 0.0;
    } else {
      tmp = fmod(tmp, 65536.0);
    }

    /* Product: '<S15>/Divide1' */
    soc_pmsm_cpu2_ref_DW.IbOffset = tmp < 0.0 ? (uint16_T)-(int16_T)(uint16_T)
      -tmp : (uint16_T)tmp;

    /* If: '<S15>/If1' */
    if ((soc_pmsm_cpu2_ref_DW.IbOffset <= 1700U) ||
        (soc_pmsm_cpu2_ref_DW.IbOffset >= 2600U)) {
      /* Outputs for IfAction SubSystem: '<S15>/If Action Subsystem3' incorporates:
       *  ActionPort: '<S22>/Action Port'
       */
      /* Product: '<S15>/Divide1' incorporates:
       *  Constant: '<S22>/Constant1'
       *  DataStoreWrite: '<S22>/Data Store Write2'
       */
      soc_pmsm_cpu2_ref_DW.IbOffset = soc_pmsm_cpu2_ref_P_g.Constant1_Value_n;

      /* End of Outputs for SubSystem: '<S15>/If Action Subsystem3' */
    }

    /* End of If: '<S15>/If1' */
  }

  /* End of RelationalOperator: '<S13>/FixPt Relational Operator' */
  /* End of Outputs for SubSystem: '<S2>/Subsystem1' */

  /* Gain: '<S28>/Get_ADC_Volt' */
  rtb_IProdOut = (real32_T)soc_pmsm_cpu2_ref_P_g.Get_ADC_Volt_Gain *
    4.54747351E-13F;

  /* Gain: '<S28>/PU_Conversion' incorporates:
   *  DataStoreRead: '<S5>/Data Store Read'
   *  DataStoreRead: '<S5>/Data Store Read1'
   *  Gain: '<S28>/Current Sense Gain'
   *  Gain: '<S28>/Get_ADC_Volt'
   *  MATLABSystem: '<S24>/ADC Read'
   *  MATLABSystem: '<S26>/ADC Read'
   *  Sum: '<S5>/Add'
   */
  rtb_PU_Conversion_idx_0 = (real32_T)((int32_T)rtb_Switch1_f -
    soc_pmsm_cpu2_ref_DW.IaOffset) * rtb_IProdOut *
    soc_pmsm_cpu2_ref_P_g.CurrentSenseGain_Gain *
    soc_pmsm_cpu2_ref_P_g.PU_Conversion_Gain;
  rtb_PU_Conversion_idx_1 = (real32_T)((int32_T)rtb_Get_Integer -
    soc_pmsm_cpu2_ref_DW.IbOffset) * rtb_IProdOut *
    soc_pmsm_cpu2_ref_P_g.CurrentSenseGain_Gain *
    soc_pmsm_cpu2_ref_P_g.PU_Conversion_Gain;

  /* Outputs for Atomic SubSystem: '<S35>/Two phase CRL wrap' */
  /* Gain: '<S35>/Kalpha' incorporates:
   *  AlgorithmDescriptorDelegate generated from: '<S36>/a16'
   */
  rtb_Kalpha = soc_pmsm_cpu2_ref_P_g.Kalpha_Gain * rtb_PU_Conversion_idx_0;

  /* Gain: '<S35>/Kbeta' incorporates:
   *  Gain: '<S36>/one_by_sqrt3'
   *  Sum: '<S36>/a_plus_2b'
   */
  rtb_Kbeta = ((rtb_PU_Conversion_idx_0 + rtb_PU_Conversion_idx_1) +
               rtb_PU_Conversion_idx_1) *
    soc_pmsm_cpu2_ref_P_g.one_by_sqrt3_Gain * soc_pmsm_cpu2_ref_P_g.Kbeta_Gain;

  /* End of Outputs for SubSystem: '<S35>/Two phase CRL wrap' */

  /* Switch: '<S42>/Switch1' incorporates:
   *  Constant: '<S37>/ReplaceInport_satMethod'
   *  Constant: '<S42>/ChosenMethod'
   *  Constant: '<S42>/enableInportSatMethod'
   */
  if (soc_pmsm_cpu2_ref_P_g.enableInportSatMethod_Value != 0U) {
    rtb_Switch1_f = soc_pmsm_cpu2_ref_P_g.ReplaceInport_satMethod_Value;
  } else {
    rtb_Switch1_f = soc_pmsm_cpu2_ref_P_g.ChosenMethod_Value;
  }

  /* End of Switch: '<S42>/Switch1' */

  /* MATLABSystem: '<S173>/IPC Read' */
  b_varargout_2 = 0;
  MW_IPC_Read(&soc_pmsm_cpu2_ref_DW.obj_j.IpcHandle, 1.0,
              soc_pmsm_cpu2_ref_DW.obj_j.DataTypeId, &rtb_pwm_dutycycles[0],
              &b_varargout_2);

  /* Gain: '<S161>/convert_pu' incorporates:
   *  MATLABSystem: '<S173>/IPC Read'
   * */
  rtb_convert_pu = soc_pmsm_cpu2_ref_P_g.convert_pu_Gain * rtb_pwm_dutycycles[2];

  /* If: '<S161>/If' incorporates:
   *  Constant: '<S162>/Constant'
   *  DataTypeConversion: '<S164>/Convert_uint16'
   *  RelationalOperator: '<S162>/Compare'
   */
  if (rtb_convert_pu < soc_pmsm_cpu2_ref_P_g.Constant_Value_aa) {
    /* Outputs for IfAction SubSystem: '<S161>/If Action Subsystem' incorporates:
     *  ActionPort: '<S163>/Action Port'
     */
    /* DataTypeConversion: '<S163>/Convert_uint16' */
    rtb_IProdOut = (real32_T)floor(rtb_convert_pu);
    if (rtIsInfF(rtb_IProdOut)) {
      rtb_IProdOut = 0.0F;
    } else {
      rtb_IProdOut = (real32_T)fmod(rtb_IProdOut, 65536.0);
    }

    /* Sum: '<S163>/Sum' incorporates:
     *  DataTypeConversion: '<S163>/Convert_back'
     *  DataTypeConversion: '<S163>/Convert_uint16'
     */
    rtb_DeadZone = rtb_convert_pu - (real32_T)(rtb_IProdOut < 0.0F ? -(int16_T)
      (uint16_T)-rtb_IProdOut : (int16_T)(uint16_T)rtb_IProdOut);

    /* End of Outputs for SubSystem: '<S161>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S161>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S164>/Action Port'
     */
    if (rtb_convert_pu < 0.0F) {
      /* DataTypeConversion: '<S164>/Convert_uint16' */
      rtb_IProdOut = (real32_T)ceil(rtb_convert_pu);
    } else {
      /* DataTypeConversion: '<S164>/Convert_uint16' */
      rtb_IProdOut = (real32_T)floor(rtb_convert_pu);
    }

    /* DataTypeConversion: '<S164>/Convert_uint16' */
    if (rtIsNaNF(rtb_IProdOut) || rtIsInfF(rtb_IProdOut)) {
      rtb_IProdOut = 0.0F;
    } else {
      rtb_IProdOut = (real32_T)fmod(rtb_IProdOut, 65536.0);
    }

    /* Sum: '<S164>/Sum' incorporates:
     *  DataTypeConversion: '<S164>/Convert_back'
     *  DataTypeConversion: '<S164>/Convert_uint16'
     */
    rtb_DeadZone = rtb_convert_pu - (real32_T)(rtb_IProdOut < 0.0F ? -(int16_T)
      (uint16_T)-rtb_IProdOut : (int16_T)(uint16_T)rtb_IProdOut);

    /* End of Outputs for SubSystem: '<S161>/If Action Subsystem1' */
  }

  /* End of If: '<S161>/If' */

  /* Gain: '<S33>/indexing' */
  rtb_DeadZone *= soc_pmsm_cpu2_ref_P_g.indexing_Gain;

  /* DataTypeConversion: '<S33>/Get_Integer' */
  if (rtb_DeadZone < 0.0F) {
    rtb_IProdOut = (real32_T)ceil(rtb_DeadZone);
  } else {
    rtb_IProdOut = (real32_T)floor(rtb_DeadZone);
  }

  if (rtIsNaNF(rtb_IProdOut) || rtIsInfF(rtb_IProdOut)) {
    rtb_IProdOut = 0.0F;
  } else {
    rtb_IProdOut = (real32_T)fmod(rtb_IProdOut, 65536.0);
  }

  rtb_Get_Integer = rtb_IProdOut < 0.0F ? (uint16_T)-(int16_T)(uint16_T)
    -rtb_IProdOut : (uint16_T)rtb_IProdOut;

  /* End of DataTypeConversion: '<S33>/Get_Integer' */

  /* Sum: '<S33>/Sum2' incorporates:
   *  DataTypeConversion: '<S33>/Data Type Conversion1'
   */
  rtb_IProdOut = rtb_DeadZone - (real32_T)rtb_Get_Integer;

  /* Selector: '<S33>/Lookup' incorporates:
   *  Constant: '<S33>/offset'
   *  Constant: '<S33>/sine_table_values'
   *  Sum: '<S160>/Sum3'
   *  Sum: '<S33>/Sum'
   */
  rtb_convert_pu = soc_pmsm_cpu2_ref_P_g.sine_table_values_Value[(int16_T)
    ((uint32_T)soc_pmsm_cpu2_ref_P_g.offset_Value[1] + rtb_Get_Integer)];

  /* Sum: '<S160>/Sum4' incorporates:
   *  Constant: '<S33>/offset'
   *  Constant: '<S33>/sine_table_values'
   *  Product: '<S160>/Product'
   *  Selector: '<S33>/Lookup'
   *  Sum: '<S160>/Sum3'
   *  Sum: '<S33>/Sum'
   */
  rtb_Sum4 = (soc_pmsm_cpu2_ref_P_g.sine_table_values_Value[(int16_T)((uint32_T)
    soc_pmsm_cpu2_ref_P_g.offset_Value[0] + rtb_Get_Integer)] - rtb_convert_pu) *
    rtb_IProdOut + rtb_convert_pu;

  /* Selector: '<S33>/Lookup' incorporates:
   *  Constant: '<S33>/offset'
   *  Constant: '<S33>/sine_table_values'
   *  Sum: '<S160>/Sum5'
   *  Sum: '<S33>/Sum'
   */
  rtb_convert_pu = soc_pmsm_cpu2_ref_P_g.sine_table_values_Value[(int16_T)
    ((uint32_T)soc_pmsm_cpu2_ref_P_g.offset_Value[3] + rtb_Get_Integer)];

  /* Sum: '<S160>/Sum6' incorporates:
   *  Constant: '<S33>/offset'
   *  Constant: '<S33>/sine_table_values'
   *  Product: '<S160>/Product1'
   *  Selector: '<S33>/Lookup'
   *  Sum: '<S160>/Sum5'
   *  Sum: '<S33>/Sum'
   */
  rtb_Sum6 = (soc_pmsm_cpu2_ref_P_g.sine_table_values_Value[(int16_T)((uint32_T)
    soc_pmsm_cpu2_ref_P_g.offset_Value[2] + rtb_Get_Integer)] - rtb_convert_pu) *
    rtb_IProdOut + rtb_convert_pu;

  /* Outputs for Atomic SubSystem: '<S32>/Two inputs CRL' */
  /* Switch: '<S159>/Switch' incorporates:
   *  Constant: '<S159>/Offset'
   *  Product: '<S158>/acos'
   *  Product: '<S158>/asin'
   *  Product: '<S158>/bcos'
   *  Product: '<S158>/bsin'
   *  Sum: '<S158>/sum_Ds'
   *  Sum: '<S158>/sum_Qs'
   *  UnaryMinus: '<S159>/Unary_Minus'
   */
  if (soc_pmsm_cpu2_ref_P_g.Offset_Value_h >
      soc_pmsm_cpu2_ref_P_g.Switch_Threshold_m) {
    rtb_PU_Conversion_idx_0 = -(rtb_Kbeta * rtb_Sum6 - rtb_Kalpha * rtb_Sum4);
    rtb_PU_Conversion_idx_1 = rtb_Kalpha * rtb_Sum6 + rtb_Kbeta * rtb_Sum4;
  } else {
    rtb_PU_Conversion_idx_0 = rtb_Kalpha * rtb_Sum6 + rtb_Kbeta * rtb_Sum4;
    rtb_PU_Conversion_idx_1 = rtb_Kbeta * rtb_Sum6 - rtb_Kalpha * rtb_Sum4;
  }

  /* End of Switch: '<S159>/Switch' */

  /* Sum: '<S39>/Sum' incorporates:
   *  AlgorithmDescriptorDelegate generated from: '<S158>/a16'
   *  MATLABSystem: '<S173>/IPC Read'
   * */
  rtb_IProdOut = rtb_pwm_dutycycles[0] - rtb_PU_Conversion_idx_1;

  /* End of Outputs for SubSystem: '<S32>/Two inputs CRL' */

  /* Logic: '<S39>/Logical Operator' incorporates:
   *  Logic: '<S38>/Logical Operator'
   *  MATLABSystem: '<S173>/IPC Read'
   * */
  rtb_LogicalOperator = !(rtb_pwm_dutycycles[1] != 0.0F);

  /* DiscreteIntegrator: '<S139>/Integrator' incorporates:
   *  Logic: '<S39>/Logical Operator'
   *  UnitDelay: '<S39>/Unit Delay'
   */
  if (soc_pmsm_cpu2_ref_DW.Integrator_IC_LOADING != 0U) {
    soc_pmsm_cpu2_ref_DW.Integrator_DSTATE =
      soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE;
  }

  if (rtb_LogicalOperator || (soc_pmsm_cpu2_ref_DW.Integrator_PrevResetState !=
       0)) {
    soc_pmsm_cpu2_ref_DW.Integrator_DSTATE =
      soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE;
  }

  /* Sum: '<S148>/Sum' incorporates:
   *  Constant: '<S39>/Kp'
   *  DiscreteIntegrator: '<S139>/Integrator'
   *  Product: '<S144>/PProd Out'
   */
  rtb_DeadZone = rtb_IProdOut * soc_pmsm_cpu2_ref_P_g.Kp_Value +
    soc_pmsm_cpu2_ref_DW.Integrator_DSTATE;

  /* Switch: '<S39>/Switch' incorporates:
   *  Constant: '<S39>/Vq_OpenLoop'
   *  MATLABSystem: '<S173>/IPC Read'
   *  UnitDelay: '<S39>/Unit Delay'
   * */
  if (rtb_pwm_dutycycles[1] != 0.0F) {
    /* Saturate: '<S146>/Saturation' */
    if (rtb_DeadZone > soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiw_d) {
      soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE =
        soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiw_d;
    } else if (rtb_DeadZone <
               soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiwin) {
      soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE =
        soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiwin;
    } else {
      soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE = rtb_DeadZone;
    }

    /* End of Saturate: '<S146>/Saturation' */
  } else {
    soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE =
      soc_pmsm_cpu2_ref_P_g.Vq_OpenLoop_Value;
  }

  /* End of Switch: '<S39>/Switch' */

  /* Outputs for Atomic SubSystem: '<S32>/Two inputs CRL' */
  /* Sum: '<S38>/Sum' incorporates:
   *  AlgorithmDescriptorDelegate generated from: '<S158>/a16'
   *  Constant: '<S30>/Constant'
   */
  rtb_convert_pu = soc_pmsm_cpu2_ref_P_g.Constant_Value_n -
    rtb_PU_Conversion_idx_0;

  /* End of Outputs for SubSystem: '<S32>/Two inputs CRL' */

  /* DiscreteIntegrator: '<S88>/Integrator' incorporates:
   *  UnitDelay: '<S38>/Unit Delay'
   */
  if (soc_pmsm_cpu2_ref_DW.Integrator_IC_LOADING_m != 0U) {
    soc_pmsm_cpu2_ref_DW.Integrator_DSTATE_k =
      soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_j;
  }

  if (rtb_LogicalOperator || (soc_pmsm_cpu2_ref_DW.Integrator_PrevResetState_i
       != 0)) {
    soc_pmsm_cpu2_ref_DW.Integrator_DSTATE_k =
      soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_j;
  }

  /* Sum: '<S97>/Sum' incorporates:
   *  Constant: '<S38>/Kp'
   *  DiscreteIntegrator: '<S88>/Integrator'
   *  Product: '<S93>/PProd Out'
   */
  rtb_dcos = rtb_convert_pu * soc_pmsm_cpu2_ref_P_g.Kp_Value_h +
    soc_pmsm_cpu2_ref_DW.Integrator_DSTATE_k;

  /* Switch: '<S38>/Switch' incorporates:
   *  Constant: '<S38>/Vd_OpenLoop'
   *  MATLABSystem: '<S173>/IPC Read'
   *  UnitDelay: '<S38>/Unit Delay'
   * */
  if (rtb_pwm_dutycycles[1] != 0.0F) {
    /* Saturate: '<S95>/Saturation' */
    if (rtb_dcos > soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiw_g) {
      soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_j =
        soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiw_g;
    } else if (rtb_dcos < soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiw_m)
    {
      soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_j =
        soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiw_m;
    } else {
      soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_j = rtb_dcos;
    }

    /* End of Saturate: '<S95>/Saturation' */
  } else {
    soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_j = rtP_Vd_Ref_openLoop_PU;
  }

  /* End of Switch: '<S38>/Switch' */

  /* Switch: '<S42>/Switch' incorporates:
   *  Constant: '<S37>/ReplaceInport_satLim'
   *  Constant: '<S42>/Constant3'
   *  Constant: '<S42>/enableInportSatLim'
   */
  if (soc_pmsm_cpu2_ref_P_g.enableInportSatLim_Value != 0U) {
    rtb_Switch_ep = soc_pmsm_cpu2_ref_P_g.ReplaceInport_satLim_Value;
  } else {
    rtb_Switch_ep = soc_pmsm_cpu2_ref_P_g.Constant3_Value;
  }

  /* End of Switch: '<S42>/Switch' */

  /* Product: '<S42>/Product' */
  rtb_Product = rtb_Switch_ep * rtb_Switch_ep;

  /* Sum: '<S43>/Sum1' incorporates:
   *  Product: '<S43>/Product'
   *  Product: '<S43>/Product1'
   *  UnitDelay: '<S38>/Unit Delay'
   *  UnitDelay: '<S39>/Unit Delay'
   */
  rtb_PU_Conversion_idx_0 = soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_j *
    soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_j +
    soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE *
    soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE;

  /* If: '<S37>/If' incorporates:
   *  If: '<S40>/If'
   *  RelationalOperator: '<S40>/Relational Operator'
   */
  if ((rtb_Switch1_f == 1U) || (rtb_Switch1_f == 2U)) {
    /* Outputs for IfAction SubSystem: '<S37>/D//Q Axis Priority' incorporates:
     *  ActionPort: '<S41>/Action Port'
     */
    /* Switch: '<S41>/Switch' incorporates:
     *  Constant: '<S46>/Constant'
     *  RelationalOperator: '<S46>/Compare'
     *  UnitDelay: '<S38>/Unit Delay'
     *  UnitDelay: '<S39>/Unit Delay'
     */
    if (rtb_Switch1_f == soc_pmsm_cpu2_ref_P_g.CompareToConstant_const_b) {
      rtb_PU_Conversion_idx_0 = soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_j;
      rtb_PU_Conversion_idx_1 = soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE;
    } else {
      rtb_PU_Conversion_idx_0 = soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE;
      rtb_PU_Conversion_idx_1 = soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_j;
    }

    /* End of Switch: '<S41>/Switch' */

    /* Switch: '<S51>/Switch2' incorporates:
     *  RelationalOperator: '<S51>/LowerRelop1'
     */
    if (rtb_PU_Conversion_idx_0 > rtb_Switch_ep) {
      rtb_PU_Conversion_idx_0 = rtb_Switch_ep;
    } else {
      /* Gain: '<S50>/Gain' */
      rtb_Switch_ep *= soc_pmsm_cpu2_ref_P_g.Gain_Gain_d;

      /* Switch: '<S51>/Switch' incorporates:
       *  RelationalOperator: '<S51>/UpperRelop'
       */
      if (rtb_PU_Conversion_idx_0 < rtb_Switch_ep) {
        rtb_PU_Conversion_idx_0 = rtb_Switch_ep;
      }

      /* End of Switch: '<S51>/Switch' */
    }

    /* End of Switch: '<S51>/Switch2' */

    /* Sum: '<S50>/Sum' incorporates:
     *  Product: '<S50>/Product'
     */
    rtb_Switch_ep = rtb_Product - rtb_PU_Conversion_idx_0 *
      rtb_PU_Conversion_idx_0;

    /* If: '<S50>/If' incorporates:
     *  Product: '<S50>/Product2'
     *  RelationalOperator: '<S50>/Relational Operator'
     */
    if (!(rtb_Switch_ep >= rtb_PU_Conversion_idx_1 * rtb_PU_Conversion_idx_1)) {
      /* Outputs for IfAction SubSystem: '<S50>/limitRef2' incorporates:
       *  ActionPort: '<S52>/Action Port'
       */
      /* Switch: '<S52>/Switch' incorporates:
       *  Gain: '<S52>/Gain'
       *  Sqrt: '<S52>/Sqrt'
       *  Switch: '<S52>/Switch1'
       */
      if (rtb_PU_Conversion_idx_1 >= soc_pmsm_cpu2_ref_P_g.Switch_Threshold) {
        /* Switch: '<S52>/Switch1' incorporates:
         *  Constant: '<S52>/Constant'
         */
        if (!(rtb_Switch_ep > soc_pmsm_cpu2_ref_P_g.Switch1_Threshold)) {
          rtb_Switch_ep = soc_pmsm_cpu2_ref_P_g.Constant_Value_a;
        }

        rtb_PU_Conversion_idx_1 = (real32_T)sqrt(rtb_Switch_ep);
      } else {
        if (!(rtb_Switch_ep > soc_pmsm_cpu2_ref_P_g.Switch1_Threshold)) {
          /* Switch: '<S52>/Switch1' incorporates:
           *  Constant: '<S52>/Constant'
           */
          rtb_Switch_ep = soc_pmsm_cpu2_ref_P_g.Constant_Value_a;
        }

        rtb_PU_Conversion_idx_1 = soc_pmsm_cpu2_ref_P_g.Gain_Gain * (real32_T)
          sqrt(rtb_Switch_ep);
      }

      /* End of Switch: '<S52>/Switch' */
      /* End of Outputs for SubSystem: '<S50>/limitRef2' */
    }

    /* End of If: '<S50>/If' */

    /* Switch: '<S41>/Switch1' incorporates:
     *  Constant: '<S47>/Constant'
     *  RelationalOperator: '<S47>/Compare'
     */
    if (rtb_Switch1_f == soc_pmsm_cpu2_ref_P_g.CompareToConstant1_const) {
      rtb_Product = rtb_PU_Conversion_idx_0;
    } else {
      rtb_Product = rtb_PU_Conversion_idx_1;
      rtb_PU_Conversion_idx_1 = rtb_PU_Conversion_idx_0;
    }

    /* End of Switch: '<S41>/Switch1' */
    /* End of Outputs for SubSystem: '<S37>/D//Q Axis Priority' */

    /* Outputs for IfAction SubSystem: '<S37>/D-Q Equivalence' incorporates:
     *  ActionPort: '<S40>/Action Port'
     */
  } else if (rtb_PU_Conversion_idx_0 > rtb_Product) {
    /* Outputs for IfAction SubSystem: '<S40>/Limiter' incorporates:
     *  ActionPort: '<S44>/Action Port'
     */
    /* If: '<S40>/If' incorporates:
     *  Constant: '<S44>/Constant'
     *  Product: '<S44>/Product'
     *  Product: '<S44>/Product1'
     *  Product: '<S44>/Reciprocal'
     *  Sqrt: '<S44>/Square Root'
     *  Switch: '<S44>/Switch'
     *  UnitDelay: '<S38>/Unit Delay'
     *  UnitDelay: '<S39>/Unit Delay'
     */
    rtb_PU_Conversion_idx_0 = (real32_T)sqrt(rtb_PU_Conversion_idx_0);
    if (!(rtb_PU_Conversion_idx_0 != 0.0F)) {
      rtb_PU_Conversion_idx_0 = soc_pmsm_cpu2_ref_P_g.Constant_Value_l;
    }

    rtb_PU_Conversion_idx_0 = 1.0F / rtb_PU_Conversion_idx_0;
    rtb_Product = soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_j * rtb_Switch_ep *
      rtb_PU_Conversion_idx_0;
    rtb_PU_Conversion_idx_1 = soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE *
      rtb_Switch_ep * rtb_PU_Conversion_idx_0;

    /* End of Outputs for SubSystem: '<S40>/Limiter' */
  } else {
    /* Outputs for IfAction SubSystem: '<S40>/Passthrough' incorporates:
     *  ActionPort: '<S45>/Action Port'
     */
    /* If: '<S40>/If' incorporates:
     *  SignalConversion generated from: '<S45>/dqRef'
     *  UnitDelay: '<S38>/Unit Delay'
     *  UnitDelay: '<S39>/Unit Delay'
     */
    rtb_Product = soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_j;
    rtb_PU_Conversion_idx_1 = soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE;

    /* End of Outputs for SubSystem: '<S40>/Passthrough' */

    /* End of Outputs for SubSystem: '<S37>/D-Q Equivalence' */
  }

  /* End of If: '<S37>/If' */

  /* DeadZone: '<S81>/DeadZone' */
  if (rtb_dcos > soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiw_g) {
    rtb_dcos -= soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiw_g;
  } else if (rtb_dcos >= soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiw_m)
  {
    rtb_dcos = 0.0F;
  } else {
    rtb_dcos -= soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiw_m;
  }

  /* End of DeadZone: '<S81>/DeadZone' */

  /* Product: '<S85>/IProd Out' incorporates:
   *  Constant: '<S38>/Ki'
   */
  rtb_convert_pu *= soc_pmsm_cpu2_ref_P_g.Ki_Value;

  /* Switch: '<S79>/Switch1' incorporates:
   *  Constant: '<S79>/Clamping_zero'
   *  Constant: '<S79>/Constant'
   *  Constant: '<S79>/Constant2'
   *  RelationalOperator: '<S79>/fix for DT propagation issue'
   */
  if (rtb_dcos > soc_pmsm_cpu2_ref_P_g.Clamping_zero_Value) {
    b_varargout_2 = soc_pmsm_cpu2_ref_P_g.Constant_Value_i;
  } else {
    b_varargout_2 = soc_pmsm_cpu2_ref_P_g.Constant2_Value_a;
  }

  /* Switch: '<S79>/Switch2' incorporates:
   *  Constant: '<S79>/Clamping_zero'
   *  Constant: '<S79>/Constant3'
   *  Constant: '<S79>/Constant4'
   *  RelationalOperator: '<S79>/fix for DT propagation issue1'
   */
  if (rtb_convert_pu > soc_pmsm_cpu2_ref_P_g.Clamping_zero_Value) {
    tmp_0 = soc_pmsm_cpu2_ref_P_g.Constant3_Value_j;
  } else {
    tmp_0 = soc_pmsm_cpu2_ref_P_g.Constant4_Value;
  }

  /* Switch: '<S79>/Switch' incorporates:
   *  Constant: '<S79>/Clamping_zero'
   *  Constant: '<S79>/Constant1'
   *  Logic: '<S79>/AND3'
   *  RelationalOperator: '<S79>/Equal1'
   *  RelationalOperator: '<S79>/Relational Operator'
   *  Switch: '<S79>/Switch1'
   *  Switch: '<S79>/Switch2'
   */
  if ((soc_pmsm_cpu2_ref_P_g.Clamping_zero_Value != rtb_dcos) && (b_varargout_2 ==
       tmp_0)) {
    rtb_convert_pu = soc_pmsm_cpu2_ref_P_g.Constant1_Value_d;
  }

  /* End of Switch: '<S79>/Switch' */

  /* DeadZone: '<S132>/DeadZone' */
  if (rtb_DeadZone > soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiw_d) {
    rtb_DeadZone -= soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiw_d;
  } else if (rtb_DeadZone >=
             soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiwin) {
    rtb_DeadZone = 0.0F;
  } else {
    rtb_DeadZone -= soc_pmsm_cpu2_ref_P_g.DiscretePIControllerwithantiwin;
  }

  /* End of DeadZone: '<S132>/DeadZone' */

  /* Product: '<S136>/IProd Out' incorporates:
   *  Constant: '<S39>/Ki'
   */
  rtb_IProdOut *= soc_pmsm_cpu2_ref_P_g.Ki_Value_a;

  /* Switch: '<S130>/Switch1' incorporates:
   *  Constant: '<S130>/Clamping_zero'
   *  Constant: '<S130>/Constant'
   *  Constant: '<S130>/Constant2'
   *  RelationalOperator: '<S130>/fix for DT propagation issue'
   */
  if (rtb_DeadZone > soc_pmsm_cpu2_ref_P_g.Clamping_zero_Value_m) {
    b_varargout_2 = soc_pmsm_cpu2_ref_P_g.Constant_Value_j;
  } else {
    b_varargout_2 = soc_pmsm_cpu2_ref_P_g.Constant2_Value_l;
  }

  /* Switch: '<S130>/Switch2' incorporates:
   *  Constant: '<S130>/Clamping_zero'
   *  Constant: '<S130>/Constant3'
   *  Constant: '<S130>/Constant4'
   *  RelationalOperator: '<S130>/fix for DT propagation issue1'
   */
  if (rtb_IProdOut > soc_pmsm_cpu2_ref_P_g.Clamping_zero_Value_m) {
    tmp_0 = soc_pmsm_cpu2_ref_P_g.Constant3_Value_n;
  } else {
    tmp_0 = soc_pmsm_cpu2_ref_P_g.Constant4_Value_f;
  }

  /* Switch: '<S130>/Switch' incorporates:
   *  Constant: '<S130>/Clamping_zero'
   *  Constant: '<S130>/Constant1'
   *  Logic: '<S130>/AND3'
   *  RelationalOperator: '<S130>/Equal1'
   *  RelationalOperator: '<S130>/Relational Operator'
   *  Switch: '<S130>/Switch1'
   *  Switch: '<S130>/Switch2'
   */
  if ((soc_pmsm_cpu2_ref_P_g.Clamping_zero_Value_m != rtb_DeadZone) &&
      (b_varargout_2 == tmp_0)) {
    rtb_IProdOut = soc_pmsm_cpu2_ref_P_g.Constant1_Value_m;
  }

  /* End of Switch: '<S130>/Switch' */

  /* Outputs for Atomic SubSystem: '<S31>/Two inputs CRL' */
  /* Switch: '<S157>/Switch' incorporates:
   *  Constant: '<S157>/Offset'
   *  Product: '<S156>/dcos'
   *  Product: '<S156>/dsin'
   *  Product: '<S156>/qcos'
   *  Product: '<S156>/qsin'
   *  Sum: '<S156>/sum_alpha'
   *  Sum: '<S156>/sum_beta'
   *  UnaryMinus: '<S157>/Unary_Minus'
   */
  if (soc_pmsm_cpu2_ref_P_g.Offset_Value >
      soc_pmsm_cpu2_ref_P_g.Switch_Threshold_i) {
    rtb_PU_Conversion_idx_0 = rtb_PU_Conversion_idx_1 * rtb_Sum6 + rtb_Product *
      rtb_Sum4;
    rtb_PU_Conversion_idx_1 = -(rtb_Product * rtb_Sum6 - rtb_PU_Conversion_idx_1
      * rtb_Sum4);
  } else {
    rtb_PU_Conversion_idx_0 = rtb_Product * rtb_Sum6 - rtb_PU_Conversion_idx_1 *
      rtb_Sum4;
    rtb_PU_Conversion_idx_1 = rtb_PU_Conversion_idx_1 * rtb_Sum6 + rtb_Product *
      rtb_Sum4;
  }

  /* End of Switch: '<S157>/Switch' */

  /* SignalConversion generated from: '<S175>/IPC Write' incorporates:
   *  AlgorithmDescriptorDelegate generated from: '<S156>/a16'
   */
  rtb_TmpSignalConversionAtIPCWri[0] = rtb_PU_Conversion_idx_0;
  rtb_TmpSignalConversionAtIPCWri[1] = rtb_PU_Conversion_idx_1;

  /* End of Outputs for SubSystem: '<S31>/Two inputs CRL' */
  rtb_TmpSignalConversionAtIPCWri[2] = rtb_Kalpha;
  rtb_TmpSignalConversionAtIPCWri[3] = rtb_Kbeta;

  /* MATLABSystem: '<S175>/IPC Write' */
  diagDataOut.OverwriteDiag = 0U;
  diagDataOut.NumBuffUsedDiag = 0U;
  MW_IPC_Write(&soc_pmsm_cpu2_ref_DW.obj.IpcHandle, 0.0,
               soc_pmsm_cpu2_ref_DW.obj.DataTypeId,
               &rtb_TmpSignalConversionAtIPCWri[0], &diagDataOut);

  /* Start for MATLABSystem: '<S175>/IPC Write' */
  qY = soc_pmsm_cpu2_ref_DW.obj.Overwritten + /*MW:OvSatOk*/
    diagDataOut.OverwriteDiag;
  if (qY < soc_pmsm_cpu2_ref_DW.obj.Overwritten) {
    qY = MAX_uint64_T;
  }

  /* MATLABSystem: '<S175>/IPC Write' */
  soc_pmsm_cpu2_ref_DW.obj.Overwritten = qY;
  if (diagDataOut.NumBuffUsedDiag <= 1U) {
    soc_pmsm_cpu2_ref_DW.obj.NumBufUsed = diagDataOut.NumBuffUsedDiag;
  }

  /* SignalConversion generated from: '<S1>/PWM' */
  *rty_duty1 = 0.0F;

  /* SignalConversion generated from: '<S1>/PWM1' */
  *rty_duty2 = 0.0F;

  /* SignalConversion generated from: '<S1>/PWM2' */
  *rty_duty3 = 0.0F;

  /* SignalConversion generated from: '<S1>/VandI' */
  *rty_VI_IPC = 0.0F;

  /* Switch: '<S9>/Switch' incorporates:
   *  Constant: '<S9>/Constant'
   *  Constant: '<S9>/Constant1'
   *  Gain: '<S167>/Gain'
   *  Gain: '<S9>/One_by_Two'
   *  Sum: '<S167>/Add1'
   *  Sum: '<S167>/Add2'
   *  Sum: '<S167>/Add3'
   *  Sum: '<S9>/Sum'
   *  UnitDelay: '<S2>/Unit Delay'
   */
  if (soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_l) {
    /* Outputs for Atomic SubSystem: '<S31>/Two inputs CRL' */
    /* Gain: '<S171>/sqrt3_by_two' incorporates:
     *  AlgorithmDescriptorDelegate generated from: '<S156>/a16'
     */
    rtb_PU_Conversion_idx_1 *= soc_pmsm_cpu2_ref_P_g.sqrt3_by_two_Gain;

    /* Gain: '<S171>/one_by_two' incorporates:
     *  AlgorithmDescriptorDelegate generated from: '<S156>/a16'
     */
    rtb_Kalpha = soc_pmsm_cpu2_ref_P_g.one_by_two_Gain * rtb_PU_Conversion_idx_0;

    /* End of Outputs for SubSystem: '<S31>/Two inputs CRL' */

    /* Gain: '<S171>/Kc' incorporates:
     *  Sum: '<S171>/add_c'
     */
    rtb_Kbeta = ((0.0F - rtb_Kalpha) - rtb_PU_Conversion_idx_1) *
      soc_pmsm_cpu2_ref_P_g.Kc_Gain;

    /* Outputs for Atomic SubSystem: '<S31>/Two inputs CRL' */
    /* Gain: '<S171>/Ka' incorporates:
     *  AlgorithmDescriptorDelegate generated from: '<S156>/a16'
     */
    rtb_PU_Conversion_idx_0 *= soc_pmsm_cpu2_ref_P_g.Ka_Gain;

    /* End of Outputs for SubSystem: '<S31>/Two inputs CRL' */

    /* Gain: '<S171>/Kb' incorporates:
     *  Sum: '<S171>/add_b'
     */
    rtb_Kalpha = (rtb_PU_Conversion_idx_1 - rtb_Kalpha) *
      soc_pmsm_cpu2_ref_P_g.Kb_Gain;

    /* MinMax: '<S168>/Max' incorporates:
     *  MinMax: '<S168>/Min'
     */
    tmp_1 = rtIsNaNF(rtb_Kalpha);
    if ((rtb_PU_Conversion_idx_0 >= rtb_Kalpha) || tmp_1) {
      rtb_PU_Conversion_idx_1 = rtb_PU_Conversion_idx_0;
    } else {
      rtb_PU_Conversion_idx_1 = rtb_Kalpha;
    }

    /* MinMax: '<S168>/Min' */
    if ((rtb_PU_Conversion_idx_0 <= rtb_Kalpha) || tmp_1) {
      rtb_DeadZone = rtb_PU_Conversion_idx_0;
    } else {
      rtb_DeadZone = rtb_Kalpha;
    }

    /* MinMax: '<S168>/Max' incorporates:
     *  MinMax: '<S168>/Min'
     */
    tmp_1 = !rtIsNaNF(rtb_Kbeta);
    if ((!(rtb_PU_Conversion_idx_1 >= rtb_Kbeta)) && tmp_1) {
      rtb_PU_Conversion_idx_1 = rtb_Kbeta;
    }

    /* MinMax: '<S168>/Min' */
    if ((!(rtb_DeadZone <= rtb_Kbeta)) && tmp_1) {
      rtb_DeadZone = rtb_Kbeta;
    }

    /* Gain: '<S168>/one_by_two' incorporates:
     *  MinMax: '<S168>/Max'
     *  MinMax: '<S168>/Min'
     *  Sum: '<S168>/Add'
     */
    rtb_PU_Conversion_idx_1 = (rtb_PU_Conversion_idx_1 + rtb_DeadZone) *
      soc_pmsm_cpu2_ref_P_g.one_by_two_Gain_a;
    rtb_pwm_dutycycles[0] = (rtb_PU_Conversion_idx_0 + rtb_PU_Conversion_idx_1) *
      soc_pmsm_cpu2_ref_P_g.Gain_Gain_j * soc_pmsm_cpu2_ref_P_g.One_by_Two_Gain
      + soc_pmsm_cpu2_ref_P_g.Constant_Value_g;
    rtb_pwm_dutycycles[1] = (rtb_Kalpha + rtb_PU_Conversion_idx_1) *
      soc_pmsm_cpu2_ref_P_g.Gain_Gain_j * soc_pmsm_cpu2_ref_P_g.One_by_Two_Gain
      + soc_pmsm_cpu2_ref_P_g.Constant_Value_g;
    rtb_pwm_dutycycles[2] = (rtb_PU_Conversion_idx_1 + rtb_Kbeta) *
      soc_pmsm_cpu2_ref_P_g.Gain_Gain_j * soc_pmsm_cpu2_ref_P_g.One_by_Two_Gain
      + soc_pmsm_cpu2_ref_P_g.Constant_Value_g;
  } else {
    rtb_pwm_dutycycles[0] = soc_pmsm_cpu2_ref_P_g.Constant1_Value;
    rtb_pwm_dutycycles[1] = soc_pmsm_cpu2_ref_P_g.Constant1_Value;
    rtb_pwm_dutycycles[2] = soc_pmsm_cpu2_ref_P_g.Constant1_Value;
  }

  /* End of Switch: '<S9>/Switch' */

  /* MATLABSystem: '<S179>/PWM Write' incorporates:
   *  BusCreator: '<S176>/Bus Creator'
   *  Constant: '<S176>/Constant1'
   *  Constant: '<S176>/Constant2'
   *  Switch: '<S176>/Switch'
   */
  soc_pmsm_cpu2_ref_DW.obj_e.PwmParams.Compare1 = rtb_pwm_dutycycles[0];
  soc_pmsm_cpu2_ref_DW.obj_e.PwmParams.Compare2 = rtb_pwm_dutycycles[0];
  soc_pmsm_cpu2_ref_DW.obj_e.PwmParams.IsPeriodInpVal =
    soc_pmsm_cpu2_ref_P_g.Constant1_Value_p;
  soc_pmsm_cpu2_ref_DW.obj_e.PwmParams.Period = 0.0F;
  soc_pmsm_cpu2_ref_DW.obj_e.PwmParams.IsPhaseInpVal =
    soc_pmsm_cpu2_ref_P_g.Constant2_Value;
  soc_pmsm_cpu2_ref_DW.obj_e.PwmParams.Phase = 0.0F;
  MW_PWM_Write(soc_pmsm_cpu2_ref_DW.obj_e.PwmHandle,
               &soc_pmsm_cpu2_ref_DW.obj_e.PwmParams);

  /* MATLABSystem: '<S183>/PWM Write' incorporates:
   *  BusCreator: '<S180>/Bus Creator'
   *  Constant: '<S180>/Constant1'
   *  Constant: '<S180>/Constant2'
   *  Switch: '<S180>/Switch'
   */
  soc_pmsm_cpu2_ref_DW.obj_c.PwmParams.Compare1 = rtb_pwm_dutycycles[1];
  soc_pmsm_cpu2_ref_DW.obj_c.PwmParams.Compare2 = rtb_pwm_dutycycles[1];
  soc_pmsm_cpu2_ref_DW.obj_c.PwmParams.IsPeriodInpVal =
    soc_pmsm_cpu2_ref_P_g.Constant1_Value_h;
  soc_pmsm_cpu2_ref_DW.obj_c.PwmParams.Period = 0.0F;
  soc_pmsm_cpu2_ref_DW.obj_c.PwmParams.IsPhaseInpVal =
    soc_pmsm_cpu2_ref_P_g.Constant2_Value_m;
  soc_pmsm_cpu2_ref_DW.obj_c.PwmParams.Phase = 0.0F;
  MW_PWM_Write(soc_pmsm_cpu2_ref_DW.obj_c.PwmHandle,
               &soc_pmsm_cpu2_ref_DW.obj_c.PwmParams);

  /* MATLABSystem: '<S187>/PWM Write' incorporates:
   *  BusCreator: '<S184>/Bus Creator'
   *  Constant: '<S184>/Constant1'
   *  Constant: '<S184>/Constant2'
   *  Switch: '<S184>/Switch'
   */
  soc_pmsm_cpu2_ref_DW.obj_b.PwmParams.Compare1 = rtb_pwm_dutycycles[2];
  soc_pmsm_cpu2_ref_DW.obj_b.PwmParams.Compare2 = rtb_pwm_dutycycles[2];
  soc_pmsm_cpu2_ref_DW.obj_b.PwmParams.IsPeriodInpVal =
    soc_pmsm_cpu2_ref_P_g.Constant1_Value_mn;
  soc_pmsm_cpu2_ref_DW.obj_b.PwmParams.Period = 0.0F;
  soc_pmsm_cpu2_ref_DW.obj_b.PwmParams.IsPhaseInpVal =
    soc_pmsm_cpu2_ref_P_g.Constant2_Value_k;
  soc_pmsm_cpu2_ref_DW.obj_b.PwmParams.Phase = 0.0F;
  MW_PWM_Write(soc_pmsm_cpu2_ref_DW.obj_b.PwmHandle,
               &soc_pmsm_cpu2_ref_DW.obj_b.PwmParams);

  /* Update for UnitDelay: '<S2>/Unit Delay1' */
  soc_pmsm_cpu2_ref_DW.UnitDelay1_DSTATE = soc_pmsm_cpu2_ref_B.Output;

  /* Update for UnitDelay: '<S13>/Delay Input1'
   *
   * Block description for '<S13>/Delay Input1':
   *
   *  Store in Global RAM
   */
  soc_pmsm_cpu2_ref_DW.DelayInput1_DSTATE = rtb_NOT1;

  /* Update for UnitDelay: '<S2>/Unit Delay' */
  soc_pmsm_cpu2_ref_DW.UnitDelay_DSTATE_l = rtb_Equal;

  /* Update for DiscreteIntegrator: '<S139>/Integrator' */
  soc_pmsm_cpu2_ref_DW.Integrator_IC_LOADING = 0U;
  soc_pmsm_cpu2_ref_DW.Integrator_DSTATE +=
    soc_pmsm_cpu2_ref_P_g.Integrator_gainval * rtb_IProdOut;
  soc_pmsm_cpu2_ref_DW.Integrator_PrevResetState = (int16_T)rtb_LogicalOperator;

  /* Update for DiscreteIntegrator: '<S88>/Integrator' incorporates:
   *  DiscreteIntegrator: '<S139>/Integrator'
   */
  soc_pmsm_cpu2_ref_DW.Integrator_IC_LOADING_m = 0U;
  soc_pmsm_cpu2_ref_DW.Integrator_DSTATE_k +=
    soc_pmsm_cpu2_ref_P_g.Integrator_gainval_d * rtb_convert_pu;
  soc_pmsm_cpu2_ref_DW.Integrator_PrevResetState_i = (int16_T)
    rtb_LogicalOperator;

  /* End of Outputs for RootInportFunctionCallGenerator generated from: '<Root>/In1' */
}

/* Termination for referenced model: 'soc_pmsm_cpu2_ref' */
void soc_pmsm_cpu2_ref_Term(void)
{
  /* Terminate for RootInportFunctionCallGenerator generated from: '<Root>/In1' incorporates:
   *  SubSystem: '<Root>/Current Control'
   */

  /* Terminate for MATLABSystem: '<S26>/ADC Read' */
  if (!soc_pmsm_cpu2_ref_DW.obj_k.matlabCodegenIsDeleted) {
    soc_pmsm_cpu2_ref_DW.obj_k.matlabCodegenIsDeleted = true;
    if ((soc_pmsm_cpu2_ref_DW.obj_k.isInitialized == 1L) &&
        soc_pmsm_cpu2_ref_DW.obj_k.isSetupComplete) {
      MW_ADC_Terminate(soc_pmsm_cpu2_ref_DW.obj_k.AdcHandle);
    }
  }

  /* End of Terminate for MATLABSystem: '<S26>/ADC Read' */

  /* Terminate for MATLABSystem: '<S24>/ADC Read' */
  if (!soc_pmsm_cpu2_ref_DW.obj_h.matlabCodegenIsDeleted) {
    soc_pmsm_cpu2_ref_DW.obj_h.matlabCodegenIsDeleted = true;
    if ((soc_pmsm_cpu2_ref_DW.obj_h.isInitialized == 1L) &&
        soc_pmsm_cpu2_ref_DW.obj_h.isSetupComplete) {
      MW_ADC_Terminate(soc_pmsm_cpu2_ref_DW.obj_h.AdcHandle);
    }
  }

  /* End of Terminate for MATLABSystem: '<S24>/ADC Read' */

  /* Terminate for MATLABSystem: '<S173>/IPC Read' */
  if (!soc_pmsm_cpu2_ref_DW.obj_j.matlabCodegenIsDeleted) {
    soc_pmsm_cpu2_ref_DW.obj_j.matlabCodegenIsDeleted = true;
    if ((soc_pmsm_cpu2_ref_DW.obj_j.isInitialized == 1L) &&
        soc_pmsm_cpu2_ref_DW.obj_j.isSetupComplete) {
      MW_IPC_Terminate(soc_pmsm_cpu2_ref_DW.obj_j.IpcHandle);
    }
  }

  /* End of Terminate for MATLABSystem: '<S173>/IPC Read' */

  /* Terminate for MATLABSystem: '<S175>/IPC Write' */
  if (!soc_pmsm_cpu2_ref_DW.obj.matlabCodegenIsDeleted) {
    soc_pmsm_cpu2_ref_DW.obj.matlabCodegenIsDeleted = true;
    if ((soc_pmsm_cpu2_ref_DW.obj.isInitialized == 1L) &&
        soc_pmsm_cpu2_ref_DW.obj.isSetupComplete) {
      MW_IPC_Terminate(soc_pmsm_cpu2_ref_DW.obj.IpcHandle);
    }
  }

  /* End of Terminate for MATLABSystem: '<S175>/IPC Write' */

  /* Terminate for MATLABSystem: '<S179>/PWM Write' */
  if (!soc_pmsm_cpu2_ref_DW.obj_e.matlabCodegenIsDeleted) {
    soc_pmsm_cpu2_ref_DW.obj_e.matlabCodegenIsDeleted = true;
    if ((soc_pmsm_cpu2_ref_DW.obj_e.isInitialized == 1L) &&
        soc_pmsm_cpu2_ref_DW.obj_e.isSetupComplete) {
      MW_PWM_Terminate(soc_pmsm_cpu2_ref_DW.obj_e.PwmHandle);
    }
  }

  /* End of Terminate for MATLABSystem: '<S179>/PWM Write' */

  /* Terminate for MATLABSystem: '<S183>/PWM Write' */
  if (!soc_pmsm_cpu2_ref_DW.obj_c.matlabCodegenIsDeleted) {
    soc_pmsm_cpu2_ref_DW.obj_c.matlabCodegenIsDeleted = true;
    if ((soc_pmsm_cpu2_ref_DW.obj_c.isInitialized == 1L) &&
        soc_pmsm_cpu2_ref_DW.obj_c.isSetupComplete) {
      MW_PWM_Terminate(soc_pmsm_cpu2_ref_DW.obj_c.PwmHandle);
    }
  }

  /* End of Terminate for MATLABSystem: '<S183>/PWM Write' */

  /* Terminate for MATLABSystem: '<S187>/PWM Write' */
  if (!soc_pmsm_cpu2_ref_DW.obj_b.matlabCodegenIsDeleted) {
    soc_pmsm_cpu2_ref_DW.obj_b.matlabCodegenIsDeleted = true;
    if ((soc_pmsm_cpu2_ref_DW.obj_b.isInitialized == 1L) &&
        soc_pmsm_cpu2_ref_DW.obj_b.isSetupComplete) {
      MW_PWM_Terminate(soc_pmsm_cpu2_ref_DW.obj_b.PwmHandle);
    }
  }

  /* End of Terminate for MATLABSystem: '<S187>/PWM Write' */

  /* End of Terminate for RootInportFunctionCallGenerator generated from: '<Root>/In1' */
}

/* Model initialize function */
void soc_pmsm_cpu2_ref_initialize(const char_T **rt_errorStatus)
{
  RT_MODEL_soc_pmsm_cpu2_ref_T *const soc_pmsm_cpu2_ref_M =
    &(soc_pmsm_cpu2_ref_MdlrefDW.rtm);

  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize error status */
  rtmSetErrorStatusPointer(soc_pmsm_cpu2_ref_M, rt_errorStatus);

  /* block I/O */
  (void) memset(((void *) &soc_pmsm_cpu2_ref_B), 0,
                sizeof(B_soc_pmsm_cpu2_ref_c_T));

  /* states (dwork) */
  (void) memset((void *)&soc_pmsm_cpu2_ref_DW, 0,
                sizeof(DW_soc_pmsm_cpu2_ref_f_T));
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
