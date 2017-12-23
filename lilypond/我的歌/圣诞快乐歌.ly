%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

%% http://www.everyonepiano.cn/Number-1515-1-%E5%9C%A3%E8%AF%9E%E5%BF%AB%E4%B9%90-%E5%9C%A3%E8%AF%9E%E6%AD%8C%E6%9B%B2%E5%8F%8C%E6%89%8B%E7%AE%80%E8%B0%B1%E9%A2%84%E8%A7%881.html

\header {
  source = "http://m.gepuwang.net/gangqinpu/4974.html"
  maintainer = "Kang Tu"
  maintainerEmail = "tninja@gmail.com"
  lastupdated = "2017/Dec/22"
  title = "圣诞快乐 钢琴谱"
  subtitle = "鹏鹏和康康家2017年圣诞快乐"
}

global = {
  \key c \major
  \clef "bass"
}

upper = \absolute {
  \clef "bass"
  \time 4/4
  <a e'>4 f4 <c f a>4 c'4 | <f a e'>8 d'8 c'8 b8 <c dis a>4 b4 | <c a>4 g4 e4 c4 | <c d>4 <c d>4 d4 d4
  c4 e4 <c g>4 c'4 | <c g>8 f8 e8 d8 c4 d4 | c4 e4 <c g>4 c'4 | <c g>4 d8 c8 b,4 b,4
}

lowermotifone = { <c, e, g,>4. b,,8 <a,, g,>4 <a,, g,>4 }
lower = \absolute {
  \clef "bass"
  \time 4/4
  <f, c>4 <f, c>4 d,4 d,4 | <g, d>4 <g, d>4 fis,4 fis,4 | g,4 g,4 <a,, f, a,>4 <a,, f, a,>4 | <d, f, a,>4 <d, f, a,>4 <g,, b,, f,>4 <g,, b,, f,>4
  \lowermotifone | <d, a,>4 <d, a,>4 <f, a,>4 b,4 | \lowermotifone | <d, a,>4 <d, a,>4 <g,, f,>4 <g,, f,>4
}

%% aligning lyrics to a melody: http://lilypond.org/doc/v2.19/Documentation/learning/aligning-lyrics-to-a-melody
%% 每一个单词/中文字 对一个音符
versecn = \new Lyrics \lyricsto "one" {
  \lyricmode {
  }
}

verseen = \new Lyrics \lyricsto "one" {
  \lyricmode {
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
	\new Voice = "two" {
	  \lower
	}
  >>
  \midi {
	\tempo 2 = 75
  }
  \layout { }
}
