# -*- coding: utf-8 -*-

import os

base = '/home/ubuntu/myproject'

with open('cleanup.txt', 'w') as  f:
    for item in os.listdir(base):
        if 'myproject.sock' in item:
            pass
        elif '.' in item:
            fil = '%s/%s' % (base, item)
            f.write('%s\n' % fil)
        else:
            pass
