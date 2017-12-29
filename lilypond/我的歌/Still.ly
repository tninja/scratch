%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.


\header {
  source = "http://www.231122.com/qita/13259.html"
  maintainer = "Kang Tu"
  maintainerEmail = "tninja@gmail.com"
  lastupdated = "2017/Dec/28"
  title = "安静 Still"
  composer = "Reuben Morgan"
}

global = {
  \key c \major
  \clef "bass"
}

uppermotifone = { e4. g8~g4. c8~ | c2~c4~c8 c8 }
upper = \absolute {
  \clef "bass"
  \time 4/4
  \repeat volta 2 {
	\uppermotifone | a, d8~d4. d8~d2 r4 r4 | \uppermotifone | f4 e8 d4. c8~ \break
	c2 e8 g8 c'8 b8 | a4 a8 a4. g8 g8~g8 r4 e8 g8 c'8 b8 a4 a8 b4. c'8 c'8~ \break
	c'2 e8 g8 c'8 b8 | a4 a8 a4. g8 g8~ | g8 r4 e8 f8 g8 c8~ | c4 e8 d4. c8 c8~ | c1~ | c2~c4
  }
  \alternative {
	r8 e8
  }
}

%% aligning lyrics to a melody: http://lilypond.org/doc/v2.19/Documentation/learning/aligning-lyrics-to-a-melody
%% 每一个单词/中文字 对一个音符
versecn = \new Lyrics \lyricsto "one" {
  \lyricmode {
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
	\versecn
  >>
  \midi {
	\tempo 2 = 82
  }
  \layout { }
}
