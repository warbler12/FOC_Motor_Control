import serial
import serial.tools.list_ports
import time
import functools

FRAME_HEADER = 0x7B
CHECKSUM_MODE = "xor"  # "xor" 或 "sum"

def checksum(bytes_like):
    if CHECKSUM_MODE == "xor":
        return functools.reduce(lambda a, b: a ^ b, bytes_like)
    elif CHECKSUM_MODE == "sum":
        return sum(bytes_like) & 0xFF
    else:
        raise ValueError("Unknown CHECKSUM_MODE")

def make_packet(motor_id, payload8):
    if len(payload8) != 8:
        raise ValueError("payload must be 8 bytes")
    pkt10 = bytearray(10)
    pkt10[0] = FRAME_HEADER
    pkt10[1] = motor_id
    pkt10[2:10] = payload8
    cks = checksum(pkt10)
    return pkt10 + bytes([cks])

def choose_port():
    ports = serial.tools.list_ports.comports()
    if not ports:
        raise RuntimeError("No COM ports found")
    for i, p in enumerate(ports):
        print(f"{i}: {p.device} - {p.description}")
    idx = int(input("Select index: "))
    return ports[idx].device

def main():
    port = choose_port()
    ser = serial.Serial(port, 921600, timeout=0)
    print(f"Opened {port}")

    # ====== 例子1：锁定一个ID持续发（推荐先这样）======
    single_id_mode = True
    # motor_id = 8  # 先试1号；不动就试2/3/…/14
    # # 下面这个 payload 要按你的固件解析格式来填
    # # 假设: pos, vel, kp, kd 各 2字节（仅示例）
    # payload = [
    #     0x7F, 0xFF,  # pos (示例)
    #     0x82, 0x80,  # vel
    #     0x00, 0x33,  # kp  (非零)
    #     0x38, 0x09,  # kd  (非零)
    # ]
    motor_id = 1  # 先试1号；不动就试2/3/…/14
    # 下面这个 payload 要按你的固件解析格式来填
    # 假设: pos, vel, kp, kd 各 2字节（仅示例）
    payload = [
        0x7F, 0xFF,  # pos (示例)
        0x84, 0x30,  # vel
        0x00, 0x33,  # kp  (非零)
        0x38, 0xCC,  # kd  (非零)
    ]
    packet_single = make_packet(motor_id, payload)

    # ====== 例子2：扫 ID（一次一帧依次发）======
    sweep_mode = False
    payload_sweep = payload  # 也可不同

    try:
        t0 = time.time()
        while True:
            if single_id_mode:
                ser.write(packet_single)
                # 打印发送节流：每 0.5 s 打印一次
                if time.time() - t0 > 0.5:
                    print(f"TX -> id={motor_id}, bytes={packet_single.hex(' ')}")
                    t0 = time.time()
                time.sleep(0.01)  # 100Hz
            elif sweep_mode:
                for mid in range(1, 15):  # 1..14
                    pkt = make_packet(mid, payload_sweep)
                    ser.write(pkt)
                    print(f"TX -> id={mid}, bytes={pkt.hex(' ')}")
                    time.sleep(0.02)       # 50Hz 总发频率
            else:
                time.sleep(0.1)

    except KeyboardInterrupt:
        pass
    finally:
        ser.close()
        print("Closed.")

if __name__ == "__main__":
    main()