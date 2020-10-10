#!/usr/bin/env python3

import sys
sys.path.insert(1, '../tools')

from BinToMem_CLI import bin_to_mem
from sim_default_nowave import run_default_sim

def run_new_sim(file_path, inst_data):
    if not bin_to_mem(file_path, inst_data):
        sys.exit('Convert %s to %s faild' % (file_path, inst_data))

    return run_default_sim()

if __name__ == '__main__':
    if len(sys.argv) < 3:
        sys.exit('Too Few Parameters.\nUsage: %s binfile datafile')

    run_new_sim(sys.argv[1], sys.argv[2])
