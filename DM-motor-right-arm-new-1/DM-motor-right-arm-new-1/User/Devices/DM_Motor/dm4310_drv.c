#include "dm4310_drv.h"

#include "fdcan.h"
#include "arm_math.h"

float Hex_To_Float(uint32_t *Byte,int num)//ʮ�����Ƶ�������
{
	return *((float*)Byte);
}

uint32_t FloatTohex(float HEX)//��������ʮ������ת��
{
	return *( uint32_t *)&HEX;
}

/**
************************************************************************
* @brief:      	float_to_uint: ������ת��Ϊ�޷�����������
* @param[in]:   x_float:	��ת���ĸ�����
* @param[in]:   x_min:		��Χ��Сֵ
* @param[in]:   x_max:		��Χ���ֵ
* @param[in]:   bits: 		Ŀ���޷���������λ��
* @retval:     	�޷����������
* @details:    	�������ĸ����� x ��ָ����Χ [x_min, x_max] �ڽ�������ӳ�䣬ӳ����Ϊһ��ָ��λ�����޷�������
************************************************************************
**/
int float_to_uint(float x_float, float x_min, float x_max, int bits)
{
	/* Converts a float to an unsigned int, given range and number of bits */
	float span = x_max - x_min;
	float offset = x_min;
	return (int) ((x_float-offset)*((float)((1<<bits)-1))/span);
}
/**
************************************************************************
* @brief:      	uint_to_float: �޷�������ת��Ϊ����������
* @param[in]:   x_int: ��ת�����޷�������
* @param[in]:   x_min: ��Χ��Сֵ
* @param[in]:   x_max: ��Χ���ֵ
* @param[in]:   bits:  �޷���������λ��
* @retval:     	���������
* @details:    	���������޷������� x_int ��ָ����Χ [x_min, x_max] �ڽ�������ӳ�䣬ӳ����Ϊһ��������
************************************************************************
**/
float uint_to_float(int x_int, float x_min, float x_max, int bits)
{
	/* converts unsigned int to float, given range and number of bits */
	float span = x_max - x_min;
	float offset = x_min;
	return ((float)x_int)*span/((float)((1<<bits)-1)) + offset;
}

void joint_motor_init(Joint_Motor_t *motor,uint16_t id,uint16_t mode)
{
  motor->mode=mode;
  motor->para.id=id;
}

void wheel_motor_init(Wheel_Motor_t *motor,uint16_t id,uint16_t mode)
{
  motor->mode=mode;
  motor->para.id=id;
}

/**
************************************************************************
* @brief:      	dm4310_fbdata: ��ȡDM4310����������ݺ���
* @param[in]:   motor:    ָ��motor_t�ṹ��ָ�룬������������Ϣ�ͷ�������
* @param[in]:   rx_data:  ָ������������ݵ�����ָ��
* @param[in]:   data_len: ���ݳ���
* @retval:     	void
* @details:    	�ӽ��յ�����������ȡDM4310����ķ�����Ϣ���������ID��
*               ״̬��λ�á��ٶȡ�Ť������¶Ȳ������Ĵ������ݵ�
************************************************************************
**/
void dm4310_fbdata(Joint_Motor_t *motor, uint8_t *rx_data,uint32_t data_len)
{ 
	if(data_len==FDCAN_DLC_BYTES_8)
	{//���ص�������8���ֽ�
	  motor->para.id = (rx_data[0])&0x0F;
	  motor->para.state = (rx_data[0])>>4;
	  motor->para.p_int=(rx_data[1]<<8)|rx_data[2];
	  motor->para.v_int=(rx_data[3]<<4)|(rx_data[4]>>4);
	  motor->para.t_int=((rx_data[4]&0xF)<<8)|rx_data[5];
	  motor->para.pos = uint_to_float(motor->para.p_int, P_MIN1, P_MAX1, 16); // (-12.5,12.5)
	  motor->para.vel = uint_to_float(motor->para.v_int, V_MIN1, V_MAX1, 12); // (-30.0,30.0)
	  motor->para.tor = uint_to_float(motor->para.t_int, T_MIN1, T_MAX1, 12);  // (-10.0,10.0)
	  motor->para.Tmos = (float)(rx_data[6]);
	  motor->para.Tcoil = (float)(rx_data[7]);
	}
}


