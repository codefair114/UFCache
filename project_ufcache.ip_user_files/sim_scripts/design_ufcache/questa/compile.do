vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/design_ufcache/ip/design_ufcache_ARM_CPU_0_0/sim/design_ufcache_ARM_CPU_0_0.v" \
"../../../bd/design_ufcache/ip/design_ufcache_Data_Memory_0_0/sim/design_ufcache_Data_Memory_0_0.v" \
"../../../bd/design_ufcache/ip/design_ufcache_IC_0_0/sim/design_ufcache_IC_0_0.v" \
"../../../bd/design_ufcache/sim/design_ufcache.v" \
"../../../bd/design_ufcache/ip/design_ufcache_check_0_0/sim/design_ufcache_check_0_0.v" \
"../../../bd/design_ufcache/ip/design_ufcache_hcm_0_1/sim/design_ufcache_hcm_0_1.v" \
"../../../bd/design_ufcache/ip/design_ufcache_C_0_0/sim/design_ufcache_C_0_0.v" \
"../../../bd/design_ufcache/ip/design_ufcache_C_1_0/sim/design_ufcache_C_1_0.v" \
"../../../bd/design_ufcache/ip/design_ufcache_C_2_0/sim/design_ufcache_C_2_0.v" \
"../../../bd/design_ufcache/ip/design_ufcache_C_3_0/sim/design_ufcache_C_3_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

