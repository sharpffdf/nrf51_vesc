CMAKE_MINIMUM_REQUIRED (VERSION 3.1)
PROJECT(nrf51822_xxac)  # 项目名

# CC AR LD AS
SET (CMAKE_C_COMPILER "arm-none-eabi-gcc")
SET (CMAKE_C_AR "arm-none-eabi-ar")
SET (CMAKE_ASM_COMPILER "arm-none-eabi-gcc")
# STDLIB
SET (CMAKE_SHARED_LIBRARY_LINK_C_FLAGS)

ENABLE_LANGUAGE(ASM)

SET(PRJ_ROOT ${nrf51822_xxac_SOURCE_DIR})
# SET(SDK_ROOT /home/lf/dev/tools/nRF5SDK1300)
# SET(SDK_ROOT /home/lf/dev/tools/nRF5SDK1310)
SET(SDK_ROOT /home/lf/dev/tools/nRF5SDK1220)
MESSAGE(STATUS "This is PRJ_ROOT " ${PRJ_ROOT})
MESSAGE(STATUS "This is SDK_ROOT " ${SDK_ROOT})

# head file
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/comp)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/twi_master)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_ancs_c)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_ias_c)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/softdevice/s130/headers)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/pwm)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/usbd/class/cdc/acm)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/usbd/class/hid/generic)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/usbd/class/msc)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/usbd/class/hid)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/log)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_gls)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/fstorage)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/i2s)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/gpiote)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/gpiote)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/fifo)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/boards)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/common)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_advertising)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/adc)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/softdevice/s130/headers/nrf51)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_bas_c)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_hrs_c)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/queue)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_dtm)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/toolchain/cmsis/include)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_rscs_c)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/uart)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/common)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_lls)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/wdt)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/bsp)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_bas)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/experimental_section_vars)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_ans_c)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/slip)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/mem_manager)
INCLUDE_DIRECTORIES(${SDK_ROOT}/external/segger_rtt)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/csense_drv)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/hal)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_nus_c)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/rtc)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_ias)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/usbd/class/hid/mouse)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/ppi)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_dfu)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/twis_slave)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/scheduler)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_lbs)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_hts)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/delay)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/crc16)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/timer)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/util)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/pwm)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/usbd/class/cdc)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/csense)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/rng)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/low_power_pwm)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/hardfault)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_cscs)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/uart)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/hci)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/usbd/class/hid/kbd)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/spi_slave)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/lpcomp)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/timer)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/power)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/usbd/config)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/toolchain)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/led_softblink)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/qdec)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_cts_c)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/spi_master)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_nus)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_hids)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/pdm)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/crc32)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/usbd/class/audio)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/peer_manager)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/swi)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_tps)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_dis)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/device)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/nrf_ble_qwr)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/button)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/usbd)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/saadc)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_lbs_c)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_racp)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/toolchain/gcc)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/fds)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/twi)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/clock)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_rscs)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/drivers_nrf/usbd)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/softdevice/common/softdevice_handler)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/ble/ble_services/ble_hrs)
INCLUDE_DIRECTORIES(${SDK_ROOT}/components/libraries/log/src)
INCLUDE_DIRECTORIES(${PRJ_ROOT})

# source file
SET(SDK_LIST 
  ${SDK_ROOT}/components/libraries/log/src/nrf_log_backend_serial.c
  ${SDK_ROOT}/components/libraries/log/src/nrf_log_frontend.c
  ${SDK_ROOT}/components/libraries/button/app_button.c
  ${SDK_ROOT}/components/libraries/util/app_error.c
  ${SDK_ROOT}/components/libraries/util/app_error_weak.c
  ${SDK_ROOT}/components/libraries/fifo/app_fifo.c
  ${SDK_ROOT}/components/libraries/timer/app_timer.c
  ${SDK_ROOT}/components/libraries/uart/app_uart_fifo.c
  ${SDK_ROOT}/components/libraries/util/app_util_platform.c
  ${SDK_ROOT}/components/libraries/fstorage/fstorage.c
  ${SDK_ROOT}/components/libraries/hardfault/hardfault_implementation.c
  ${SDK_ROOT}/components/libraries/util/nrf_assert.c
  ${SDK_ROOT}/components/libraries/uart/retarget.c
  ${SDK_ROOT}/components/libraries/util/sdk_errors.c
  ${SDK_ROOT}/components/boards/boards.c
  ${SDK_ROOT}/components/drivers_nrf/clock/nrf_drv_clock.c
  ${SDK_ROOT}/components/drivers_nrf/common/nrf_drv_common.c
  ${SDK_ROOT}/components/drivers_nrf/gpiote/nrf_drv_gpiote.c
  ${SDK_ROOT}/components/drivers_nrf/uart/nrf_drv_uart.c
  ${SDK_ROOT}/components/libraries/bsp/bsp.c
  ${SDK_ROOT}/components/libraries/bsp/bsp_btn_ble.c
  ${SDK_ROOT}/components/libraries/bsp/bsp_nfc.c
  ${SDK_ROOT}/external/segger_rtt/RTT_Syscalls_GCC.c
  ${SDK_ROOT}/external/segger_rtt/SEGGER_RTT.c
  ${SDK_ROOT}/external/segger_rtt/SEGGER_RTT_printf.c
  ${SDK_ROOT}/components/ble/common/ble_advdata.c
  ${SDK_ROOT}/components/ble/ble_advertising/ble_advertising.c
  ${SDK_ROOT}/components/ble/common/ble_conn_params.c
  ${SDK_ROOT}/components/ble/common/ble_srv_common.c
  ${SDK_ROOT}/components/toolchain/system_nrf51.c
  ${SDK_ROOT}/components/ble/ble_services/ble_nus/ble_nus.c
  ${SDK_ROOT}/components/softdevice/common/softdevice_handler/softdevice_handler.c
  )


  

