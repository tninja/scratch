
## in the future this file is just for Mac OS X. Ubuntu should use scratch_ubuntu.sh

ls -ltr

cd ~/Downloads

ls -ltr

## load data

ls

pushd ~/local/bin
wget -O pgfutter https://github.com/lukasmartinelli/pgfutter/releases/download/v1.2/pgfutter_darwin_amd64

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

cd ~/Download/mp3

youtube-dl --all-subs --skip-download https://www.youtube.com/watch?v=O1bR9k7VDV8

youtube-dl --list-subs https://www.youtube.com/watch?v=O1bR9k7VDV8

youtube-dl --all-subs --write-auto-sub --skip-download https://www.youtube.com/watch?v=O1bR9k7VDV8

youtube-dl --all-subs --write-auto-sub --skip-download --sub-lang en,zh-Hans,zh-Hant https://www.youtube.com/watch?v=bVzZu-l1Xoo

brew upgrade calibre --cask 

ls /usr/local/Caskroom/calibre/

df -h

ebook-viewer

cd ~/Download/mp3

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=Z19mdGQEdEc

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=6fIsZbZPKP8

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=z5n_McFLr20

cd /Users/tninja/Document/ebooks/宗教和心理学/圣经之钥

pdftk 圣经之轮_诗篇1.pdf 圣经之轮_诗篇2.pdf 圣经之轮_诗篇3.pdf 圣经之轮_诗篇4.pdf 圣经之轮_诗篇5.pdf cat output 圣经之钥_诗篇.pdf

brew reinstall pdftk

softwareupdate --all --install --force

brew install https://raw.github.com/quantiverge/homebrew-binary/pdftk/pdftk.rb

brew cask install pdftk

df -h

cd ~/Download/

ls -ltr

wget --help | grep retry

wget -c http://u802.162-ctc-aa.tv002.com/down/3fb3377eee920a4b70d13314ae6e67c1/%E3%80%8A%E2%80%9C%E7%94%9F%E6%B4%BB%E8%BD%BB%E5%93%B2%E5%AD%A6%E2%80%9D%E4%B9%A6%E7%B3%BB%E3%80%8B%E5%A5%97%E8%A3%85%E5%85%A811%E5%86%8Cepub%2Bmobi%2Bazw3%E7%89%88%E5%A5%97%E8%A3%85%E7%94%B5%E5%AD%90%E4%B9%A6%E6%89%93%E5%8C%85%E5%85%8D%E8%B4%B9%E4%B8%8B%E8%BD%BD59.7MB%5B%E6%88%91%E7%9A%84%E6%89%93%E5%8C%85%E5%88%86%E4%BA%ABmydbfx.com%5D.7z?cts=dx-f-D98A210A74A116F3f1ac&ctp=98A210A74A116&ctt=1595115690&limit=1&spd=30000&ctk=3fb3377eee920a4b70d13314ae6e67c1&chk=d0a62e1a900ae9582b6b46097a2231cb-62626660&mtd=1

7z x *.7z

wget -c http://u802.162-ctc-aa.tv002.com/down/742c1ccdac2f8cef7f2c638362395d37/%E3%80%8A%E4%B8%AD%E5%8D%8E%E7%BB%8F%E5%85%B8%E8%97%8F%E4%B9%A6%E3%80%8B%28%E5%A5%97%E8%A3%85%E5%85%B150%E5%86%8C%29%E4%B8%AD%E5%8D%8E%E4%B9%A6%E5%B1%80.2006%E5%85%A851%E6%9C%AC%E4%B8%AD%E5%9B%BD%E5%8F%A4%E5%85%B8%E6%96%87%E5%8C%96%E7%B1%BB%E7%94%B5%E5%AD%90%E4%B9%A6%E6%89%93%E5%8C%85%E5%85%8D%E8%B4%B9%E4%B8%8B%E8%BD%BD1.21GB%5B%E6%88%91%E7%9A%84%E6%89%93%E5%8C%85%E5%88%86%E4%BA%ABmydbfx.com%5D.zip?cts=dx-f-D98A210A74A116F3f1ac&ctp=98A210A74A116&ctt=1595144337&limit=1&spd=100000&ctk=742c1ccdac2f8cef7f2c638362395d37&chk=2499c383526c8998d1cb11aba56af102-1308213544&mtd=1

