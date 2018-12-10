connect -url tcp:127.0.0.1:3121
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Arty 210319754849A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Arty 210319754849A"} -index 0
dow D:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/CSL/HF/Lab/AXI_DMA_Lab/AXI_DMA_Lab.sdk/Snake/Debug/Snake.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Arty 210319754849A"} -index 0
con
