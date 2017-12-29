%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

%% http://www.everyonepiano.cn/Number-1270-1-%E4%B8%A4%E5%8F%AA%E8%80%81%E8%99%8E%E5%B8%A6%E6%AD%8C%E8%AF%8D%E7%89%88%E5%8F%8C%E6%89%8B%E7%AE%80%E8%B0%B1%E9%A2%84%E8%A7%881.html 

global = {
  \key c \major
  \time 4/4
}

uppermotifone = { a'4 a'4 f'4 f'4 }
upper = \absolute {
  \clef "treble"
  \repeat unfold 2 \uppermotifone | f4. f'8 a'4 a'4 | \uppermotifone
  \repeat volta 2 { 
	a'4 a'8 a'8 bes'4 c''4 | a'4 a'4 f'4 f'4 | f'4 f'8 f'8 g'4 a'4 | a'4 a'4 e'4 e'4
	d'4 a'4 g'4 g'4 | d'4 a'4 g'4 g'4 | d'4 a'4 g'4. f'8 | \tuplet 4/4 { f'4 f'4 f'4 f'4 }
	f'4 f'4 f'4 f'4
  }
  f'4 f'4 a'4 g'4 | c''4 c''4 c''4 b'8 a'8 | g'4 g'4 g'4 c''8 bes'8
  a'4 bes'8 c'8 r4 a'4 | g'4 g'4 r4 r8 f'8 | d'4 g'4 g'4. f'8 | c'4 g'4 f'4 f'4
  bes'8 a'8 bes'8 a'8 f'4 r4 | bes'8 a'8 bes'8 a'8 f'4. g'8 | \tuplet 4/4 { f'4 f'4 f'4 f'4 } | f'4 f'4 f'4 f'4
}

lowermotifone = { f,8 c8 f8 a8 f,8 c8 f8 a8 }
lowermotiftwo = { b,8 f8 b,8 d'8 c8 e8 g8 c8 }
lower = \absolute {
  \clef "bass"
  \repeat unfold 4 \lowermotifone
  \repeat volta 2 { 
	\lowermotifone | c8 e8 g8 c'8 c8 e8 g8 c'8 | d8 a8 d'8 f'8 d8 a8 d'8 f'8 | a,8 e8 a8 c'8 a,8 e8 a8 c'8
	\repeat unfold 3 \lowermotiftwo | d,,8 a,,8 d,8 f,8 a,8 d,8 d,8 d,8
	d,8 f,8 a,8 d8 f8 d8 a,8 d,8
  }
  d,,8 a,,8 d,8 f,8 a,8 d,8 d8 d,8 | f,,8 c,8 f,8 a,8 c8 a,8 f,8 c,8 | c,8 e,8 g,8 c8 g,8 e,8 g,8 c8
  d,,8 a,,8 d,8 f,8 a,8 f,8 c8 f,8 | c,8 e,8 g,8 c8 g,8 e,8 g,8 c8 | bes,,8 f,8 bes,8 d8 c,8 e,8 g,8 c8 | a,,8 c,8 e,8 a,8 d,,8 a,,8 d,8 f,8
  \repeat unfold 2 { g,,8 d,8 g,8 a,8 bes,,8 f,8 bes,,8 d8 } | f,,8 c,8 f,8 a,8 c8 f,8 a,8 c8 | c4 c4 c4 c4
}

%% aligning lyrics to a melody: http://lilypond.org/doc/v2.19/Documentation/learning/aligning-lyrics-to-a-melody
%% 每一个单词/中文字 对一个音符
verse = \new Lyrics \lyricsto "one" {
  \lyricmode {
	TODO
  }
}

\score
{
  \new PianoStaff
  <<
	\set PianoStaff.instrumentName = "Piano"
	\new Staff = "one" {
	  \upper
	}
	\new Staff = "two" {
	  \set Staff.midiMinimumVolume = #0.5
	  \set Staff.midiMaximumVolume = #0.7
	  \lower
	}
	% \verse
  >>
  \midi {
	\tempo 2 = 72
  }
  \layout { }
}