mkdir -p doc && cd doc

wget --recursive --no-parent https://ts.zhsw.org/123/z/cjzlzh/nr/19-%E8%AF%97%E7%AF%87%E6%9F%A5%E7%BB%8F%E8%B5%84%E6%96%99%E6%80%BB%E6%B1%87/8056-6918-4688-2461.html

wget -r -np -R "index.html*" https://ts.zhsw.org/123/z/cjzlzh/nr/19-%E8%AF%97%E7%AF%87%E6%9F%A5%E7%BB%8F%E8%B5%84%E6%96%99%E6%80%BB%E6%B1%87/8056-6918-4688-2461.html

brew upgrade languagetool

brew cleanup -s

df -h

java -version

languagetool --help

brew upgrade aspell ispell

aspell

pip3 install jedi rope importmagic virtualenv

rm -rf ~/.minikube

df -h

brew cask install amule

brew install amule

brew install gnu-typist

### pygame

#### https://stackoverflow.com/questions/52718921/problems-getting-pygame-to-show-anything-but-a-blank-screen-on-macos-mojave

pip3 install pygame==2.0.0.dev4

pip2 install pygame==2.0.0.dev4

cd ~/git

ls -ltr

git clone https://github.com/CCareaga/Pygame-Examples.git

cd ~/git/Pygame-Examples

git status

#### example might be out of date..

cd ~/git

git clone https://github.com/raymondberg/pygames.git

#### check youtube lrc file download

##### https://superuser.com/questions/927523/how-to-download-only-subtitles-of-videos-using-youtube-dl

youtube-dl --list-subs https://www.youtube.com/watch?v=8kH8s69cfIc

youtube-dl --write-sub --sub-lang en --skip-download https://www.youtube.com/watch?v=8kH8s69cfIc

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=8kH8s69cfIc

youtube-dl --list-subs https://www.youtube.com/watch?v=loUmFZ5XnnA

brew cleanup

df -h

say "today is dump truck day"

say "today is building day"

say "today is hotdigdigdog day"

say "today is doctor day"

###

brew uninstall pycharm

brew cask uninstall pycharm

brew reinstall pycharm-ce

###

cd /Users/tninja/Download/mp3/箴言

youtube-dl --extract-audio --audio-format mp3 --ignore-errors https://www.youtube.com/watch?v=akIZMSN8U6Q&list=PLe-YK1dmFUsKOS6inXkaHGZ-NhmCy-kHy

brew doctor

brew cask upgrade mactex

brew cleanup -s

# rm -rf $(brew --cache)

df -h

brew reinstall mactex

brew install mactex

brew install pdftk

brew upgrade gcc

brew unlink gcc

brew remove mactex

df -h

brew untap homebrew/homebrew-dupes

brew untap homebrew/homebrew-boneyard
brew untap homebrew/homebrew-fuse
brew untap homebrew/homebrew-games
brew untap homebrew/homebrew-science
brew untap homebrew/homebrew-tex
brew untap homebrew/homebrew-versions
brew untap homebrew/homebrew-x11

brew uninstall haskell-platform

brew update

brew upgrade

brew reinstall --cask --force calibre

brew doctor

sudo mkdir -p /usr/local/sbin

sudo chown -R $(whoami) /usr/local/sbin

brew untap homebrew/cask

brew untap homebrew/core

brew link jpeg-turbo --overwrite


brew unlink poppler

brew unlink root

brew unlink glew

brew uninstall solr

brew uninstall pyqt

brew uninstall opencv

brew uninstall mutt

brew uninstall hive hbase cassandra sqoop

cd ~/Downloads/mp3
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=WmG85i1SDIM&t=1413s

pip3 install jedi rope importmagic virtualenv

brew reinstall languagetool

brew install aspell

brew reinstall python3

brew reinstall python

brew link python3

brew update

brew uninstall haskell-platform

brew uninstall --cask haskell-platform

# rm -rf /usr/local/Caskroom/haskell-platform

brew reinstall emacs

cd ~/Downloads/mp3
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=vrz2AhlXJ_8

## try timescaledb

### https://docs.timescale.com/latest/getting-started/installation/macos/installation-homebrew?utm_source=timescaledb&utm_medium=github&utm_campaign=community

git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask fetch --unshallow

brew update

