%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

\header {
  maintainer = "Kang Tu"
  maintainerEmail = "tninja@gmail.com"
  lastupdated = "2018/Jan/01"
  title = "Simple eval skeleton for lilypond"
}

global = {
  \key c \major
  \clef "bass"
}

voice = \absolute {
  \clef "bass"
  \time 4/4
  	c8 d8 e8 c8 | g4 g4 | a8 a8 c'8 a8 | g4 g4 | a8 a8 c'8
	g8 a8 g4 | a8 g8 e8 g8 | e8 c8 d8 e8 | c4 c4

}

\score
{
  \new Staff
  <<
	\set Staff.instrumentName = "Piano"
	\new Voice = "one" {
	  \voice
	}
  >>
  \midi {
	\tempo 2 = 72
  }
  % \layout { }
}
