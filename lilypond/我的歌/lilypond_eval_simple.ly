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
    g'4 | c'4 c'8 d'8 c'8 b8 | a4 a4 a4 | d'4 d'8 e'8 d'8 c'8 | b4 g4 \break
  g4 | e'4 e'8 f'8 e'8 d'8 | c'4 a4 g8 g8 | a4 d'4 b4 | c'4 c'4 \break
  g4 | c'4 c'4 c'4 | b4 b4 b4 | c'4 b4 a4 | g4 g4 \break
  d'4 | e'4 d'4 c'4 | g'4 g4 g8 g8 | a4 d'4 b4 | c'4 c'4 c'4 \break

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
