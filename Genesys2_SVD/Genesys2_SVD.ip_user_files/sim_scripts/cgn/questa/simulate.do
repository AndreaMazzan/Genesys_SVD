onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib temac_gbe_v9_0_rgmii_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {temac_gbe_v9_0_rgmii.udo}

run 1000ns

quit -force
