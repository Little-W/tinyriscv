#!/usr/bin/env python3

import sys
import os

def bin_to_mem(infile, outfile):
    try:
        with open(infile, 'rb') as binfile, open(outfile, 'w') as datafile:
            index = 0
            b0 = 0
            b1 = 0
            b2 = 0
            b3 = 0

            binfile_content = binfile.read()
            for b in  binfile_content:
                if index == 0:
                    b0 = b
                    index = index + 1
                elif index == 1:
                    b1 = b
                    index = index + 1
                elif index == 2:
                    b2 = b
                    index = index + 1
                elif index == 3:
                    b3 = b
                    index = 0
                    array = [b3, b2, b1, b0]
                    datafile.write(bytearray(array).hex() + '\n')
    except IOError:
        print('error')
        return False

    return True

if __name__ == '__main__':
    if len(sys.argv) == 3:
        bin_to_mem(sys.argv[1], sys.argv[2])
    else:
        print('Usage: %s binfile datafile' % sys.argv[0], sys.argv[1], sys.argv[2])