# Add our tap
brew tap timescale/tap

# To install
brew install timescaledb

# Post-install to move files to appropriate place
/usr/local/bin/timescaledb_move.sh

sudo rm -rf /Library/Developer/CommandLineTools

sudo xcode-select --install

df -h

brew search postgres 

## at ubuntu

# Add our PPA
sudo add-apt-repository ppa:timescale/timescaledb-ppa
sudo apt-get update

# Now install appropriate package for PG version
sudo apt install timescaledb-2-postgresql-12

brew cleanup

df -h

brew update

brew uninstall --force java

brew uninstall --force java9-beta

rm -r "$(brew --prefix)/Caskroom/java9-beta"

brew install java

brew doctor

brew prune

brew missing

brew install emacs qt@5

brew uninstall weka-dev

brew unlink xpdf

brew upgrade

brew unlink poppler

brew unlink root

brew cleanup -s

brew tap spring-io/tap
brew uninstall springboot

brew uninstall sbcl maxima

df -h

brew uninstall apache-spark

brew link  \
  mame \
  emacs \
  graphviz \
  root \
  youtube-dl \
  doxygen \
  guile18 \
  kubernetes-cli \
  poppler \
  guile \
  jasper \
  sdl_mixer

brew install docker

brew link docker

brew install --cask docker

brew upgrade youtube-dl

brew update

brew upgrade emacs

brew link --overwrite emacs

uname -a

cat /etc/os-release

brew update

brew install pycharm-ce

brew uninstall pycharm-ce

sudo apt install -y jq

sudo apt install -y r-base r-base-html

apt-cache search cran

apt-cache search tuxpaint

sudo apt install -y gtypist

sudo apt install -y gcompris gamine

sudo apt install -y tuxpaint tuxtype tuxmath

sudo apt install -y curl
 
curl https://celestia.space/packages/celestia.key | sudo apt-key add -

echo deb https://celestia.space/packages focal main | sudo tee /etc/apt/sources.list.d/celestia.list

cat /etc/apt/sources.list.d/celestia.list

ls -ltr /etc/apt/

cat /etc/apt/sources.list

sudo apt update && sudo apt dist-upgrade -y

sudo apt dist-upgrade -y

sudo apt install -y celestia

sudo apt install -y googleearth-package

apt-cache search google | grep earth

wget -O ~/Downloads/google-earth.deb https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb

sudo dpkg -i ~/Downloads/google-earth.deb

apt-cache search displaylink

apt-cache search spotify

## bible study tool

sudo add-apt-repository ppa:pkgcrosswire/ppa

sudo apt update

sudo apt install xiphos

apt-cache search pandoc

sudo apt install pandoc

apt-cache search pylint

apt-cache search mypy

sudo apt install pylint python3-mypy

sudo apt install lm-sensors 

sudo sensors-detect

sensors

psql -version

## install postgresql 13 on ubuntu 20.04
### https://computingforgeeks.com/how-to-install-postgresql-13-on-ubuntu/

sudo apt -y install vim bash-completion wget

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" |sudo tee  /etc/apt/sources.list.d/pgdg.list

sudo apt update

sudo apt install postgresql-13 postgresql-client-13

systemctl status postgresql.service 

systemctl is-enabled postgresql

## postgresql related

brew update

brew uninstall postgresql

brew rm postgrest postgresql

brew upgrade postgresql

brew reinstall postgresql

ls /usr/local/opt/postgresql/

rm -rf /usr/local/opt/android-ndk/

brew cleanup -s

brew style --fix

pip3 install psycopg2

pip3 install sqlalchemy

pip3 install pandas

df -h

psql --version

### setup postgresql

createuser -s postgres

psql postgres

brew services restart postgresql

ls -ltr /usr/local/Cellar/ | grep postgres

rm -rf postgresql@10

rm -rf postgresql@9.6

brew postgresql-upgrade-database

ls -ltr /usr/local/var/postgres

rm -rf /usr/local/var/postgres

rm -rf /usr/local/var/postgres.old

ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

ls ~/Library/LaunchAgents

alias pg_start="launchctl load ~/Library/LaunchAgents"
alias pg_stop="launchctl unload ~/Library/LaunchAgents"

pg_start

ps -aux | grep postgres

brew install pgfutter

## ubuntu postgres install

