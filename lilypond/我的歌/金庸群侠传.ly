%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

\header {
  source = "http://www.guzhengw.cn/html/255-18/18677.htm"
  maintainer = "Kang Tu"
  maintainerEmail = "tninja@gmail.com"
  lastupdated = "2019/Jan/26"
  title = "金庸群侠传"
  subtitle = "竹苑情歌"
  composer = "EveryonePiano"
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
  | <c' e'>2 a8 c'8 e'8 g'8 | <f' a'>4 g'8 a'8 <c' e'>4 d'8 c'8 | <b d'>8 a'8 g'8 e'8 d'4 c'8 d'8 |
  | <e' g'>4 g8 a8 <g~ b~>8 c'32 b32 a8 g8 | <e a>2 e8 c'8 a8 <e e'>16 d'16 | <g c'>4 c'8 d'8 <e' g'>8 a'8 g'8 |
  | <d' f'>4 a'8 a'8 g'8 f'4 g'8 a'8 | <a d'>4 d'8 e'8 d'4 c'8 a8 | <g d'>8 a'8 g'8 e'8 d'4 e'8 d'8 |
  | <a~ c'~>4 c''8 c''8 b'8 a'8 g'8 | <f' a'>2 <f' a'>4 d'8 e'8 | <b e' g'>4 g8 a8 <d g b>4 a8 g8 |
  | <e a>8 c''16 b'16 a'8 g'8 <e' a'>2 | <e' a'>2  r4 r4 |
}

lowermotifone = { a,,8 e,8 a,8 c8 g,,8 d,8 g,8 b,8 }
lower = \absolute {
  \clef "bass"
  \time 4/4
  %% page 1
  \lowermotifone | a,,8 e,8 a,8 c8 a,8 e,8 e,,8 g,,8 | \lowermotifone |
  | a,,8 e,8 a,8 b,8 c8 b,8 b,,8 g,,8 | f,,8 c,8 f,8 a,8 e8 a,8 c8 e8 | g,,8 d,8 g,8 d,4 g,8 d,8 g,,8 |
  | e,,8 b,,8 e,8 g,8 g,,8 d,8 g,8 b,8 | a,,8 e,8 a,8 d8 r4 a,,8 b,,8 | c,8 g,8 c8 e4 g,8 c8 d8 | 
  | b,,8 f,8 b,8 c8 d8 f8 d8 b,8 | d,,8 a,,8 d,8 f,8 a,8 f,8 d,8 a,,8 | g,,8 d,8 g,8 b,8 d8 b,4 g,,8 |
  | a,,8 e,8 a,8 a,,8 g,,8 d,8 b,8 g,,8 | f,,8 c,8 f,8 g,8 a,4 c,8 f,,8 | e,,8 b,,8 e,8 g,8 g,,8 d,8 g,8 g,,8 |
  | a,,8 e,8 a,8 d8 e8 a8 d8 e8 | <a,, e, a,>1 |
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
