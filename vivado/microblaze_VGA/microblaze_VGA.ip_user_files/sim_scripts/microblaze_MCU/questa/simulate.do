onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib microblaze_MCU_opt

do {wave.do}

view wave
view structure
view signals

do {microblaze_MCU.udo}

run -all

quit -force