sudo -u postgres createuser tninja

apt-cache search psycopg2

apt-cache search sqlalchemy

apt-cache search bible

sudo apt install python3-psycopg2 python3-sqlalchemy python3-pandas

echo 'localhost:*:*:tninja:111111' > ~/.pgpass
chmod 600 ~/.pgpass

sudo apt install csvkit

## download mp3

brew upgrade youtube-dl

brew link --overwrite youtube-dl

mkdir -p ~/Downloads/mp3/danjiang/Ecclesiastes
cd ~/Downloads/mp3/danjiang/Ecclesiastes

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=prgGzJxxIDE&list=PLe-YK1dmFUsKnUr0wDdSwls3ZKJha8bTv&index=1&t=9s

df -h

mkdir -p ~/Downloads/mp3/danjiang/Proverbs
cd ~/Downloads/mp3/danjiang/Proverbs

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=akIZMSN8U6Q&list=PLe-YK1dmFUsKOS6inXkaHGZ-NhmCy-kHy

mkdir -p ~/Downloads/mp3/danjiang/GospelOfMatthew
cd ~/Downloads/mp3/danjiang/GospelOfMatthew

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=Q7qd4ujjW70&list=PLe-YK1dmFUsIBVG3cnI2cLS-66wX-vnD8

brew update

brew tap --repair

brew upgrade postgresql

brew search postgres

brew unlink xpdf

brew upgrade

pip3 install elpy

sudo apt install cmake libtool libtool-bin

brew unlink glew

brew link --overwrite guile

brew link --overwrite gnutls

git --version

brew style --fix

brew cleanup -s

df -h

pip3 install --upgrade psycopg2 pandas

pip3 install mypy


mkdir -p ~/Downloads/mp3/属灵操练礼赞
cd ~/Downloads/mp3/属灵操练礼赞

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/playlist?list=PLeBFtkBTiKZgg_CzWtoEbxVzDR1y4JAfK


cd ~/git
git clone https://github.com/leewaiho/Clean-Architecture-zh.git

cd ~/git/Clean-Architecture-zh

npm install --global yarn

yarn docs:build

pip3 install 'python-language-server[all]'

pip3 uninstall 'python-language-server[all]'

pip3 install 'python-language-server[yapf]'

pip3 uninstall python-language-server

pip3 uninstall python-lsp-server

pip3 uninstall python-language-server

go get github.com/lighttiger2505/sqls

go help get

go install github.com/lighttiger2505/sqls@latest

go list sqls

ls -la /usr/local/Cellar/go/1.17.2/libexec/src/

pip3 install --upgrade pytest

pip install pytest

pytest

py.test

pip3 install pytest-sugar pytest-cov pytest-instafail pytest-tldr pytest-icdiff pytest-clarity

mkdir -p /Users/tninja/Document/ebooks/宗教和心理学/敬虔的丈夫

cd /Users/tninja/Document/ebooks/宗教和心理学/敬虔的丈夫

wget -r -np -l 1 -A zip "https://www.yanjinggongju.com/H"

brew install --cask dbeaver-community

df -h

##### 老婆要的王菲专辑

mkdir -p ~/Downloads/mp3/王菲
cd ~/Downloads/mp3/王菲

brew upgrade youtube-dl ##--force

brew link --overwrite youtube-dl

brew unlink ctags

brew cleanup -s

df -h

## 王菲 2001《王菲》同名專輯
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=NTWnCijKbKc

## 王菲 1998《唱遊》專輯
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=eq7w2KRgfzs

## 王菲 2000《寓言》專輯
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=QYC9pG2T7yk

## 王菲 2003《將愛》專輯
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=BZ57AtDZbzI

##### 一些三国mv

mkdir -p ~/Downloads/mp3/三国演义
cd ~/Downloads/mp3/三国演义

## 青史传名
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=74wZrekluh8

## 故人嘆
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=mWeaRWemp1w

##### 基督教

mkdir -p ~/Downloads/mp3/基督教音乐
cd ~/Downloads/mp3/基督教音乐

## 诗篇51篇
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=Qw7ldPE5s18&list=RDGMEMCMFH2exzjBeE_zAHHJOdxg&start_radio=1&rv=UVEDBXCht48

## 摩西的祷告
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=GjYSMGjyghc

chmod -R a+w /Applications


