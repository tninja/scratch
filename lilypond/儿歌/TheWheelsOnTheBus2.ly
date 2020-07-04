%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

%% http://www.everyonepiano.cn/Number-1270-1-%E4%B8%A4%E5%8F%AA%E8%80%81%E8%99%8E%E5%B8%A6%E6%AD%8C%E8%AF%8D%E7%89%88%E5%8F%8C%E6%89%8B%E7%AE%80%E8%B0%B1%E9%A2%84%E8%A7%881.html 

global = {
  \key f \major
  \time 2/2
}

upper = \absolute {
  \clef "treble"
  d'4 | g'4 g'8 g'8 | g'4 a'4 | b'4 a'4 |
  g'2 | a'4 a'4 | a'2 | f'4 e'4 |
}

lower_motif = \absolute { c,8 g,8 c,8 g,8 }

lower = \absolute {
  \clef "bass"
  \repeat unfold 4 \lower_motif
  \repeat unfold 3 \lower_motif | c,8 g,8 c,4 
}

%% aligning lyrics to a melody: http://lilypond.org/doc/v2.19/Documentation/learning/aligning-lyrics-to-a-melody
%% 每一个单词/中文字 对一个音符
verse = \new Lyrics \lyricsto "one" {
  \lyricmode {
	两 只 老 虎 | 两 只 老 虎 | 跑 得 快 | 跑 得 快
	一 只 没 有 耳 朵 | 一 只 没 有 尾 巴 | 真 奇 怪 | 真 奇 怪
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
	% \verse
	% \new Voice = "two" {
	%   \lower
	% }
  >>
  \midi {
	\tempo 2 = 72
  }
  \layout { }
}