volatile bool g_ready_to_read = true;
volatile uint8_t g_current_rid = 0;
void dm4340_RegReadRequest(hcan_t* hcan, uint16_t motor_id, Joint_Motor_t *motor)
{ 
	if (!motor || !hcan) return;

    // 只有准备好且未读完所有寄存器时才发送
    if (g_ready_to_read && g_current_rid <= REG_END) {
        uint8_t txData[4] = {0};
		FDCAN_TxHeaderTypeDef txHeader;

		txHeader.Identifier =0x7FF;
		txHeader.IdType =FDCAN_STANDARD_ID;
		txHeader.TxFrameType =FDCAN_DATA_FRAME;
		txHeader.DataLength=4;
		txHeader.ErrorStateIndicator=FDCAN_ESI_ACTIVE;
		txHeader.BitRateSwitch=FDCAN_BRS_ON;
		txHeader.FDFormat=FDCAN_FD_CAN;
		txHeader.TxEventFifoControl=FDCAN_NO_TX_EVENTS;
		txHeader.MessageMarker=0;

        // 将 motor_id 拆分为小端序：低字节在前
        txData[0] = 0x01;//(uint8_t)(motor_id & 0xFF);        // CANID_L
        txData[1] = 0x00;//(uint8_t)((motor_id >> 8) & 0xFF); // CANID_H
        txData[2] = 0x33;                              // 读寄存器命令
        txData[3] = g_current_rid;                // 当前寄存器ID

        // 发送给目标电机（ID = motor_id）
		HAL_FDCAN_AddMessageToTxFifoQ(&hfdcan1, &txHeader, txData);

        // 标记等待响应
        g_ready_to_read = false;

    }
}

void dm4340_RegReadFeedback(Joint_Motor_t *motor, uint8_t *rx_data, uint32_t data_len)
{ 
	//if (rx_data[2] != 0x33) return;	// 检查 D[2] 是否为 0x33 → 表示是寄存器响应
        // ====== 处理寄存器响应 ======
    uint8_t rid = rx_data[3]; // 寄存器地址
	uint16_t motor_id = ((uint16_t)rx_data[1] << 8) | rx_data[0]; // 高字节在前

	if (rid >= REG_START && rid <= REG_END){
		motor->reg_values[rid].bytes[0] = rx_data[4];
		motor->reg_values[rid].bytes[1] = rx_data[5];
		motor->reg_values[rid].bytes[2] = rx_data[6];                
		motor->reg_values[rid].bytes[3] = rx_data[7];
			
		motor->reg_values[rid].u32 = ((uint32_t)rx_data[7] << 24) |
                             ((uint32_t)rx_data[6] << 16) |
                             ((uint32_t)rx_data[5] << 8)  |
                             (uint32_t)rx_data[4];
			// 准备读下一个
		g_current_rid++;
		if (g_current_rid > REG_END) g_current_rid = REG_START;  
		g_ready_to_read = true;

			 printf("G_RID=0x%02X, Motor 0x%03X: Read RID=0x%02X, Value=0x%02X%02X%02X%02X\n",
                   g_current_rid, motor_id, rid, rx_data[7], rx_data[6], rx_data[5], rx_data[4]); // 注意字节序
    }
}    

void dm4340_fbdata(Joint_Motor_t *motor, uint8_t *rx_data,uint32_t data_len)
{ 
	if(data_len==FDCAN_DLC_BYTES_8){
		if(rx_data[2] == 0x33){
			dm4340_RegReadFeedback(motor, rx_data, data_len);
		}
		else{
			//���ص�������8���ֽ�
			motor->para.id = (rx_data[0])&0x0F;
			motor->para.state = (rx_data[0])>>4;
			motor->para.p_int=(rx_data[1]<<8)|rx_data[2];
			motor->para.v_int=(rx_data[3]<<4)|(rx_data[4]>>4);
			motor->para.t_int=((rx_data[4]&0xF)<<8)|rx_data[5];
			motor->para.pos = uint_to_float(motor->para.p_int, P_MIN2, P_MAX2, 16);
			motor->para.vel = uint_to_float(motor->para.v_int, V_MIN2, V_MAX2, 12); 
			motor->para.tor = uint_to_float(motor->para.t_int, T_MIN2, T_MAX2, 12); 
			motor->para.Tmos = (float)(rx_data[6]);
			motor->para.Tcoil = (float)(rx_data[7]);
		}
	}
}

void dm6006_fbdata(Joint_Motor_t *motor, uint8_t *rx_data,uint32_t data_len)
{ 
	if(data_len==FDCAN_DLC_BYTES_8)
	{//���ص�������8���ֽ�
	  motor->para.id = (rx_data[0])&0x0F;
	  motor->para.state = (rx_data[0])>>4;
	  motor->para.p_int=(rx_data[1]<<8)|rx_data[2];
	  motor->para.v_int=(rx_data[3]<<4)|(rx_data[4]>>4);
	  motor->para.t_int=((rx_data[4]&0xF)<<8)|rx_data[5];
	  motor->para.pos = uint_to_float(motor->para.p_int, P_MIN3, P_MAX3, 16);
	  motor->para.vel = uint_to_float(motor->para.v_int, V_MIN3, V_MAX3, 12); 
	  motor->para.tor = uint_to_float(motor->para.t_int, T_MIN3, T_MAX3, 12); 
	  motor->para.Tmos = (float)(rx_data[6]);
	  motor->para.Tcoil = (float)(rx_data[7]);
	}
}

