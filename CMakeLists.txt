cmake_minimum_required(VERSION 3.13.1)

set(BOARD nucleo_f429zi)

include($ENV{ZEPHYR_BASE}/cmake/app/boilerplate.cmake NO_POLICY_SCOPE)
project(stm32f429zi-dev)

add_subdirectory(src)