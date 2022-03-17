# Reference project for developping on `nucleo_stm32f429zi`

## Prerequisites

- `nucleo_stm32f429zi`
- `Zephyr RTOS` with `west`
- `VS Code`

## Commands

- Build with `west build`
- Flash with `west flash --serial {$serialNumber}`
- Monitor with `screen /dev/ttyACM0 115200`
- Debug with F5

![](./pics/debug.png)