# MESSAGE("-----> ${SDK_LIST}")
SET(PRJ_LIST 
  ${PRJ_ROOT}/main.c
  ${PRJ_ROOT}/crc.c
  ${PRJ_ROOT}/packet.c
  )

SET (STARTUP ${SDK_ROOT}/components/toolchain/gcc/gcc_startup_nrf51.S)

IF(gitver)
SET (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DGIT_VER=${gitver}")
ELSE()
message(FATAL_ERROR "git version is not defined")
ENDIF()

# C flags common to all targets
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DBOARD_PCA10028")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DSOFTDEVICE_PRESENT")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DNRF51")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DS130")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DBLE_STACK_SUPPORT_REQD")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DSWI_DISABLE0")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DNRF51822")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DNRF_SD_BLE_API_VERSION=2")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mcpu=cortex-m0")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mthumb -mabi=aapcs")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -O3 -g3")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mfloat-abi=soft")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c99")
# SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")

# keep every function in separate section, this allows linker to discard unused ones
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -ffunction-sections -fdata-sections -fno-strict-aliasing")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fno-builtin --short-enums")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -gdwarf-2")

SET(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -x assembler-with-cpp")
SET(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -DBOARD_PCA10028")
SET(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -DSOFTDEVICE_PRESENT")
SET(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -DNRF51")
SET(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -DS130")
SET(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -DBLE_STACK_SUPPORT_REQD")
SET(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -DSWI_DISABLE0")
SET(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -DNRF51822")
SET(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -DNRF_SD_BLE_API_VERSION=2")

# ld
SET (LINKER_SCRIPT ${PRJ_ROOT}/ble_app_uart_gcc_nrf51.ld)  
SET (LD_PATH ${SDK_ROOT}/components/toolchain/gcc)

# SET (TEMPLATE_PATH ${SDK_ROOT}/components/toolchain/gcc)
# SET (TEMPLATE_FILE1 ${TEMPLATE_PATH}/Makefile.common)
# INCLUDE(${TEMPLATE_FILE1})

SET (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Os -g -mthumb -mabi=aapcs -L ${LD_PATH} -T ${LINKER_SCRIPT}")
SET (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -mcpu=cortex-m0")
SET (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,--gc-sections,-Map,${CMAKE_PROJECT_NAME}.map")
SET (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} --specs=nano.specs -lc -lnosys")

# MESSAGE(STATUS "This is CFLAGS " ${CMAKE_C_FLAGS})
# MESSAGE(STATUS "This is SDK_LIST " ${SDK_LIST})
# MESSAGE(STATUS "This is LINKER_SCRIPT " ${LINKER_SCRIPT})
# MESSAGE(STATUS "This is PROJECT_BINARY_DIR " ${PROJECT_BINARY_DIR})

ADD_EXECUTABLE(${CMAKE_PROJECT_NAME}.elf ${PRJ_LIST} ${SDK_LIST} ${STARTUP})

# Link the standard library to the target
# TARGET_LINK_LIBRARIES (${CMAKE_PROJECT_NAME}.elf libm.a)
# TARGET_LINK_LIBRARIES (${CMAKE_PROJECT_NAME}.elf libgcc.a)

ADD_CUSTOM_TARGET (${CMAKE_PROJECT_NAME}.hex ALL arm-none-eabi-objcopy -Oihex "${PROJECT_BINARY_DIR}/${CMAKE_PROJECT_NAME}.elf" "${PROJECT_BINARY_DIR}/${CMAKE_PROJECT_NAME}.hex" DEPENDS ${PROJECT_BINARY_DIR}/${CMAKE_PROJECT_NAME}.elf)
ADD_CUSTOM_TARGET (${CMAKE_PROJECT_NAME}.bin ALL arm-none-eabi-objcopy -Obinary "${PROJECT_BINARY_DIR}/${CMAKE_PROJECT_NAME}.elf" "${PROJECT_BINARY_DIR}/${CMAKE_PROJECT_NAME}.bin" DEPENDS ${PROJECT_BINARY_DIR}/${CMAKE_PROJECT_NAME}.elf)
ADD_CUSTOM_TARGET(size ALL arm-none-eabi-size "${PROJECT_BINARY_DIR}/${CMAKE_PROJECT_NAME}.elf" DEPENDS ${PROJECT_BINARY_DIR}/${CMAKE_PROJECT_NAME}.elf)
