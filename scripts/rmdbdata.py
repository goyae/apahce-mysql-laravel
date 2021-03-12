import os
import shutil

print('start rmdbdata')

path = 'docker/db/data'
if os.path.isdir(path):
	shutil.rmtree(path)

print('done rmdbdata')