void dm8006_fbdata(Joint_Motor_t *motor, uint8_t *rx_data,uint32_t data_len)
{ 
	if(data_len==FDCAN_DLC_BYTES_8)
	{//���ص�������8���ֽ�
	  motor->para.id = (rx_data[0])&0x0F;
	  motor->para.state = (rx_data[0])>>4;
	  motor->para.p_int=(rx_data[1]<<8)|rx_data[2];
	  motor->para.v_int=(rx_data[3]<<4)|(rx_data[4]>>4);
	  motor->para.t_int=((rx_data[4]&0xF)<<8)|rx_data[5];
	  motor->para.pos = uint_to_float(motor->para.p_int, P_MIN4, P_MAX4, 16);
	  motor->para.vel = uint_to_float(motor->para.v_int, V_MIN4, V_MAX4, 12); 
	  motor->para.tor = uint_to_float(motor->para.t_int, T_MIN4, T_MAX4, 12); 
	  motor->para.Tmos = (float)(rx_data[6]);
	  motor->para.Tcoil = (float)(rx_data[7]);
	}
}

void dm3507_fbdata(Joint_Motor_t *motor, uint8_t *rx_data,uint32_t data_len)
{ 
	if(data_len==FDCAN_DLC_BYTES_8)
	{//���ص�������8���ֽ�
	  motor->para.id = (rx_data[0])&0x0F;
	  motor->para.state = (rx_data[0])>>4;
	  motor->para.p_int=(rx_data[1]<<8)|rx_data[2];
	  motor->para.v_int=(rx_data[3]<<4)|(rx_data[4]>>4);
	  motor->para.t_int=((rx_data[4]&0xF)<<8)|rx_data[5];
	  motor->para.pos = uint_to_float(motor->para.p_int, P_MIN5, P_MAX5, 16);
	  motor->para.vel = uint_to_float(motor->para.v_int, V_MIN5, V_MAX5, 12); 
	  motor->para.tor = uint_to_float(motor->para.t_int, T_MIN5, T_MAX5, 12); 
	  motor->para.Tmos = (float)(rx_data[6]);
	  motor->para.Tcoil = (float)(rx_data[7]);
	}
}

void dm10010l_fbdata(Joint_Motor_t *motor, uint8_t *rx_data,uint32_t data_len)
{ 
	if(data_len==FDCAN_DLC_BYTES_8)
	{//���ص�������8���ֽ�
	  motor->para.id = (rx_data[0])&0x0F;
	  motor->para.state = (rx_data[0])>>4;
	  motor->para.p_int=(rx_data[1]<<8)|rx_data[2];
	  motor->para.v_int=(rx_data[3]<<4)|(rx_data[4]>>4);
	  motor->para.t_int=((rx_data[4]&0xF)<<8)|rx_data[5];
	  motor->para.pos = uint_to_float(motor->para.p_int, P_MIN6, P_MAX6, 16);
	  motor->para.vel = uint_to_float(motor->para.v_int, V_MIN6, V_MAX6, 12); 
	  motor->para.tor = uint_to_float(motor->para.t_int, T_MIN6, T_MAX6, 12); 
	  motor->para.Tmos = (float)(rx_data[6]);
	  motor->para.Tcoil = (float)(rx_data[7]);
	}
}

void dm6248p_fbdata(Joint_Motor_t *motor, uint8_t *rx_data,uint32_t data_len)
{ 
	if(data_len==FDCAN_DLC_BYTES_8)
	{//���ص�������8���ֽ�
	  motor->para.id = (rx_data[0])&0x0F;
	  motor->para.state = (rx_data[0])>>4;
	  motor->para.p_int=(rx_data[1]<<8)|rx_data[2];
	  motor->para.v_int=(rx_data[3]<<4)|(rx_data[4]>>4);
	  motor->para.t_int=((rx_data[4]&0xF)<<8)|rx_data[5];
	  motor->para.pos = uint_to_float(motor->para.p_int, P_MIN7, P_MAX7, 16);
	  motor->para.vel = uint_to_float(motor->para.v_int, V_MIN7, V_MAX7, 12); 
	  motor->para.tor = uint_to_float(motor->para.t_int, T_MIN7, T_MAX7, 12); 
	  motor->para.Tmos = (float)(rx_data[6]);
	  motor->para.Tcoil = (float)(rx_data[7]);
	}
}

