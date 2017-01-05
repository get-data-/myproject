# -*- coding: utf-8 -*-

import os


with open('cleanup.txt') as f:
    for line in f:
        print('Removing: %s' % (line))
        os.remove(line.rstrip('\n'))
