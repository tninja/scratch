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

### download youtube mp3

cd ~/Downloads/mp3
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=jd0dyXVaJKI

mkdir -p ~/Downloads/mp3/读圣经系列
cd ~/Downloads/mp3/读圣经系列

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=sT67Uat1uoE&list=PLE-R0uydm0uN0xKD3tw0aheiQojlf1JB1 

cd ~/Downloads/mp3/读圣经系列/新约

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=AOZpAGO2DEo&list=PLE-R0uydm0uMPY7cu-kuEkcPHAM0M9Cby

cd ~/Downloads/mp3/和合本圣经
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=VlEvHyXkKPE&t=26s

mkdir -p ~/Downloads/mp3/基督教音乐
cd ~/Downloads/mp3/基督教音乐
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=G5WEnVeKFX8&t=4490s

cd ~/Downloads
find . -iname "*智慧*"

mkdir -p ~/Downloads/mp3/智慧何处寻
cd ~/Downloads/mp3/智慧何处寻
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=lSsZYHwD_wY&list=PLsNJO0nl_IhQNe8x-DFAgmlJQlAjYp4ih

cd ~/Downloads/mp3/大卫鲍森

## 福音的真义

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=p4Uj0KC-IeY

## 撒母耳记

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=QO6IzSoowFQ

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=Kws-E0Pf-m0

## 士师记和路得记

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=Nv9rAoOdRDg

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=eVjbrgGBzCI

## 列王记

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=wixHQA0lfkU&t=1010s

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=sfA_bH8FO8Q

cd ~/Downloads/mp3/其他

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=yw2Fkw5igvA

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=cQWfFekCzfw

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=DHHpM4XV5mg

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=DCzQuH_TCuI

cd ~/Downloads/mp3/和合本圣经

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=llPxf_Hu5Hs

### try python ggplot2

#### still use yhat...

pip3 install -U ggplot

pip3 install statsmodels -U

pip install -U ggplot

pip install statsmodels -U

#### trying plotnine at https://github.com/has2k1/plotnine

pip install plotnine
pip install 'plotnine[all]'

pip3 install plotnine
pip3 install 'plotnine[all]'

cd ~/Downloads/mp3/
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=kahqh68ctiE&list=PLLrug9JZTq63sgfuqWKC-N8w9CAAOFH35&index=4

## 约翰福音
cd ~/Downloads/mp3/
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=s8kCkpDvOvw

## 大卫鲍森 - 诗篇
cd ~/Downloads/mp3/
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=EoATnlIyBIE
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=VrX7zj8HzQk

## 路加福音
cd ~/Downloads/mp3/
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=MScQL-kuSv8

## 马可福音
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=-1ueYp3tMzk

## 大卫鲍森 - 约拿书
cd ~/Downloads/mp3/大卫鲍森
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=VthQ-vloIDs

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=WZw5MKJS_5Y

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=_3f7Qhqdbs8

mkdir -p ~/Downloads/mp3/好消息电视台

cd ~/Downloads/mp3/大卫鲍森
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=fw2hHdsovqM&list=PLsNJO0nl_IhTQ9Z3o9lsRWWLfocD5-ue1&index=1 

cd ~/Downloads/mp3/大卫鲍森
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=_3f7Qhqdbs8

cd ~/Downloads/mp3/大卫鲍森
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=fbTT9dF0neY

cd ~/Downloads/mp3/大卫鲍森
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=A6sbvSYMRcI

cd ~/Downloads/mp3/大卫鲍森
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=19i03hKUwDo

cd ~/Downloads/mp3/大卫鲍森
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=mg25DDuL8Ig

cd ~/Downloads/mp3/大卫鲍森
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=UGaSYXN1sNQ
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=KiLBSOPrInA

cd ~/Downloads/mp3/与神同在
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=PYJBNWVnH3w

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=HRtGWDd7xPo
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=7iiaqXb9BH8

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=Om2a47dFRNc
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=txehECEpA9I

mkdir -p ~/Downloads/mp3/kid
cd ~/Downloads/mp3/kid

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=F8EsaB0OEsw

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=rHymjhn5m94

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=uLbBx_25y3U

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=omCDE64AveU

mkdir -p ~/Downloads/mp3/chinese
cd ~/Downloads/mp3/chinese

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=9QR64g26dEs

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=bg3p9z-d0Ak

mkdir -p ~/Downloads/mp3/基督教音乐
cd ~/Downloads/mp3/基督教音乐

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=lcOIQMulmZM

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=WSzdU3hZw2c

mkdir -p ~/Downloads/mp3/每日经历神
cd ~/Downloads/mp3/每日经历神

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=w6x4MsCxUeo&list=PL8oQeENZ_AF-dyAss-MG5b8yQqpTvLwT1

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=HzJHQ1jSjVY&list=PLyxwdktS6XqiMClQ446Kf3YNJfRNXcWje

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=I-S6L2tMFNU&list=PLu66MYwgi5hOt5x4YlBUHzr51dZSo55OI

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=WKUYrhDEP7o&list=PLu66MYwgi5hO5_LxOffZgAFJENQofSJtN

