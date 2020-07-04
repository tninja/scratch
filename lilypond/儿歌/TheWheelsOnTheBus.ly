%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

%% http://www.everyonepiano.cn/Number-1270-1-%E4%B8%A4%E5%8F%AA%E8%80%81%E8%99%8E%E5%B8%A6%E6%AD%8C%E8%AF%8D%E7%89%88%E5%8F%8C%E6%89%8B%E7%AE%80%E8%B0%B1%E9%A2%84%E8%A7%881.html 

global = {
  \key e \major
  \time 4/4
}

upper = \absolute {
  \clef "bass"
  g,4 | c8 c8 d8 e8 d4 c4 | g4 d4 c4 c4
  d4 b,4 g,4 g,4 | g4 d4 c4 g,4
  c8 c8 d8 e8 d4 c4 | g4 e4 c4 c4
  d4 d8 f8 e4 d4 | c4 c4 c4
}

\score
{
  \new PianoStaff
  <<
	\set PianoStaff.instrumentName = "Piano"
	\new Voice = "one" {
	  \upper
	}
  >>
  \midi { }
  \layout { }
}
