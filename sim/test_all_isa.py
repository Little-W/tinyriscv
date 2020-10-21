#!/usr/bin/env python3

import os
from sim_new_nowave import run_new_sim

# 找出path目录下的所有bin文件
def list_binfiles(path):
    files = []
    list_dir = os.walk(path)
    for maindir, subdir, all_file in list_dir:
        for filename in all_file:
            apath = os.path.join(maindir, filename)
            if apath.endswith('.bin'):
                files.append(apath)

    return files


files = list_binfiles('../tests/isa/generated')


anyfail = False

# 对每一个bin文件进行测试
for file in files:
    #print(file)
    result = run_new_sim(file, 'inst.data')
    if result:
        print(file + '    PASS')
    else:
        print(file + '    !!!FAIL!!!')
        anyfail = True
        break

if (anyfail == False):
    print('Congratulation, All PASS...')
