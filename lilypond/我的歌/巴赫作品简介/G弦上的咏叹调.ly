%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

\header {
  source = "房龙 巴赫传"
  maintainer = "Kang Tu"
  maintainerEmail = "tninja@gmail.com"
  lastupdated = "2018/Jan/08"
  title = "G弦上的咏叹调"
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
uppermotifone = { g2~ g16 e16 b,16 a,16 d16 c16 g16 f16 }
uppersectionone = {
  e1~ | e8 a16 f16 d16 c16 b,16 c16 b,8.~a,16  g,4 | 
  \uppermotifone | \transpose g f \uppermotifone | %f2 f16 d16 a,16 g,16 c16~b,16 f16~e16 |
  e4. fis16~ g16 c8 c32 d32 e16 e16 d,16 d16 c16 | b,16~ a,16 a,32 b,32 c16 c8 b,16 a,16 g,4 |
}
uppersectiontwo = {
  b,4~ b,4 c8 b,32 a,32 b,32 g,16 g4.~ bis,8
  %% page 2
  a,8 a8~ a16 g16 f16 e16 e32~f4~f32 e32 d32 c32 b,16 a,16 | gis,16 a16 b,8~ b,16 c16 d8~ d16 e16 f8~ f8 e8 |
  d16~c16 b,16~a,16 b,16 c32 d32 c16 b,16 a,2 | c4~ c16 e16 d16 c16 a4. g16 fis16 |
  e32~ d16 g8 g,8 a,8. b,8 c16 b,8. a,16 g,4 | c4. e16~ d16 d4. f16~ e16 |
  e4. g16~ f16 f2 | g4~ g,16 b,16 d16 f16 f16 d16 e8~ e8 e16 f64 g64 |
  c4~ c16 e16 g16 bes16 b8 a4~ c8 | b,16 d16 f4~ a,8 g,8 d32 e32 f16~ f16 e8 d16 |
}
upper = \absolute {
  \clef "bass"
  \time 4/4
  \unfoldRepeats { %% http://lilypond.org/doc/v2.18/Documentation/notation/repeats-in-midi
	%% page 1
	\repeat unfold 2 \uppersectionone
	\repeat volta 2 \uppersectiontwo
	\alternative {
	  { b,16~a,16 a,32 b,32 c16 c8 b,16 a,16 | g,2 }
	  { c32~ b,32 a,8 b,8 b,16. a,32 b,16 c16 c2 }
	}
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
