onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rom5_opt

do {wave.do}

view wave
view structure
view signals

do {rom5.udo}

run -all

quit -force