cd ~/Downloads/mp3/每日经历神/传道书
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=oeBUEZe1vTk&t=422s

cd ~/Downloads/mp3/每日经历神/传道书
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=oeBUEZe1vTk&t=422s

mkdir -p ~/Downloads/mp3/youtube宝宝故事

cd ~/Downloads/mp3/youtube宝宝故事
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=ueZD2PtsC6Q

cd ~/Downloads/mp3/寇紹涵牧師/马可福音
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=8mGzXHbGJ48

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=fFa1hf3dDfs

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=IBrSJ2q72-I

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=0gAbtqW9W4M

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=P7YEO-wffEM

cd /Users/tninja/Downloads/mp3/favoriteFromYoutube

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=0BIxs7j6iGI&list=PLUv6esYNpgzkVNmo9kHAKExuAesYgmyxb

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=8CODplxE8E0

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=q5x2WU-ZPL4

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=ga29_4bliAg

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=c4oLMGThh3k

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=fJpp-Uj3c64&t=39s

mkdir -p ~/Downloads/mp3/kid
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=Q1gCqhNF4Ss

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=GSxnc3MEC2s

cd ~/Downloads/mp3/kid
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=FU_YvhqLk54

cd /Users/tninja/Downloads/mp3/寇绍恩牧师/恩典时分
youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=0mCKyK4HRQk&list=PLGs2AT8sZ-AxAGuHRTONJZXoDzVL-6J6L&index=8

mkdir -p ~/Downloads/mp3/基督教音乐

cd ~/Downloads/mp3/基督教音乐
youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=a_mo1qcDDf0

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=IAS1bauWguA

mkdir -p ~/Downloads/mp3/三国演义
cd ~/Downloads/mp3/三国演义

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=YSap5lvIRLw&list=PLHU6mKNVD7MGAbkj0c4NGe-HH4fRUeerh

cd /Users/tninja/Downloads/mp3/和合本圣经/全本

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=69yFnhE0uh4&list=PLN97DfZqjYA2kUGOg_xUXkkiIosLc16Xq

cd /Users/tninja/Downloads/mp3/favoriteFromYoutube
youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=ADRcdvKwQbs&t=91s

cd /Users/tninja/Downloads/mp3/kid

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=T1xLtk6F27E

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=xBmEWiWkx9I

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=aIygvIllfj0&t=111s

mkdir -p ~/Downloads/mp3/圆桌骑士
cd ~/Downloads/mp3/圆桌骑士

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=yfym_YGGRiA&list=PLq9ePjS6LfIjyOrizSoSKZQ4YKaV3O8oK

mkdir -p ~/Downloads/mp3/智慧何处寻
cd ~/Downloads/mp3/智慧何处寻

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=wbNAwN-6OrQ
youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=CdEMulYSzDk

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=eRZOHsAT8Jg
youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=SFjlFf-uFcU

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=w1hUiRTDeWY

cd /Users/tninja/Downloads/mp3/favoriteFromYoutube
youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=yw2Fkw5igvA

mkdir -p ~/Downloads/mp3/智慧何处寻
cd ~/Downloads/mp3/智慧何处寻
youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=2lx5Uyw89LY

mkdir -p ~/Downloads/mp3/八福
cd ~/Downloads/mp3/八福

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=gdB1OkEcHuY&t=655s

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=g1KFPITwi1E&t=919s

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=TffycSYRJ7Q&t=24s

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=FARaZiTS00k

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=5rrvpIaecyA

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=lSG4ICd72TU

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=66Y3iFSj3dY

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=w7eaGZvX5aE

mkdir -p ~/Downloads/mp3/每日经历神.马太福音
cd ~/Downloads/mp3/每日经历神.马太福音

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=b7ZkyJjvgyE&list=PLu66MYwgi5hORBNNUaamiOAtGpLqFwjvv

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=qthl6zEKN80

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=DQAIJEZq3u4

cd ~/Download/mp3/三国志4
youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=ptOijv4hc_o&list=PLVE__oPh3KAZvoTjetum65ocPPdr07pGg&index=1

mkdir -p ~/Downloads/mp3/大航海时代外传

cd ~/Downloads/mp3/大航海时代外传

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=Gl3NE5eP7Oo&t=415s

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=0fqbtmTu86Y&t=3s

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=zHhR_N6bAFs

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=7kF-fr8IW1Y&t=151s 

## 2

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=iafEa5BgKCI&t=30s

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=sf5n-8IFVCg

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=lmBGAPas8s0

cd ~/Downloads/mp3/基督教音乐

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=GjYSMGjyghc

https://www.youtube.com/watch?v=z5n_McFLr20

cd ~/Download/mp3/favoriteFromYoutube

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=z5n_McFLr20
