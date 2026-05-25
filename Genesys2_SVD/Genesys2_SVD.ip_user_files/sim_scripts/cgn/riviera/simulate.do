transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+temac_gbe_v9_0_rgmii  -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.temac_gbe_v9_0_rgmii xil_defaultlib.glbl

do {temac_gbe_v9_0_rgmii.udo}

run 1000ns

endsim

quit -force