//���ǲ�����λ��������Ƭ��������
void dm4310_fbdata_test(Joint_Motor_t *motor, uint8_t *rx_data)
{ 
	motor->para.p_int_test=(rx_data[2]<<8)|rx_data[3];
	 
	motor->para.v_int_test=(((int16_t)rx_data[4])<<4)|((rx_data[5]&0xF0)>>4);
							
	motor->para.kp_int_test=(((int16_t)(rx_data[5]&0x0F))<<8)|rx_data[6];
							
	motor->para.kd_int_test=(((int16_t)rx_data[7])<<4)|((rx_data[8]&0xF0)>>4);
							
	motor->para.t_int_test=(((int16_t)(rx_data[8]&0x0F))<<8)|rx_data[9];
							
	motor->para.pos_set = uint_to_float(motor->para.p_int_test, P_MIN1, P_MAX1, 16);
	motor->para.vel_set = uint_to_float(motor->para.v_int_test, V_MIN1, V_MAX1, 12); 
	motor->para.tor_set = uint_to_float(motor->para.t_int_test, T_MIN1, T_MAX1, 12);
	motor->para.kp_test = uint_to_float(motor->para.kp_int_test, KP_MIN1, KP_MAX1, 12);
	motor->para.kd_test = uint_to_float(motor->para.kd_int_test, KD_MIN1, KD_MAX1, 12);
}

void dm4340_fbdata_test(Joint_Motor_t *motor, uint8_t *rx_data)
{ 
	motor->para.p_int_test=(rx_data[2]<<8)|rx_data[3];
	 
	motor->para.v_int_test=(((int16_t)rx_data[4])<<4)|((rx_data[5]&0xF0)>>4);
							
	motor->para.kp_int_test=(((int16_t)(rx_data[5]&0x0F))<<8)|rx_data[6];
							
	motor->para.kd_int_test=(((int16_t)rx_data[7])<<4)|((rx_data[8]&0xF0)>>4);
							
	motor->para.t_int_test=(((int16_t)(rx_data[8]&0x0F))<<8)|rx_data[9];
							
	motor->para.pos_set = uint_to_float(motor->para.p_int_test, P_MIN2, P_MAX2, 16);
	motor->para.vel_set = uint_to_float(motor->para.v_int_test, V_MIN2, V_MAX2, 12); 
	motor->para.tor_set = uint_to_float(motor->para.t_int_test, T_MIN2, T_MAX2, 12);
	motor->para.kp_test = uint_to_float(motor->para.kp_int_test, KP_MIN2, KP_MAX2, 12);
	motor->para.kd_test = uint_to_float(motor->para.kd_int_test, KD_MIN2, KD_MAX2, 12); 
}

void dm6006_fbdata_test(Joint_Motor_t *motor, uint8_t *rx_data)
{ 
	motor->para.p_int_test=(rx_data[2]<<8)|rx_data[3];
	 
	motor->para.v_int_test=(((int16_t)rx_data[4])<<4)|((rx_data[5]&0xF0)>>4);
							
	motor->para.kp_int_test=(((int16_t)(rx_data[5]&0x0F))<<8)|rx_data[6];
							
	motor->para.kd_int_test=(((int16_t)rx_data[7])<<4)|((rx_data[8]&0xF0)>>4);
							
	motor->para.t_int_test=(((int16_t)(rx_data[8]&0x0F))<<8)|rx_data[9];
							
	motor->para.pos_set = uint_to_float(motor->para.p_int_test, P_MIN3, P_MAX3, 16);
	motor->para.vel_set = uint_to_float(motor->para.v_int_test, V_MIN3, V_MAX3, 12); 
	motor->para.tor_set = uint_to_float(motor->para.t_int_test, T_MIN3, T_MAX3, 12);
	motor->para.kp_test = uint_to_float(motor->para.kp_int_test, KP_MIN3, KP_MAX3, 12);
	motor->para.kd_test = uint_to_float(motor->para.kd_int_test, KD_MIN3, KD_MAX3, 12);
}

void dm8006_fbdata_test(Joint_Motor_t *motor, uint8_t *rx_data)
{ 
	motor->para.p_int_test=(rx_data[2]<<8)|rx_data[3];
	 
	motor->para.v_int_test=(((int16_t)rx_data[4])<<4)|((rx_data[5]&0xF0)>>4);
							
	motor->para.kp_int_test=(((int16_t)(rx_data[5]&0x0F))<<8)|rx_data[6];
							
	motor->para.kd_int_test=(((int16_t)rx_data[7])<<4)|((rx_data[8]&0xF0)>>4);
							
	motor->para.t_int_test=(((int16_t)(rx_data[8]&0x0F))<<8)|rx_data[9];
							
	motor->para.pos_set = uint_to_float(motor->para.p_int_test, P_MIN4, P_MAX4, 16);
	motor->para.vel_set = uint_to_float(motor->para.v_int_test, V_MIN4, V_MAX4, 12); 
	motor->para.tor_set = uint_to_float(motor->para.t_int_test, T_MIN4, T_MAX4, 12);
	motor->para.kp_test = uint_to_float(motor->para.kp_int_test, KP_MIN4, KP_MAX4, 12);
	motor->para.kd_test = uint_to_float(motor->para.kd_int_test, KD_MIN4, KD_MAX4, 12);
}

