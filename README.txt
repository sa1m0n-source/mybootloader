This project is based on ARM MCU
Using QEMU for simulation, and GDB for debug
The boot flow is described as below:
Power on -> CPU reset -> vector table -> Reset Handler -> startup.S -> init main -> main()
