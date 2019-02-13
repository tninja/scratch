%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

%% http://m.gepuwang.net/gangqinpu/4974.html 

\header {
  source = "http://m.gepuwang.net/gangqinpu/4974.html"
  maintainer = "Kang Tu"
  maintainerEmail = "tninja@gmail.com"
  lastupdated = "2018/Dec/22"
  title = "生日快乐 钢琴谱"
  subtitle = "祝乖老婆鹏鹏生日快乐"
  subsubtitle = "乖鹏鹏是我们家的宝贝"
  footer = "乖老婆鹏鹏生日快乐"
}

\markup {
  \fill-line {
	\center-align {
	  \epsfile #X #80 #"pengpeng_beach.eps"
	  % convert pengpeng_beach.jpg pengpeng_beach.eps
	}
  }
}

global = {
  \key c \major
  \clef "bass"
}

uppermotifone = { a4 g4 c'4 | b4 b4 g8 g8 | a4 g4 d'4 }
uppermotiftwo = { c'4 c'4 g8 g8 | g'4 e'4 c'4 | b4 a4 f'8 f'8 | e'4 c'4 d'4 }
upper = \absolute {
  \clef "bass"
  \time 3/4
  r4 r4 g8 g8 | \uppermotifone
  \uppermotiftwo
  \time 4/4
  c'4 c'4 r4 f8 f8
  \time 3/4 
  \uppermotifone
  \uppermotiftwo
  \clef "treble"
  c'4 c'4 <g' g>8 <g' g>8 | <a'' a'>4 <g'' g'>4 <c'' c'>4 | <b' b>4 <b' b>4 <g' g>4 <g' g>4 | <a' a>4 <g' g>4 <d'' d'>4 
  <c' c''>4 <c' c''>4 <g' g>8 <g' g>8 | <g'' g'>4 <e'' e'>4 <c'' c'>4 | <b' b>4 <a' a>4 <f'' f'>4 <f'' f'>4 | <e'' e'>4 <c'' c'>4 <b'' b'>4 
  \time 4/4
  <c' c''>4 <c' c''>4 r4 f'8 f'8
  \clef "bass"
  \time 3/4
  % e'4 c'4 \tuplet 2/1 { d'4 d'8 } \repeat unfold 2 { \tuplet 3/1 { e32 g32 c'4 } } r16
  e'4 c'4 { d'4 d'8 } \repeat unfold 2 { { e32 g32 c'4 } } r16
}

lowermotifone = { c,8 g,8 c8 d8 e4 }
lowermotifonedash = { c,8 g,,8 c8 d8 e4 }
lowermotiftwo = { g,,8 d,8 g,8 a,8 b,4 }
lowermotiftwodash = { g,,,8 d,8 g,8 a,8 b,4 }
lowermotifthree = { d,8 a,8 d8 e8 f4 }
lowermotifthreedash = { d,,8 a,8 d8 e8 f4 }
lower = \absolute {
  \clef "bass"
  \time 3/4
  r4 r4 r4 | \lowermotifone | \repeat unfold 2 \lowermotiftwo
  \repeat unfold2 \lowermotifone | \lowermotifthree | \lowermotiftwo
  \time 4/4
  c'8 g'8 c8 d8 e4 r4
  \time 3/4
  \lowermotifone | \repeat unfold 2 \lowermotiftwo
  \repeat unfold 2 \lowermotifone | \lowermotifthree | \lowermotiftwo
  \lowermotifone \lowermotifonedash | \repeat unfold 2 \lowermotiftwodash
  \repeat unfold 2 \lowermotifonedash | \lowermotifthreedash \lowermotiftwodash
  \time 4/4
  c,,8 g,8 c8 d8 e4 r4
  \time 3/4
  g,8 b,8 f4 r4 | r8 c,4 c,4 r8
}

%% aligning lyrics to a melody: http://lilypond.org/doc/v2.19/Documentation/learning/aligning-lyrics-to-a-melody
%% 每一个单词/中文字 对一个音符
versecn = \new Lyrics \lyricsto "one" {
  \lyricmode {
	祝 你 生 日 快 乐 ， | 祝 你 生 日 快 乐 ,
	祝 你 生 日 快 乐 ， | 祝 你 生 日 快 乐 ！
	祝 你 生 日 快 乐 ， | 祝 你 生 日 快 乐 ,
	祝 你 生 日 快 乐 ， | 祝 你 生 日 快 乐 ！
	祝 你 生 日 快 乐 ， | 祝 你 生 日 快 乐 ,
	祝 你 生 日 快 乐 ， | 祝 你 生 日 快 乐 ！
  }
}

verseen = \new Lyrics \lyricsto "one" {
  \lyricmode {
	Hap -- py birth -- day to you , | hap -- py birth -- day to you ,
	Hap -- py birth -- day to Pengpeng , | hap -- py birth -- day to you !
	Hap -- py birth -- day to you , | hap -- py birth -- day to you ,
	Hap -- py birth -- day to Pengpeng , | hap -- py birth -- day to you !
	Hap -- py birth -- day to you , | hap -- py birth -- day to you ,
	Hap -- py birth -- day to Pengpeng , | hap -- py birth -- day to you !
  }
}

\score
{
  \new PianoStaff
  <<
	\set PianoStaff.instrumentName = "Piano"
    \numericTimeSignature
	\new Voice = "one" {
	  \upper
	}
	\versecn
	\verseen
	\new Voice = "two" {
	  \set Voice.midiMaximumVolume = #0.5
	  \lower
	}
  >>
  \midi {
	\tempo 2 = 72
	%% convert to mp3 (for iphone) timidity ./Pengpeng生日快乐歌.midi -Ow -o - | lame - -b 64 Pengpeng生日快乐歌.mp3
  }
  \layout { }
}

\markup {
  \fill-line {
	\center-align {
	  \epsfile #X #80 #"birthday_cake_with_candles.eps"
	  %% convert Subramanian.JPG bella.eps
	}
  }
}
