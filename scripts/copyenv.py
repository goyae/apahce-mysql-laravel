# execute by makefile

import os
import sys
import shutil

print('start copyenv')

envname = sys.argv[1] if 1 < len(sys.argv) else 'develop'

print(f'env name={envname}')
def copyenv(path, envname):
    envpath = f'{path}.{envname}'
    if not os.path.isfile(envpath):
        raise Exception(f"not found {envpath}")
    print(f'copy {envpath} ==> {path}')
    shutil.copy(envpath, path)

copyenv('.env', envname)
copyenv('src/.env', envname)

print('done copyenv')