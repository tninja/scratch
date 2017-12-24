%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

%% http://www.sooopu.com/html/38/38730.html

\header {
  source = "http://m.gepuwang.net/gangqinpu/4974.html"
  maintainer = "Kang Tu"
  maintainerEmail = "tninja@gmail.com"
  lastupdated = "2017/Dec/24"
  title = "圣诞快乐 钢琴谱"
  subtitle = "祝大家2017年圣诞快乐"
  subsubtitle = "抄写自http://www.sooopu.com/html/38/38730.html"
}

global = {
  \key c \major
  \clef "bass"
}

upper = \absolute {
  \clef "bass"
  \time 3/4
  g'4 | c'4 c'8 d'8 c'8 b8 | a4 a4 a4 | d'4 d'8 e'8 d'8 c'8 | b4 g4 \break
  g4 | e'4 e'8 f'8 e'8 d'8 | c'4 a4 g8 g8 | a4 d'4 b4 | c'4 c'4 \break
  g4 | c'4 c'4 c'4 | b4 b4 b4 | c'4 b4 a4 | g4 g4 \break
  d'4 | e'4 d'4 c'4 | g'4 g4 g8 g8 | a4 d'4 b4 | c'4 c'4 c'4 \break
}

%% aligning lyrics to a melody: http://lilypond.org/doc/v2.19/Documentation/learning/aligning-lyrics-to-a-melody
%% 每一个单词/中文字 对一个音符
versecn = \new Lyrics \lyricsto "one" {
  \lyricmode {
	我们 祝 你 _ 圣 诞 快 乐， 我们 祝 你 _ 圣 诞 快 乐，
	我们 祝 你 _ 圣 诞 快 乐， 祝 你 _ 新 年 快 乐。 _
	无论 你 在 何 方， _ 为你 衷 心 祝 福。
	祝你 圣 诞 节 安 好， 祝 你 新 年 快 乐。
  }
}

verseen = \new Lyrics \lyricsto "one" {
  \lyricmode {
	We wish You A Mer -- ry Christ -- mas. We wish you a mer -- ry Christ -- mas.
	We wish You A Mer -- ry Christ -- mas _ And a Hap -- py New Year.
	Good tid -- ings to you , Wher -- ev -- er you are. _
	Good tid -- ings for Christ -- mas, _ And a Hap -- py New Year.
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
  >>
  \midi {
	\tempo 2 = 75
  }
  \layout { }
}
