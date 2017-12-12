\version "2.11.23"
								% Use convert-ly to update this file if the version is different to the lilypond you use.
								% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
								% parenthesis and C-x C-e.

global = {
  \key c   \major
  \time 4/4
}

upper = \relative c'' {
  \global
  g4~ g c2~ | c4~ c8 a~ a2
  c4~ (c8 d~ d4 e)
}

lower = \relative c {
  \global
  a2 g 
  f2 e 
  d2 b
}

\score {
  \new PianoStaff <<
	\set PianoStaff.instrumentName = "Piano"
	\new Staff = "upper" \upper
	\new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
