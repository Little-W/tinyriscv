目的：
安路EG4系列FPGA，是目前网上能买到的资源丰富，且高性价比的国产FPGA；EG4系列开发板只需100+即可买到。
工作：
1：移植BRAM分支到安路EG4系列FPGA上，使用安路IDE提供的IP核（PLL，BRAM），支撑EG4所有型号。
2：使用了EG4S的16块32K_BRAM作为tinyriscv的ROM，使用了EG4S的64块9K_BRAM作为tinyriscv的RAM。即ROM：65.5KB，RAM：65.5KB。
3：适配yadanFPGA开发板（EG4S20NG88）。
4：测试了GPIO，uart，timer, simple, freertos, coremark代码。
5：主频48Mhz，coremark测试结果：10000次循环，用时123s：81 Iter/Sec.
6：主频超过48Mhz，软核没能运行成功，原因待查.