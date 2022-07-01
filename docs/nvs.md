# NVS

- https://docs.zephyrproject.org/latest/services/storage/nvs/nvs.html#flash-wear

Expected result :

```
*** Booting Zephyr OS build zephyr-v2.7.2  ***
[00:00:00.004,000] <dbg> fs_nvs.nvs_recover_last_ate: Recovering last ate from sector 0
[00:00:00.029,000] <inf> fs_nvs: 4 Sectors of 16384 bytes
[00:00:00.034,000] <inf> fs_nvs: alloc wra: 0, 3fd0
[00:00:00.040,000] <inf> fs_nvs: data wra: 0, 3c
[00:00:00.045,000] <inf> main: Free space: bfc8 bytes

[00:00:00.050,000] <inf> main: NVS Ready 0
[00:00:00.055,000] <inf> main: nvs_read(... , 0U, ... , 24) = 24
[00:00:00.061,000] <inf> main: data1
                               49 65 6c 6c 6f 20 57 6f  72 6c 64 21 00 00 00 00 |Iello Wo rld!....
                               00 ed 00 00 00 ed 00 e0                          |........
[00:00:00.082,000] <inf> main: nvs_write(... , 0U, ... , 24) = 0
[00:00:00.089,000] <inf> main: nvs_read_hist(... , 0U, ... , 24, 1) = 18
[00:00:00.096,000] <inf> main: data1
                               49 65 6c 6c 6f 20 57 6f  72 6c 64 21 00 00 00 00 |Iello Wo rld!....
                               00 ed 00 00 00 ed 00 e0                          |........
[00:00:00.117,000] <inf> main: Application starting 0
```