void dm10010l_fbdata_test(Joint_Motor_t *motor, uint8_t *rx_data)
{ 
	motor->para.p_int_test=(rx_data[2]<<8)|rx_data[3];
	 
	motor->para.v_int_test=(((int16_t)rx_data[4])<<4)|((rx_data[5]&0xF0)>>4);
							
	motor->para.kp_int_test=(((int16_t)(rx_data[5]&0x0F))<<8)|rx_data[6];
							
	motor->para.kd_int_test=(((int16_t)rx_data[7])<<4)|((rx_data[8]&0xF0)>>4);
							
	motor->para.t_int_test=(((int16_t)(rx_data[8]&0x0F))<<8)|rx_data[9];
							
	motor->para.pos_set = uint_to_float(motor->para.p_int_test, P_MIN6, P_MAX6, 16);
	motor->para.vel_set = uint_to_float(motor->para.v_int_test, V_MIN6, V_MAX6, 12); 
	motor->para.tor_set = uint_to_float(motor->para.t_int_test, T_MIN6, T_MAX6, 12);
	motor->para.kp_test = uint_to_float(motor->para.kp_int_test, KP_MIN6, KP_MAX6, 12);
	motor->para.kd_test = uint_to_float(motor->para.kd_int_test, KD_MIN6, KD_MAX6, 12);
}

void dm6248p_fbdata_test(Joint_Motor_t *motor, uint8_t *rx_data)
{ 
	motor->para.p_int_test=(rx_data[2]<<8)|rx_data[3];
	 
	motor->para.v_int_test=(((int16_t)rx_data[4])<<4)|((rx_data[5]&0xF0)>>4);
							
	motor->para.kp_int_test=(((int16_t)(rx_data[5]&0x0F))<<8)|rx_data[6];
							
	motor->para.kd_int_test=(((int16_t)rx_data[7])<<4)|((rx_data[8]&0xF0)>>4);
							
	motor->para.t_int_test=(((int16_t)(rx_data[8]&0x0F))<<8)|rx_data[9];
							
	motor->para.pos_set = uint_to_float(motor->para.p_int_test, P_MIN7, P_MAX7, 16);
	motor->para.vel_set = uint_to_float(motor->para.v_int_test, V_MIN7, V_MAX7, 12); 
	motor->para.tor_set = uint_to_float(motor->para.t_int_test, T_MIN7, T_MAX7, 12);
	motor->para.kp_test = uint_to_float(motor->para.kp_int_test, KP_MIN7, KP_MAX7, 12);
	motor->para.kd_test = uint_to_float(motor->para.kd_int_test, KD_MIN7, KD_MAX7, 12);
}

void enable_motor_mode(hcan_t* hcan, uint16_t motor_id, uint16_t mode_id)
{
	uint8_t data[8];
	uint16_t id = motor_id + mode_id;
	
	data[0] = 0xFF;
	data[1] = 0xFF;
	data[2] = 0xFF;
	data[3] = 0xFF;
	data[4] = 0xFF;
	data[5] = 0xFF;
	data[6] = 0xFF;
	data[7] = 0xFC;
	
	canx_send_data(hcan, id, data, 8);
}

void save_motor_zero(hcan_t* hcan, uint16_t motor_id, uint16_t mode_id)
{
	uint8_t data[8];
	uint16_t id = motor_id + mode_id;
	
	data[0] = 0xFF;
	data[1] = 0xFF;
	data[2] = 0xFF;
	data[3] = 0xFF;
	data[4] = 0xFF;
	data[5] = 0xFF;
	data[6] = 0xFF;
	data[7] = 0xFE;
	
	canx_send_data(hcan, id, data, 8);
}


/**
************************************************************************
* @brief:      	disable_motor_mode: ���õ��ģʽ����
* @param[in]:   hcan:     ָ��CAN_HandleTypeDef�ṹ��ָ��
* @param[in]:   motor_id: ���ID��ָ��Ŀ����
* @param[in]:   mode_id:  ģʽID��ָ��Ҫ���õ�ģʽ
* @retval:     	void
* @details:    	ͨ��CAN�������ض�������ͽ����ض�ģʽ������
************************************************************************
**/
void disable_motor_mode(hcan_t* hcan, uint16_t motor_id, uint16_t mode_id)
{
	uint8_t data[8];
	uint16_t id = motor_id + mode_id;
	
	data[0] = 0xFF;
	data[1] = 0xFF;
	data[2] = 0xFF;
	data[3] = 0xFF;
	data[4] = 0xFF;
	data[5] = 0xFF;
	data[6] = 0xFF;
	data[7] = 0xFD;
	
	canx_send_data(hcan, id, data, 8);
}

