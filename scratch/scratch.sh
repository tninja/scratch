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

cd ~/Download/mp3

youtube-dl --all-subs --skip-download https://www.youtube.com/watch?v=O1bR9k7VDV8

youtube-dl --list-subs https://www.youtube.com/watch?v=O1bR9k7VDV8

youtube-dl --all-subs --write-auto-sub --skip-download https://www.youtube.com/watch?v=O1bR9k7VDV8

youtube-dl --all-subs --write-auto-sub --skip-download --sub-lang en,zh-Hans,zh-Hant https://www.youtube.com/watch?v=bVzZu-l1Xoo

brew cask upgrade calibre

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

brew cleanup

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

brew cask install docker

brew upgrade youtube-dl

brew update

brew upgrade emacs

brew link --overwrite emacs

uname -a

cat /etc/os-release

brew update

brew install pycharm-ce

brew uninstall pycharm-ce