brew install --cask intellij-idea-ce --force

brew upgrade --cask intellij-idea-ce

brew uninstall intellij-idea

brew cleanup -s

brew remove make

brew install make

brew install global

## install go

brew update

brew install go

go install golang.org/x/tools/gopls@latest

go install github.com/kisielk/errcheck@latest

go get -u github.com/cweill/gotests/...

go get github.com/stretchr/testify/assert

go install github.com/stretchr/testify/assert

brew install --cask openoffice

## install multicorn

brew search pgxn

brew install pgxnclient

## install imap plugin

pgxn install multicorn

cd ~/git

git clone git://github.com/Kozea/Multicorn.git

## https://stackoverflow.com/questions/70663523/the-unauthenticated-git-protocol-on-port-9418-is-no-longer-supported

git config --global url."https://".insteadOf git://

cd Multicorn

make && make install

cd ~/Downloads
ls -ltr | grep multicorn

unzip multicorn-1.4.0.zip

cd multicorn-1.4.0

make

# src/errors.c:71:35: error: too many arguments to function call, expected 2, have 5

brew search postgres

brew uninstall postgresql

brew uninstall postgresql@9.6

brew uninstall postgresql@13

brew uninstall postgresql@10

brew reinstall postgresql@12

brew info postgresql

brew link postgresql@12

psql --help

brew services start postgresql@12

pip3 install imapclient

brew install alda

brew link --overwrite alda

brew install homebrew/emacs/pdf-tools

brew search lilypond

brew reinstall lilypond

brew link --overwrite lilypond

which lilypond

whereis lilypond

pushd /usr/local/Cellar/lilypond/2.24.3

ls /usr/local/Cellar/lilypond

find . -iname "*.el"

brew install timidity

brew install eawpats

brew install ghostscript

brew link --overwrite ghostscript

brew search redis

brew install redis

## install anaconda3

brew upgrade --cask anaconda

df -h

which conda

conda install scikit-learn-intelex

which python

which ipython

conda install elpy

conda install jedi autopep8 yapf black flake8  

pip install --upgrade pylint

pip install --upgrade spyder

conda install tabulate

brew install node@17

brew install nvm

mkdir ~/.nvm