/**
************************************************************************
* @brief:      	mit_ctrl: MITģʽ�µĵ�����ƺ���
* @param[in]:   hcan:			ָ��CAN_HandleTypeDef�ṹ��ָ�룬����ָ��CAN����
* @param[in]:   motor_id:	���ID��ָ��Ŀ����
* @param[in]:   pos:			λ�ø���ֵ
* @param[in]:   vel:			�ٶȸ���ֵ
* @param[in]:   kp:				λ�ñ���ϵ��
* @param[in]:   kd:				λ��΢��ϵ��
* @param[in]:   torq:			ת�ظ���ֵ
* @retval:     	void
* @details:    	ͨ��CAN������������MITģʽ�µĿ���֡��
************************************************************************
**/
void mit_ctrl(hcan_t* hcan, uint16_t motor_id, float pos, float vel,float kp, float kd, float torq)
{
	uint8_t data[8];
	uint16_t pos_tmp,vel_tmp,kp_tmp,kd_tmp,tor_tmp;
	uint16_t id = motor_id + MIT_MODE;

	pos_tmp = float_to_uint(pos,  P_MIN1,  P_MAX1,  16);
	vel_tmp = float_to_uint(vel,  V_MIN1,  V_MAX1,  12);
	kp_tmp  = float_to_uint(kp,   KP_MIN1, KP_MAX1, 12);
	kd_tmp  = float_to_uint(kd,   KD_MIN1, KD_MAX1, 12);
	tor_tmp = float_to_uint(torq, T_MIN1,  T_MAX1,  12);

	data[0] = (pos_tmp >> 8);
	data[1] = pos_tmp;
	data[2] = (vel_tmp >> 4);
	data[3] = ((vel_tmp&0xF)<<4)|(kp_tmp>>8);
	data[4] = kp_tmp;
	data[5] = (kd_tmp >> 4);
	data[6] = ((kd_tmp&0xF)<<4)|(tor_tmp>>8);
	data[7] = tor_tmp;
	
	canx_send_data(hcan, id, data, 8);
}
/**
************************************************************************
* @brief:      	pos_speed_ctrl: λ���ٶȿ��ƺ���
* @param[in]:   hcan:			ָ��CAN_HandleTypeDef�ṹ��ָ�룬����ָ��CAN����
* @param[in]:   motor_id:	���ID��ָ��Ŀ����
* @param[in]:   vel:			�ٶȸ���ֵ
* @retval:     	void
* @details:    	ͨ��CAN������������λ���ٶȿ�������
************************************************************************
**/
void pos_speed_ctrl(hcan_t* hcan,uint16_t motor_id, float pos, float vel)
{
	uint16_t id;
	uint8_t *pbuf, *vbuf;
	uint8_t data[8];
	
	id = motor_id + POS_MODE;
	pbuf=(uint8_t*)&pos;
	vbuf=(uint8_t*)&vel;
	
	data[0] = *pbuf;
	data[1] = *(pbuf+1);
	data[2] = *(pbuf+2);
	data[3] = *(pbuf+3);

	data[4] = *vbuf;
	data[5] = *(vbuf+1);
	data[6] = *(vbuf+2);
	data[7] = *(vbuf+3);
	
	canx_send_data(hcan, id, data, 8);
}
/**
************************************************************************
* @brief:      	speed_ctrl: �ٶȿ��ƺ���
* @param[in]:   hcan: 		ָ��CAN_HandleTypeDef�ṹ��ָ�룬����ָ��CAN����
* @param[in]:   motor_id: ���ID��ָ��Ŀ����
* @param[in]:   vel: 			�ٶȸ���ֵ
* @retval:     	void
* @details:    	ͨ��CAN�������������ٶȿ�������
************************************************************************
**/
void speed_ctrl(hcan_t* hcan,uint16_t motor_id, float vel)
{
	uint16_t id;
	uint8_t *vbuf;
	uint8_t data[4];
	
	id = motor_id + SPEED_MODE;
	vbuf=(uint8_t*)&vel;
	
	data[0] = *vbuf;
	data[1] = *(vbuf+1);
	data[2] = *(vbuf+2);
	data[3] = *(vbuf+3);
	
	canx_send_data(hcan, id, data, 4);
}


