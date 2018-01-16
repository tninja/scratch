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
uppermotifzero = { e'8 f'8 g'8 g'8~g'8 e'4 g'8~ }
uppermotifone = { f'8 g'8 a'8 a'8~a'8 f'4 a'8~ }
uppermotiftwo = { r8 d'''8 g''8 d''8~d''8 g''8 d''8 g'8 }
upperpatternone = #(define-music-function
					(parser location note)
					(ly:pitch?)
					(make-relative (note) note
					 #{
					 $note 8 $note 8 ~ $note 8
					 #}))
upper = \absolute {
  \clef "treble"
  \time 4/4
  %% page 1
  \repeat unfold 4 { \restsection } | % 1
  \uppermotifzero | g'8 c''8~c''8 g'8~g'8 e'4. | \uppermotifone | a'1 | % 5
  \uppermotifone | a'8 d''8~d''8 b'8~b'8 g'4. | e'8 f'8 g'8 g'8~g'8 c''4 g'8~ | g'1 | % 9
  a'8 b'8 c''8 c''8~c''8 a'4 c''8~ | c''4 a'8 c''8~c''8 a'4. | \uppermotifone | a'1 | % 13
  f'8 g'8 a'8 a'8~a'8 f'4 d'8~ | d'4 e'8 f'8~f'8 d'4. | c'1 | r4 r4 r8 g,8 c8 d8 | % 17
  %% page 2
  \clef "bass"
  \transpose c' c \uppermotifzero | g4 c'8 g8~g8 e4. | <c f>8 g8 a8 a8~a8 f4 <c a>8~ <c a>1 | % 21
  <d f>8 g8 a8 <f a>8~<f a>8 f4 a8~ | a4 d'8 b8~b8 g4. | e8 f8 g8 g8~g8 c'4 g8~ | g2 <g, c>4 <b, d>4 | % 25
  <c a>8 b8 c'8 <e c'>8 <e c'>8 a4 <e c'>8~ | <e c'>4 a8 <e c'>8~<e c'>8 a4. | <c f>8 g8 a8 <c a>8~<c a>8 f4 <c a>8~ | <c a>1 | % 29
  <d f>8 g8 a8 <d a>8~<d a>8 f4 <a, d>8~ | <b, d>4 e8 f8~f8 d4. | e'8 f'8 g'8 g'8~g'8 c''4 g'8~ | g'1 | % 33
  e8 f8 g8 g8~g8 c'4 g8~ | \tuplet 3/2 { g8 c8 d8 } \tuplet 3/2 { e8 f8 g8 } \tuplet 3/2 { a8 b8 c'8 } \tuplet 3/2 { d'8 e'8 f'8 } |
  \clef "treble"
  <c'' e''>8 <d'' f''>8 <e'' g''>8 q~q <c'' e''>4 <e'' g''>8~ | q4 <e'' c''>8 <e'' g''>8~q <c'' e''>4. | %37
  %% page 3
  <a' f''>8 <b' g''>8 <c'' a''>8 q~q <c'' f''>4 <c'' a''>8~ | <c'' a''>1 | <d'' f''>8 <e'' g''>8 <f'' a''>8 q~q <d'' f''>4 <f'' a''>8~ | q4 <b'' d'''>8 <g'' b''>8~q <d'' g''>4. | % 41
  <c'' e''>8 <d'' f''>8 <e'' g''>8 q~q <g'' c'''>4 <e'' g''>8~ | q1 | <c'' a''>8 <d'' b''>8 <e'' c'''>8 q~q <c'' a''>4 <e'' c'''>8~ | q4 <c'' a''>8 <e'' c'''>8~q <c'' a''>4. | % 45
  <a' f''>8 <b' g''>8 <c'' a''>8 q~q <a' f''>4 <c'' a''>8~ | q1 | <d'' f''>8 <e'' g''>8 <f'' a''> q~q <d'' f''>4 <b' d''>8~ | q4 e''8 f''8~f''8 d''4. | % 49
  \repeat unfold 2 { c''1 | \uppermotiftwo | } % 53
  <g' d''>4. <c'' e''>8~q2 | \uppermotiftwo | <c'' e''>8 f''8 g''8 g''8~g''8 d'''4 g''8 | <c'' f''>2 <c'' g''>2 | %57
  %% page 4
  <c'' e''>8 f''8 g''8 g''8~g''8 d'''4 g''8 | <c'' f''>2 <c'' g''>2 | <c'' e''>8 f''8 g''8 g''8~g''8 <g'' d'''>4 b''8 | <f'' a''>2 <f'' b''>2 | %61
  <e'' g'' c'''>1 | % 65
}

lowermotifone = { c8 g4 g8~g8 g4 g8 }
lowermotiftwo = { c8 a4 a8~a8 a4 a8 }
lowermotifthree = { c,,8 a,,8 c,8 f,8~f,8 c,8 a,8 f,8 }
lowermotiffour = { c,8 g,8 c8 g8~g8 g4 g8 } 
lowermotiffive = { c,8 g,8 c8 e8 c8 e8 c8 g,8 }
lowermotifsix = { c8 g4 g8~g8 g4 g8 }
lower = \absolute {
  \clef "bass"
  \time 4/4
  %% page 1
  \repeat unfold 4 { \lowermotifone } | % 1
  \repeat unfold 2 \lowermotifone | \repeat unfold 2 \lowermotiftwo | % 5
  d8 a4 a8~a8 a4 a8 | b,8 g4 g8~g8 g4 g8 | \lowermotifone | c8 g4 g8 c8 g8 b,8 g8 | % 9
  a,8 e4 e8~e8 e4 e8 | a,8 e4 e8 a,8 e8 g,8 e8 | f,8 c4 c8~c8 c4 c8 | f,8 c4 c8 f,8 c8 e,8 c8 | % 13
  d,8 a,4 a,8 c,8 a,4 a,8 | b,,8 g,4 g,8~g,8 g,4 g,8 | \repeat unfold 2 \lowermotifone | % 17
  %% page 2
  \clef "bass_8"
  c,,8 g,,8 c,8 e,8 e,8 c,8 g,8 e,8 | c,,8 a,,8 c,8 e,8~e,8 c,8 g,8 e,8 | \repeat unfold 2 \lowermotifthree | % 21
  d,,8 a,,8 d,8 f,8 c,,8 a,,8 c,8 f,8 | b,,,8 g,,8 b,,8 d,8~d,8 g,8 d,8 b,,8 | c,,8 g,,8 c,8 e,8 e,8 c,8 g,8 e,8 | c,,8 g,,8 c,8 e,8 <c,, c,>4 <b,,, b,,>4 | % 25
  a,,,8 e,,8 a,,8 c,8 c,8 a,,8 e,8 c,8 | a,,,8 e,,8 a,,8 c,8 <a,, e,>4 <g,,, g,,>4 | f,,,8 f,,8 a,,8 c,8 f,4 c,,4 | f,,,8 f,,8 a,,8 c,8 <f,,, f,,>4 <e,,, e,,>4 | % 29
  <d,,, d,,>8 a,,8 d,8 f,8 d,8 a,,8 d,8 a,8 | g,,,8 d,,8 g,,8 b,,8 b,,8 d,4. | \lowermotifone | \lowermotiffour | % 33
  \transpose c, c,, \lowermotiffour | c,,8 g,,8 c,8 e,8 e,8 g,,8 c,,8 d,,8 | % 37
  \repeat unfold 2 \lowermotiffive |
  %% page 3
  \clef "bass"
  c,8 a,8 c8 f8 c8 f8 c8 a,8 | c,8 a,8 c8 f8 c8 f8 a,8 d,8 | d,8 a,8 d8 f8 d8 f8 d8 f,8 | g,,8 d,8 g,8 b,8~b,8 g,8 d8 b,8 | % 41
  \lowermotiffive | c,8 g,8 c8 e8 c,8 g,8 b,,8 g,,8 | a,,8 e,8 a,8 c8 a,8 c8 a,8 e,8 | a,,8 e,8 a,8 c8 a,,8 e,8 g,,8 e,8 | % 45
  f,,8 c,8 f,8 a,8 c8 a,8 f8 c8 | f,,8 c,8 f,8 a,8 f,,8 c,8 e,,8 c,8 | d,,8 d,8 f,8 a,8~a,8 f,8 d8 a,8 | g,,8 d,8 g,8 b,8~b,8 g,8 d4 | % 49
  \repeat unfold 4 \lowermotifsix | % 53
  \repeat unfold 4 \lowermotifsix | % 57
  %% page 4
  \repeat unfold 4 \lowermotifsix | % 61
  <c g>1 | % 65
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
