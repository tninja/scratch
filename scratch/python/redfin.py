import os
import logging

data_dir = '/Users/kangtu/Downloads/redfin'
pgfutter = '/Users/kangtu/local/bin/pgfutter'
template = "%s --dbname mydb --host 54.86.113.77 --pass 20170923 --table redfin csv %s"

for filename in os.listdir(data_dir):
    fullname = "%s/%s" % (data_dir, filename)
    cmd = template % (pgfutter, fullname)
    logging.info(cmd)
    os.system(cmd)
