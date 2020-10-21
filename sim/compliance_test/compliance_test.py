import filecmp
import subprocess
import sys
import os


# iverilog程序
iverilog_cmd = ['iverilog']
# 顶层模块
#iverilog_cmd += ['-s', r'tinyriscv_soc_tb']
# 编译生成文件
iverilog_cmd += ['-o', r'out.vvp']
# 头文件(defines.v)路径
iverilog_cmd += ['-I', r'..\..\rtl\core']
# 宏定义，仿真输出文件
iverilog_cmd += ['-D', r'OUTPUT="signature.output"']
# testbench文件
iverilog_cmd.append(r'..\..\tb\compliance_test\tinyriscv_soc_tb.v')
# ..\rtl\core
iverilog_cmd.append(r'..\..\rtl\core\defines.v')
iverilog_cmd.append(r'..\..\rtl\core\ex.v')
iverilog_cmd.append(r'..\..\rtl\core\id.v')
iverilog_cmd.append(r'..\..\rtl\core\tinyriscv.v')
iverilog_cmd.append(r'..\..\rtl\core\pc_reg.v')
iverilog_cmd.append(r'..\..\rtl\core\id_ex.v')
iverilog_cmd.append(r'..\..\rtl\core\ctrl.v')
iverilog_cmd.append(r'..\..\rtl\core\regs.v')
iverilog_cmd.append(r'..\..\rtl\core\if_id.v')
iverilog_cmd.append(r'..\..\rtl\core\div.v')
iverilog_cmd.append(r'..\..\rtl\core\rib.v')
iverilog_cmd.append(r'..\..\rtl\core\clint.v')
iverilog_cmd.append(r'..\..\rtl\core\csr_reg.v')
# ..\rtl\perips
iverilog_cmd.append(r'..\..\rtl\perips\ram.v')
iverilog_cmd.append(r'..\..\rtl\perips\rom.v')
iverilog_cmd.append(r'..\..\rtl\perips\spi.v')
iverilog_cmd.append(r'..\..\rtl\perips\timer.v')
iverilog_cmd.append(r'..\..\rtl\perips\uart.v')
iverilog_cmd.append(r'..\..\rtl\perips\gpio.v')
# ..\rtl\debug
iverilog_cmd.append(r'..\..\rtl\debug\jtag_dm.v')
iverilog_cmd.append(r'..\..\rtl\debug\jtag_driver.v')
iverilog_cmd.append(r'..\..\rtl\debug\jtag_top.v')
iverilog_cmd.append(r'..\..\rtl\debug\uart_debug.v')
# ..rtl\utils
iverilog_cmd.append(r'..\..\rtl\utils\full_handshake_rx.v')
iverilog_cmd.append(r'..\..\rtl\utils\full_handshake_tx.v')
iverilog_cmd.append(r'..\..\rtl\utils\gen_buf.v')
iverilog_cmd.append(r'..\..\rtl\utils\gen_dff.v')
# ..\rtl\soc
iverilog_cmd.append(r'..\..\rtl\soc\tinyriscv_soc_top.v')



# 找出path目录下的所有reference_output文件
def list_ref_files(path):
    files = []
    list_dir = os.walk(path)
    for maindir, subdir, all_file in list_dir:
        for filename in all_file:
            apath = os.path.join(maindir, filename)
            if apath.endswith('.reference_output'):
                files.append(apath)

    return files

# 根据bin文件找到对应的reference_output文件
def get_reference_file(bin_file):
    file_path, file_name = os.path.split(bin_file)
    tmp = file_name.split('.')
    # 得到bin文件的前缀部分
    prefix = tmp[0]
    #print('bin prefix: %s' % prefix)

    files = []
    if (bin_file.find('rv32im') != -1):
        files = list_ref_files(r'..\..\tests\riscv-compliance\riscv-test-suite\rv32im\references')
    elif (bin_file.find('rv32i') != -1):
        files = list_ref_files(r'..\..\tests\riscv-compliance\riscv-test-suite\rv32i\references')
    elif (bin_file.find('rv32Zicsr') != -1):
        files = list_ref_files(r'..\..\tests\riscv-compliance\riscv-test-suite\rv32Zicsr\references')
    elif (bin_file.find('rv32Zifencei') != -1):
        files = list_ref_files(r'..\..\tests\riscv-compliance\riscv-test-suite\rv32Zifencei\references')
    else:
        return None

    # 根据bin文件前缀找到对应的reference_output文件
    for file in files:
        if (file.find(prefix) != -1):
            return file

    return None

# 主函数
def main():
    #print(sys.argv[0] + ' ' + sys.argv[1] + ' ' + sys.argv[2])

    # 1.将bin文件转成mem文件
    bin_to_mem_cmd = [r'python ../../tools/BinToMem_CLI.py']
    bin_to_mem_cmd.append(sys.argv[1])
    bin_to_mem_cmd.append(sys.argv[2])
    process = subprocess.Popen(bin_to_mem_cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    process.wait(timeout=5)

    # 2.编译rtl文件
    logfile = open('complie.log', 'w')
    process = subprocess.Popen(iverilog_cmd, stdout=logfile, stderr=logfile)
    process.wait(timeout=5)
    logfile.close()

    # 3.运行
    logfile = open('run.log', 'w')
    vvp_cmd = [r'vvp']
    vvp_cmd.append(r'out.vvp')
    process = subprocess.Popen(vvp_cmd, stdout=logfile, stderr=logfile)
    process.wait(timeout=5)
    logfile.close()

    # 4.比较结果
    ref_file = get_reference_file(sys.argv[1])
    if (ref_file != None):
        # 如果文件大小不一致，直接报fail
        if (os.path.getsize('signature.output') != os.path.getsize(ref_file)):
            print('!!! FAIL !!!')
            return
        f1 = open('signature.output')
        f2 = open(ref_file)
        f1_lines = f1.readlines()
        i = 0
        # 逐行比较
        for line in f2.readlines():
            # 只要有一行内容不一样就报fail
            if (f1_lines[i] != line):
                print('!!! FAIL !!!')
                f1.close()
                f2.close()
                return
            i = i + 1
        f1.close()
        f2.close()
        print('### PASS ###')
    else:
        print('No ref file found, please check result by yourself.')


if __name__ == '__main__':
    sys.exit(main())