//4340
void mit_ctrl2(hcan_t* hcan, uint16_t motor_id, float pos, float vel,float kp, float kd, float torq)
{
	uint8_t data[8];
	uint16_t pos_tmp,vel_tmp,kp_tmp,kd_tmp,tor_tmp;
	uint16_t id = motor_id + MIT_MODE;

	pos_tmp = float_to_uint(pos,  P_MIN2,  P_MAX2,  16);
	vel_tmp = float_to_uint(vel,  V_MIN2,  V_MAX2,  12);
	kp_tmp  = float_to_uint(kp,   KP_MIN2, KP_MAX2, 12);
	kd_tmp  = float_to_uint(kd,   KD_MIN2, KD_MAX2, 12);
	tor_tmp = float_to_uint(torq, T_MIN2,  T_MAX2,  12);

	data[0] = (pos_tmp >> 8);
	data[1] = pos_tmp;
	data[2] = (vel_tmp >> 4);
	data[3] = ((vel_tmp&0xF)<<4)|(kp_tmp>>8);
	data[4] = kp_tmp;
	data[5] = (kd_tmp >> 4);
	data[6] = ((kd_tmp&0xF)<<4)|(tor_tmp>>8);
	data[7] = tor_tmp;
	
	canx_send_data(hcan, id, data, 8);
}


//6006
void mit_ctrl3(hcan_t* hcan, uint16_t motor_id, float pos, float vel,float kp, float kd, float torq)
{
	uint8_t data[8];
	uint16_t pos_tmp,vel_tmp,kp_tmp,kd_tmp,tor_tmp;
	uint16_t id = motor_id + MIT_MODE;

	pos_tmp = float_to_uint(pos,  P_MIN3,  P_MAX3,  16);
	vel_tmp = float_to_uint(vel,  V_MIN3,  V_MAX3,  12);
	kp_tmp  = float_to_uint(kp,   KP_MIN3, KP_MAX3, 12);
	kd_tmp  = float_to_uint(kd,   KD_MIN3, KD_MAX3, 12);
	tor_tmp = float_to_uint(torq, T_MIN3,  T_MAX3,  12);

	data[0] = (pos_tmp >> 8);
	data[1] = pos_tmp;
	data[2] = (vel_tmp >> 4);
	data[3] = ((vel_tmp&0xF)<<4)|(kp_tmp>>8);
	data[4] = kp_tmp;
	data[5] = (kd_tmp >> 4);
	data[6] = ((kd_tmp&0xF)<<4)|(tor_tmp>>8);
	data[7] = tor_tmp;
	
	canx_send_data(hcan, id, data, 8);
}

//8006
void mit_ctrl4(hcan_t* hcan, uint16_t motor_id, float pos, float vel,float kp, float kd, float torq)
{
	uint8_t data[8];
	uint16_t pos_tmp,vel_tmp,kp_tmp,kd_tmp,tor_tmp;
	uint16_t id = motor_id + MIT_MODE;

	pos_tmp = float_to_uint(pos,  P_MIN4,  P_MAX4,  16);
	vel_tmp = float_to_uint(vel,  V_MIN4,  V_MAX4,  12);
	kp_tmp  = float_to_uint(kp,   KP_MIN4, KP_MAX4, 12);
	kd_tmp  = float_to_uint(kd,   KD_MIN4, KD_MAX4, 12);
	tor_tmp = float_to_uint(torq, T_MIN4,  T_MAX4,  12);

	data[0] = (pos_tmp >> 8);
	data[1] = pos_tmp;
	data[2] = (vel_tmp >> 4);
	data[3] = ((vel_tmp&0xF)<<4)|(kp_tmp>>8);
	data[4] = kp_tmp;
	data[5] = (kd_tmp >> 4);
	data[6] = ((kd_tmp&0xF)<<4)|(tor_tmp>>8);
	data[7] = tor_tmp;
	
	canx_send_data(hcan, id, data, 8);
}

//3507
void mit_ctrl5(hcan_t* hcan, uint16_t motor_id, float pos, float vel,float kp, float kd, float torq)
{
	uint8_t data[8];
	uint16_t pos_tmp,vel_tmp,kp_tmp,kd_tmp,tor_tmp;
	uint16_t id = motor_id + MIT_MODE;

	pos_tmp = float_to_uint(pos,  P_MIN5,  P_MAX5,  16);
	vel_tmp = float_to_uint(vel,  V_MIN5,  V_MAX5,  12);
	kp_tmp  = float_to_uint(kp,   KP_MIN5, KP_MAX5, 12);
	kd_tmp  = float_to_uint(kd,   KD_MIN5, KD_MAX5, 12);
	tor_tmp = float_to_uint(torq, T_MIN5,  T_MAX5,  12);

	data[0] = (pos_tmp >> 8);
	data[1] = pos_tmp;
	data[2] = (vel_tmp >> 4);
	data[3] = ((vel_tmp&0xF)<<4)|(kp_tmp>>8);
	data[4] = kp_tmp;
	data[5] = (kd_tmp >> 4);
	data[6] = ((kd_tmp&0xF)<<4)|(tor_tmp>>8);
	data[7] = tor_tmp;
	
	canx_send_data(hcan, id, data, 8);
}


