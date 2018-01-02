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
          <es as>8 r16 <as c>16 r8 <c es>8. r16 <es, as>8 [ <as c>8 <c es>8
        ] | \barNumberCheck #10
        <f, bes>8 r16 <bes d>16 r8 <d f>8. r16 <f, bes>8 [ <bes d>8 <d
            f>8 ] \pageBreak | % 11

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
