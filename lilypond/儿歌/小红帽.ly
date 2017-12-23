%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

%% https://www.google.com/search?q=%E5%84%BF%E6%AD%8C+%E5%8F%8C%E6%89%8B%E7%AE%80%E8%B0%B1&client=firefox-b-1&tbm=isch&source=iu&ictx=1&fir=hTYKjJ4cf9tvfM%253A%252CGW8ciNpDL2_xyM%252C_&usg=__jQaUOXtujTGffB1eJz6KIOydPeo%3D&sa=X&ved=0ahUKEwj0-9GN1pfYAhVH4WMKHXAaB0QQ9QEIKjAA#imgrc=pvRoflNMNA2oyM

global = {
  \key c \major
  \time 2/4
}

uppermotifone = { c8 d8 e8 f8 }
upper = \absolute {
  \clef "treble"
  \uppermotifone | g4 e8 c8 | c'4 a8 f8 | g8 g8 e4
  \uppermotifone | g8 e8 d8 c8 | d4 e4 | d4 g4 
  \uppermotifone | g4 e8 c8 | c'4 a8 f8 | g4 e4
  \uppermotifone | g8 e8 d8 c8 | d4 e4 | c4 c4 
}

lowermotifone = \repeat unfold 2 { c,8 <g, e,>8 }
lowermotiftwo = \repeat unfold 2 { c,8 <a, f,>8 }
lowermotifthree = { g,,8 <d, f,>8 g,,8 <c, e,>8 } 
lower = \absolute {
  \clef "treble"
  \lowermotifone | \lowermotifone | \lowermotiftwo | \lowermotifone
  \lowermotifone | \lowermotifone | \lowermotifthree | \repeat unfold 2 { g,,8 <b,, d,>8 }
  \lowermotifone | \lowermotifone | \lowermotiftwo | \lowermotifone
  \lowermotifone | \lowermotifone | \lowermotifthree | \lowermotifone
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
	  \lower
	}
  >>
  \midi {
	\tempo 2 = 72
  }
  \layout { }
}
