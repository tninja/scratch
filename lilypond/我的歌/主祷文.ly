%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

%% https://www.google.com/imgres?imgurl=http%3A%2F%2Fwww.sooopu.com%2Fsooopuupload%2Fzanmeishi%2Fmm2kfyqh4ab.jpg&imgrefurl=http%3A%2F%2Fjianpu.8399.org%2F%25E9%25BB%2591%25E7%25AE%25A1%25E6%258C%2587%25E6%25B3%2595%25E7%25AE%2580%25E8%25B0%25B1%2F&docid=57lhhcrwuG31oM&tbnid=VnksfFaf8obfHM%3A&vet=10ahUKEwiB2Ive_afYAhULwWMKHdsrAU0QMwguKAcwBw..i&w=1653&h=1681&itg=1&client=firefox-b-1&bih=603&biw=1280&q=%E4%B8%BB%E7%A5%B7%E6%96%87%20%E5%8F%8C%E6%89%8B%E7%AE%80%E8%B0%B1&ved=0ahUKEwiB2Ive_afYAhULwWMKHdsrAU0QMwguKAcwBw&iact=mrc&uact=8

\header {
  source = "http://m.gepuwang.net/gangqinpu/4974.html"
  maintainer = "Kang Tu"
  maintainerEmail = "tninja@gmail.com"
  lastupdated = "2017/Dec/26"
  title = "主祷文 (THE LORD'S PRAYER)"
  subtitle = "太 6:9 - 13"
  subsubtitle = "选自《普天颂赞》"
  composer = "游智婷"
}

global = {
  \key c \major
  \clef "bass"
}

uppermotifone = { e8 d8 | e2 \tuplet 3/2 { c4 e4 a4 } | g2~g4 }
uppersentenseone = { \uppermotifone e8 d8 | c4. c8 c8 a,8 c8 e8 | d2~d4 }
uppermotiftwolarge = { \uppermotifone a8 g8 | e4. d8 c4 a8 g8 | e4.~d8 c4. g,8 | a,8~c4.~c8 e8 } 
uppermotifthreepartone = { a8 g8 | e8 g4. \tuplet 3/2 { e4 d4 c4 } | e2~e4 }
uppermotifthreeparttwo = { c'2 d'8 c'4 a8 | e2~e4 }
uppermotiffour = { g8 g8 | a8 c'4. d'8 c'4 d'8 | e'8~d'8 c'4 g8 g8 | a8 c'4. }
upper = \absolute {
  \clef "bass"
  \time 4/4
  r2 r4 \uppersentenseone \break
  \uppermotiftwolarge a,8 e8 | d1~d2 r4 \break
  \uppersentenseone \break
  \uppermotiftwolarge d8~e8 | c2 r4 \break
  \uppermotifthreepartone d8 c8 \uppermotifthreeparttwo \break
  \uppermotiffour | \tuplet 3/2 { c'4 a4 e'4 } d'2~d'4 \break
  \uppermotifthreepartone e8 d8 \uppermotifthreeparttwo \break
  \uppermotiffour | \tuplet 3/2 { d'4 e'4 a4 } c'2~c'4 \break
}

%% aligning lyrics to a melody: http://lilypond.org/doc/v2.19/Documentation/learning/aligning-lyrics-to-a-melody
%% 每一个单词/中文字 对一个音符
versecn = \new Lyrics \lyricsto "one" {
  \lyricmode {
	我 们 在 天 上 的 父，愿 人 都 尊 你 的 名 为 圣。
	愿 你 的 国 度 降 临，愿 你 的 旨 意 行 在 地 _ 上 如 同 行 _ 在 天 上。 
	我 们 日 用 的 饮 食，今 日 赐 给 我 _ _ _ 们。
	免 我 们 所 欠 的 债， 如 同 我 们 免 了 人 的 债 哈 _ _ 利 路 亚。
	不 叫 我 们 遇 见 试 探，救 我 们 脱 离 凶 恶。_
	因 为 国 度 权 柄 和 荣 耀 全 是 你 的 直 到 永 远。_
	我 要 一 生 一 世 寻 求， 在 主 殿 中 瞻 仰 荣 美。_
	因 为 国 度 权 柄 和 荣 耀 全 是 你 的 直 到 永 远。_
  }
}

\score
{
  \new PianoStaff
  <<
	\set PianoStaff.instrumentName = "Piano"
	\new Voice = "one" {
	  \upper
	}
	\versecn
  >>
  \midi {
	\tempo 2 = 82
  }
  \layout { }
}
