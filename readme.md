# Reference project for developping on `nucleo_stm32f429zi`

- See : https://github.com/lucasdietrich/AVRTOS/commit/d0cf617db99931dfa41274301123bbdaff74aed1

## Prerequisites

- `nucleo_stm32f429zi`
- `Zephyr RTOS` with `west`
- `VS Code`

## Development

Generated files :
- [./build/zephyr/zephyr.dts](./build/zephyr/zephyr.dts)
- [./build/zephyr/include/generated/autoconf.h](./build/zephyr/include/generated/autoconf.h)

## Commands

- Build with `west build`
- Flash with `west flash --serial {$serialNumber}`
- Monitor with `screen /dev/ttyACM0 115200`

## Debug

There are two methods of debug currently

- One  based on extension for VS code which uses `gdb`, `stutil` (from ST), this method is very slow.
  - Run with `F5` with profile `cortex-debug stutil`
- Another is based on `gdb` and `openocd`, which is faster but doesn't provide specific support for ARM cortex cores (like registers, etc...)
  - Run `west debugserver` and then `F5` with profile `cppdbg OpenOCD (west debugserver)`
- **TODO**, the goal is to use the `cortex-debug` extension from VS code with `openocd`, but I'm experiencing some issues.
  - Run `west debugserver` and then `F5` with profile `cortex-debug OpenOCD (west debugserver)`
  - Issues encountered :

![](./pics/debug.png)