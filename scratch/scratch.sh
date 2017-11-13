ls -ltr

cd ~/Downloads

ls -ltr

## load data


ls

pushd ~/local/bin
wget -O pgfutter https://github.com/lukasmartinelli/pgfutter/releases/download/v1.1/pgfutter_darwin_amd64
chmod +x pgfutter

which pgfutter

~/local/bin/pgfutter --help

pushd ~/Downloads/redfin
~/local/bin/pgfutter --dbname mydb --host 54.86.113.77 --pass 20170923 --table redfin csv ./94027_1

ls

export TESTVAR="helloworld"
echo $TESTVAR

# Either of these
pip3 install rope jedi flake8 importmagic autopep8 yapf
