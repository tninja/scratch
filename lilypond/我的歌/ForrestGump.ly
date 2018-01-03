%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

\header {
  source = "http://www.everyonepiano.cn/Number-4525-1-Forrest-Gump-%E9%98%BF%E7%94%98%E6%AD%A3%E4%BC%A0OST%E5%8F%8C%E6%89%8B%E7%AE%80%E8%B0%B1%E9%A2%84%E8%A7%881.html"
  maintainer = "Kang Tu"
  maintainerEmail = "tninja@gmail.com"
  lastupdated = "2017/Dec/31"
  title = "Forrest Gump"
  subtitle = "阿甘正传"
}

global = {
  \key g \major
  \clef "bass"
}

restsection = { r4 r4 r4 r4 }
uppermotifzero = { e'8 f'8 g'8 g'8~g'8 e'8 g'8~ }
uppermotifone = { f'8 g'8 a'8 a'8~a'8 f'8 a'8~ }
upper = \absolute {
  \clef "treble"
  \time 4/4
  %% page 1
  \repeat unfold 4 { \restsection } | \break % 1
  \uppermotifzero | g'8 c''8~c''8 g'8~g'8 e'8. | \uppermotifone | a'1 | \break % 5
  \uppermotifone | a'8 d''8~d''8 b'8~b'8 g'4. | e'8 f'8 g'8 g'8~g'8 c''4 g'8~ | g'1 | \break % 9
  a'8 b'8 c''8 c''8~c''8 a'4 c''8~ | c''8 a'8 c''8~c''8 a'4. | \uppermotifone | a'1 | \break % 13
  f'8 g'8 a'8 a'8~a'8 f'4 d'8~ | d'4 e'8 f'8~f'8 d'4. | c'1 | r4 r4 r8 g,8 c8 d8 | \break % 17
  %% page 2
  \transpose c' c \uppermotifzero | g4 c'8 g8~g8 e4. | <c f>8 g8 a8 a8~a8 f4 <c a>8~ <c a>1 
}

lowermotifone = { c8 g4 g8~g8 g4 g8 }
lowermotiftwo = { c8 a4 a8~a8 a4 a8 }
lower = \absolute {
  \clef "bass"
  \time 4/4
  \repeat unfold 4 { \lowermotifone } | \break % 1
  \repeat unfold 2 \lowermotifone | \repeat unfold 2 \lowermotiftwo | \break % 5
  d8 a4 a8~a8 a4 a8 | b,8 g4 g8~g8 g4 g8 | \lowermotifone | c8 g4 g8 c8 g8 b,8 g8 | \break % 9
  a,8 e4 e8~e8 e4 e8 | a,8 e4 e8 a,8 e8 g,8 e8 | f,8 c4 c8~c8 c4 c8 | f,8 c4 c8 f,8 c8 e,8 c8 | \break % 13
  d,8 a,4 a,8 c,8 a,4 a,8 | b,,8 g,4 g,8~g,8 g,4 g,8 | \repeat unfold 2 \lowermotifone | \break % 17
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
	\tempo 2 = 72
  }
  \layout { }
}