void mit_ctrl_test(hcan_t* hcan, uint16_t motor_id,Joint_Motor_t *motor)
{
	uint8_t data[8];
	uint16_t pos_tmp,vel_tmp,kp_tmp,kd_tmp,tor_tmp;
	uint16_t id = motor_id + MIT_MODE;

	pos_tmp = motor->para.p_int_test;
	vel_tmp = motor->para.v_int_test;
	kp_tmp  = motor->para.kp_int_test;
	kd_tmp  = motor->para.kd_int_test;
	tor_tmp = motor->para.t_int_test;

	data[0] = (pos_tmp >> 8);
	data[1] = pos_tmp;
	data[2] = (vel_tmp >> 4);
	data[3] = ((vel_tmp&0xF)<<4)|(kp_tmp>>8);
	data[4] = kp_tmp;
	data[5] = (kd_tmp >> 4);
	data[6] = ((kd_tmp&0xF)<<4)|(tor_tmp>>8);
	data[7] = tor_tmp;
	
	canx_send_data(hcan, id, data, 8);
}

//һ��ʼ��ʼ������Ȼ��ֵ��Ϊ0
void dm4310_fbdata_init(Joint_Motor_t *motor)
{
  motor->para.p_int_test = float_to_uint(0.0f,  P_MIN1,  P_MAX1,  16);
	motor->para.v_int_test = float_to_uint(0.0f,  V_MIN1,  V_MAX1,  12);
	motor->para.kp_int_test  = float_to_uint(0.0f,   KP_MIN1, KP_MAX1, 12);
	motor->para.kd_int_test  = float_to_uint(0.0f,   KD_MIN1, KD_MAX1, 12);
	motor->para.t_int_test = float_to_uint(0.0f, T_MIN1,  T_MAX1,  12);
}


void dm4340_fbdata_init(Joint_Motor_t *motor)
{
  motor->para.p_int_test = float_to_uint(0.0f,  P_MIN2,  P_MAX2,  16);
	motor->para.v_int_test = float_to_uint(0.0f,  V_MIN2,  V_MAX2,  12);
	motor->para.kp_int_test  = float_to_uint(0.0f,   KP_MIN2, KP_MAX2, 12);
	motor->para.kd_int_test  = float_to_uint(0.0f,   KD_MIN2, KD_MAX2, 12);
	motor->para.t_int_test = float_to_uint(0.0f, T_MIN2,  T_MAX2,  12);
}

void dm6006_fbdata_init(Joint_Motor_t *motor)
{
  motor->para.p_int_test = float_to_uint(0.0f,  P_MIN3,  P_MAX3,  16);
	motor->para.v_int_test = float_to_uint(0.0f,  V_MIN3,  V_MAX3,  12);
	motor->para.kp_int_test  = float_to_uint(0.0f,   KP_MIN3, KP_MAX3, 12);
	motor->para.kd_int_test  = float_to_uint(0.0f,   KD_MIN3, KD_MAX3, 12);
	motor->para.t_int_test = float_to_uint(0.0f, T_MIN3,  T_MAX3,  12);
}

void dm8006_fbdata_init(Joint_Motor_t *motor)
{
  motor->para.p_int_test = float_to_uint(0.0f,  P_MIN4,  P_MAX4,  16);
	motor->para.v_int_test = float_to_uint(0.0f,  V_MIN4,  V_MAX4,  12);
	motor->para.kp_int_test  = float_to_uint(0.0f,   KP_MIN4, KP_MAX4, 12);
	motor->para.kd_int_test  = float_to_uint(0.0f,   KD_MIN4, KD_MAX4, 12);
	motor->para.t_int_test = float_to_uint(0.0f, T_MIN4,  T_MAX4,  12);
}

void dm10010l_fbdata_init(Joint_Motor_t *motor)
{
  motor->para.p_int_test = float_to_uint(0.0f,  P_MIN6,  P_MAX6,  16);
	motor->para.v_int_test = float_to_uint(0.0f,  V_MIN6,  V_MAX6,  12);
	motor->para.kp_int_test  = float_to_uint(0.0f,   KP_MIN6, KP_MAX6, 12);
	motor->para.kd_int_test  = float_to_uint(0.0f,   KD_MIN6, KD_MAX6, 12);
	motor->para.t_int_test = float_to_uint(0.0f, T_MIN6,  T_MAX6,  12);
}

void dm6248p_fbdata_init(Joint_Motor_t *motor)
{
  motor->para.p_int_test = float_to_uint(0.0f,  P_MIN7,  P_MAX7,  16);
	motor->para.v_int_test = float_to_uint(0.0f,  V_MIN7,  V_MAX7,  12);
	motor->para.kp_int_test  = float_to_uint(0.0f,   KP_MIN7, KP_MAX7, 12);
	motor->para.kd_int_test  = float_to_uint(0.0f,   KD_MIN7, KD_MAX7, 12);
	motor->para.t_int_test = float_to_uint(0.0f, T_MIN7,  T_MAX7,  12);
}