export NVM_DIR="$HOME/.nvm"
    [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

nvm install 17

nvm use 17

brew cleanup -s

pip3 install revChatGPT --upgrade

pip install revChatGPT --upgrade

brew upgrade python3

/usr/local/anaconda3/bin/pip3 install revChatGPT --upgrade

df -h

### try https://github.com/joshcho/ChatGPT.el

which pip

/usr/local/anaconda3/bin/pip install epc

/usr/local/anaconda3/bin/pip install git+https://github.com/mmabrouk/chatgpt-wrapper

pkill firefox

/usr/local/anaconda3/bin/chatgpt install

/usr/local/anaconda3/bin/playwright install

ln -s /usr/local/anaconda3/bin/chatgpt /usr/local/bin/chatgpt

### modify copilot source code

cd ~/git/
ls -ltr

git clone https://github.com/tninja/copilot.el

# rm -rf copilot.el

brew tap lencx/chatgpt https://github.com/lencx/ChatGPT.git

brew install --cask chatgpt --no-quarantine

curl --version

/usr/bin/curl --version

brew upgrade curl

brew install curl

whereis curl

brew link curl

### to open xlsx..

brew install gnumeric

gnumeric

df -h



brew info --json=v1 | jq -j '.[] | .caskroom_path + "/" + .name + "\n" + .installed[].version + "\n" + (.installed[].sum | tostring) + "\n"' | while read cask; do read version; read sum; echo "$(du -sh \"${cask}\/$version\/\") $cask $version (${sum})"; done

brew cleanup -s

df -h

for pkg in `brew list --formula -1 | egrep -v '\.|\.\.'`
  do echo $pkg `brew info $pkg | egrep '[0-9]* files, ' | sed 's/^.*[0-9]* files, \(.*\)).*$/\1/' | awk '{print $1;}/[0-9]$/{s+=$1};/[mM][bB]$/{s+=$1*(1024*1024);next};/[kK][bB]$/{s+=$1*1024;next} END { suffix=" KMGT"; for(i=1; s>1024 && i < length(suffix); i++) s/=1024; printf "\t(all versions: %0.1f%s)",s,substr(suffix, i, 1), $3; }'`
done

brew update

brew upgrade

brew uninstall emacs

brew uninstall pdf-tools

brew uninstall hadoop

sysctl -n hw.physicalcpu

该命令将显示Macbook上的物理CPU数量，即每个CPU插槽上的芯片数量。

sysctl -n hw.logicalcpu

brew install htop

brew update

brew link htop

sudo chmod -R a+w /usr/local/share

git config --global --add safe.directory /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core

git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core fetch --unshallow

 git config --global --add safe.directory /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask

git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask fetch --unshallow

### on macbooks, how do i know if the xcode is already installed? how do i install it through command line?

xcode-select --install

### when i run "brew update" on macosx, it complains "No remote 'origin' in /usr/local/Homebrew, skipping update!" How should i fix that?


### 当我在MacOSX上运行“brew update”时，它抱怨“/ usr / local / Homebrew中没有远程'origin'，跳过更新！”我该如何解决？

pushd /usr/local/Homebrew

git init

git remote add origin https://github.com/Homebrew/brew.git

git config --global --add safe.directory /usr/local/Homebrew

popd

brew search openjdk

brew install openjdk

brew install --cask anaconda

which pip3

pip3 install pyright

/usr/local/anaconda3/bin/pip3 install pyright

brew install nodejs npm

npm install pyrigh

pyright

npm install copilot

npm audit fix

node

pip install proselint

cd ~/

tar -czvf mbp.emacs.tar.gz .emacs.d .emacs

brew search global

brew install global

## download 海底小纵队

pip install --upgrade youtube-dl

pip uninstall youtube-dl

mkdir -p ~/Download/海底小纵队

cd ~/Download/海底小纵队

youtube-dl -U

/usr/local/bin/youtube-dl --verbose https://www.youtube.com/watch?v=hTaNMCy8xwk

youtube-dl --verbose https://www.youtube.com/watch?v=hTaNMCy8xwk&list=PLMimNX_5368dCjFMHAHX43iMY2SSaygho&index=1

youtube-dl --verbose https://www.youtube.com/watch?v=hTaNMCy8xwk&list=PLMimNX_5368dCjFMHAHX43iMY2SSaygho&index=2

youtube-dl --verbose https://www.youtube.com/watch?v=hTaNMCy8xwk&list=PLMimNX_5368dCjFMHAHX43iMY2SSaygho&index=3

youtube-dl --verbose https://www.youtube.com/watch?v=hTaNMCy8xwk&list=PLMimNX_5368dCjFMHAHX43iMY2SSaygho&index=4

youtube-dl --verbose https://www.youtube.com/watch?v=hTaNMCy8xwk&list=PLMimNX_5368dCjFMHAHX43iMY2SSaygho&index=5

sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

whereis youtube-dl

brew reinstall youtube-dl

rm /usr/local/bin/youtube-dl

/usr/local/bin/youtube-dl

sudo brew unlink python@3.11


brew unlink python@3.11 && brew link python@3.11

rm -rf /usr/local/Cellar/python@3.11/3.11.3

ls -ltr /usr/local/Cellar/python@3.11

sudo chown -R $(whoami) /usr/local/*

brew doctor

brew link --overwrite pygments six python@3.11

ls /usr/local/bin/youtube-dl


## generate some pdf for testing ai purpose

pandoc /Users/tninja/Document/ebooks/文学历史哲学/三国演义.epub -s -o /Users/tninja/Document/ebooks/文学历史哲学/三国演义.pdf

brew install pandoc

brew install mactex

brew uninstall mactex

brew install --cask mactex-no-gui

brew reinstall mactex-no-gui

brew remove mactex-no-gui

## install chatgpt required library

pip install --upgrade transformers torch

which pip

brew install git-delta

brew install --cask mactex

brew install pdflatex

brew install basictex

# brew install --cask basictex

which pdflatex

ls /

brew install bash

## convert safaribooks to epub
### https://github.com/lorenzodifuccia/safaribooks

cd ~/git
ls -ltr

# rm -rf safaribooks

git clone https://github.com/lorenzodifuccia/safaribooks.git

cd safaribooks/

pip3 install -r requirements.txt

ls -ltr

## Head First Software Architecture: 9781098134341

## Get Your Hands Dirty on Clean Architecture - Second Edition: 9781805128373

python3 safaribooks.py --cred "kang_tu@apple.com:Tk5611450" --kindle 9781098134341 --no-cookies

# python3 safaribooks.py --login --kindle 9781098134341

brew search freeciv

brew install freeciv

which freeciv

brew search racket

brew search scheme

brew search guile

brew install guile

brew install chezscheme

brew install mit-scheme

brew search postgresql

brew --version

brew list | grep postgres

brew info postgresql

brew install postgresql

brew services start postgresql

psql --version

brew install texlive

brew install pdftk-java

pip3 install ropemacs

python -m pip install --user --editable "git+https://github.com/python-rope/ropemacs.git#egg=ropemacs"

sudo port install tuxtype

sudo pip3 install requests beautifulsoup4

sudo pip3 install selenium

## emacs 29？

brew tap d12frosted/emacs-plus

brew install emacs-plus@29 --with-ctags --with-dbus --with-debug --with-mailutils --with-xwidgets --with-imagemagick --with-native-comp

brew install emacs-plus@29 --with-ctags --with-debug --with-imagemagick --with-native-comp

brew install emacs-plus@29 --with-native-comp

brew link --overwrite jpeg --force

brew reinstall libgccjit

brew reinstall gcc

brew reinstall autoconf

brew install automake

brew uninstall libgccjit

## try https://github.com/d12frosted/homebrew-emacs-plus/issues/485#issuecomment-1206748102, not working

brew uninstall emacs-plus

brew tap homebrew/core --force

cd "$(brew --repository)/Library/Taps/homebrew/homebrew-core/Formula"

brew uninstall libgccjit gcc # in case you already had the updated gcc and libgccjit installed

git log libgccjit.rb # examine recent commits for libgccjit.rb

git reset --hard 9ae475cc6c82beaa61402dcfffdea5c75f321d4a # reset clone to last known-good commit for libgccjit

git checkout -b libgccjit-downgrade-11.3.0_1 # prevent brew from autorefreshing local master

brew install libgccjit gcc

brew install emacs-plus@29 --with-ctags --with-debug --with-imagemagick --with-native-comp
# brew install emacs-plus # with options

brew pin libgccjit gcc emacs-plus

brew link --overwrite emacs-plus@29

git checkout master

brew update

### different way..

brew tap railwaycat/emacsmacport

brew install emacs-mac --with-emacs-sexy-icon --with-librsvg --with-mac-metal --with-native-compilation --with-starter 

### https://github.com/jimeh/emacs-buildso

cd

brew tap jimeh/emacs-builds

brew install --cask emacs-app

### shell-gpt: https://github.com/TheR1D/shell_gpt

pip3 install shell-gpt

pip install shell-gpt

sgpt "What is the fibonacci sequence"

brew install w3m

brew install gabotechs/taps/musicgpt

musicgpt "Create a relaxing LoFi song"

musicgpt "Create the RYU theme in street fighter 2 game"

musicgpt "Create happy birthday song" --model medium --secs 30

### install python2

brew search python2

brew update

brew tap newren/tap

brew install python@2

brew install pyenv

pyenv install 2.7.18

# Installed Python-2.7.18 to /Users/tninja/.pyenv/versions/2.7.18

/Users/tninja/.pyenv/versions/2.7.18/bin/pip2 install pygame==1.9.6

/Users/tninja/.pyenv/versions/2.7.18/bin/python2 /Users/tninja/Download/solarwolf-1.5/solarwolf.py

brew install sdl sdl_image sdl_mixer sdl_ttf

brew install sdl2 sdl2_image sdl2_mixer sdl2_ttf

pip install cocos

brew install p7zip

7z --help

# You can find MAME game ROMs at various websites, but make sure to check the legality of downloading them in your region. Some popular sources include:
# - https://archive.org/details/mame
# - https://www.emuparadise.me/
# - https://romsmania.cc/
# - https://www.romsdownload.net/

brew install pcsx2

## install cursor editor

brew install --cask cursor

## format usb drive

diskutil list

diskutil unmountDisk /dev/disk2

sudo diskutil eraseDisk exFAT samsung64G /dev/disk2

## install universal ctags with homebrew
# brew install --HEAD universal-ctags/universal-ctags/universal-ctags

brew install universal-ctags
