%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

\header {
  source = "https://www.jianpu8.com/zongpu/29202.html"
  maintainer = "Kang Tu"
  maintainerEmail = "tninja@gmail.com"
  lastupdated = "2019/Feb/04"
  title = "春节序曲"
  subtitle = ""
  composer = "李焕之"
}

global = {
  \key g \major
  \clef "bass"
}

upper = \absolute {
  \clef "bass"
  \time 4/4
  %% page 1
  | <e a>4 c'8 e'8 <d'~ b~>8 e'16 d'16 c'8 b8 | <e a>4 <e c'>4 <d b>4 <d g>4 | <e a>4 c'8 e'8 <d' b> 8 c'8 d'4 |
}

lower = \absolute {
  \clef "bass"
  \time 4/4
  %% page 1
}

\score
{
  \new PianoStaff
  <<
	\set PianoStaff.instrumentName = "Piano"
	\new Voice = "one" {
	  \upper
	}
	\new Voice = "two" {
	  \set Voice.midiMaximumVolume = #0.5
	  \lower
	}
  >>
  \midi {
	\tempo 2 = 60
  }
  \layout { }
}
