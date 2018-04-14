%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

\header {
  source = "房龙 巴赫传"
  maintainer = "Kang Tu"
  maintainerEmail = "tninja@gmail.com"
  lastupdated = "2018/Jan/08"
  title = "G小调赋格"
  subtitle = "朱冰 巴赫作品简介"
  subsubtitle = "房龙 巴赫传"
  composer = "巴赫"
}

global = {
  \key c \major
  \clef "bass"
}

upperpatternone = #(define-music-function
					(parser location note)
					(ly:pitch?)
					(make-relative (note) note
					 #{
					 $note 8 $note 8 ~ $note 8
					 #}))
upper = \absolute {
  \clef "bass"
  \time 4/4
  \unfoldRepeats { %% http://lilypond.org/doc/v2.18/Documentation/notation/repeats-in-midi
	%% page 1
	
  }
}

\score
{
  \new Staff
  <<
	\set Staff.midiInstrument = #"violin"
	\new Voice = "one" {
	  \upper
	}
  >>
  \midi {
	\tempo 2 = 72
  }
  \layout { }
}
