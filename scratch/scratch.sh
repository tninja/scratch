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
sudo pip install rope jedi flake8 importmagic autopep8 yapf

# Convert a couple of mobi to epub
# pandoc -t epub Manning.Spring.Boot.in.Action.2015.12.mobi -o Manning.Spring.Boot.in.Action.2015.12.epub

ebook-convert Manning.Spring.Boot.in.Action.2015.12.mobi Manning.Spring.Boot.in.Action.2015.12.epub

ebook-convert Manning.Spring.in.Action.4th.Edition.2014.11.epub

## merge 圣经之轮

cd ~/Downloads

pdftk 圣经之轮_诗篇1.pdf 圣经之轮_诗篇2.pdf 圣经之轮_诗篇3.pdf 圣经之轮_诗篇4.pdf 圣经之轮_诗篇5.pdf cat output 圣经之轮_诗篇.pdf

gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=圣经之轮_诗篇.pdf 圣经之轮_诗篇1.pdf 圣经之轮_诗篇2.pdf 圣经之轮_诗篇3.pdf 圣经之轮_诗篇4.pdf 圣经之轮_诗篇5.pdf

## upgrade python to python3

## install required packages

cd /usr/local/bin
ln -s pip3 pip

# Either of these
pip install rope
pip install jedi
# flake8 for code checks
pip install flake8
# and autopep8 for automatic PEP8 formatting
pip install autopep8
# and yapf for code formatting
pip install yapf

## fish completion

brew install fish

brew install mame

pip install --upgrade pip

pip install graphviz

pip install networkx ## this support read dot file

pip install pygraphviz ## the dot reading need this package

xcode-select --install

brew upgrade plantuml

### https://superuser.com/questions/548349/how-can-i-install-7zip-so-i-can-run-it-from-terminal-on-os-x

brew update

brew install p7zip

ls

pip install pygame

cd ~/git
ls

git clone https://github.com/munificent/game-programming-patterns

sudo pip install markdown pygments smartypants

cd ~/git/game-programming-patterns
python script/format.py ##--watch

python --version


pip3 install markdown pygments smartypants

pip install 
