# -*- coding: utf-8 -*-

import os


with open('cleanup.txt', 'w') as  f:
    for item in os.listdir('.'):
        if 'myproject.sock' in item:
            pass
        elif '.' in item:
            fil = '%s' % (item)
            f.write('%s\n' % fil)
        else:
            pass
