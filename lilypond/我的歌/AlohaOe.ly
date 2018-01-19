%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

\header {
  source = "http://www.everyonepiano.cn/Number-8299-1-Aloha-Oe-%E5%A4%8F%E5%A8%81%E5%A4%B7%E6%AD%8C%E6%9B%B2%E5%8F%8C%E6%89%8B%E7%AE%80%E8%B0%B1%E9%A2%84%E8%A7%881.html"
  maintainer = "Kang Tu"
  maintainerEmail = "tninja@gmail.com"
  lastupdated = "2018/Jan/15"
  title = "Aloha 'Oe"
  subtitle = "夏威夷骊歌"
  composer = "Liliuokalani (利留卡拉尼女王)"
}

\markup {
  \fill-line {
	\center-align {
	  \epsfile #X #100 #"mauismall.eps"
	}
  }
}

global = {
  \key g \major
  \clef "bass"
}

uppermotifone = { e2~e4 d4 | c4. b,8 c4 a,4 | g,1~ }
upper = \absolute {
  \clef "bass"
  \time 4/4
  %% page 1
  r4 r4 g,4 c4 | \uppermotifone | %1
  g,2 e2 | d2 d4 cis4 | d4 e4 f4 e4 | d1 | %5
  d2 g,4 c4 | \uppermotifone | %9
  g,2 c4 b,4 | a,2 d4 c4 | b,2 e4 d4 | c1~ | %13
  c2 r4 g,4 | a,2 c2 | f2~f4 a,4 | g,2 c2 | %17
  %% page 2
  e2~e4 c4 | b,4. a,8 b,4 c4 | d4 d4 f4 f4 | e1 | % 21
  c2 r4 g,4 | a,2 c2 | f2~f4 a,4 | g,2 c2 | % 25
  e2~e4 c4 | b,2~b,4 c4 | e4 d2 b,4 | c1~ | % 29
  c2 r4 r4 |
}

lowermotifone = { c,,4 <e,, g,,>2 q4 }
lowermotiftwo = { b,,,4 <d,, f,,>2 q4 }
lowermotifthree = { c,,4 <e,, g,,>4 g,,,4 <e,, g,,>4 }
lowermotiffour = { <c,, f,,>2 <c,, f,,>2 }
lowermotiffive = { <c,, e,,>2 <c,, e,,>2 }
lowermotifsix = { c,,4 f,,4 g,,,4 f,,4 }
lowerlineone = { \lowermotifthree | \lowermotiffour | \lowermotifsix | \lowermotiffive }
lowerlinetwo = { \lowermotifthree | b,,,4 <d,, f,,>2 q4 | \repeat unfold 2 { b,,,4 <d,, f,,>4 } | \lowermotifthree }
lower = \absolute {
  \clef "bass_16"
  \time 4/4
  %% page 1
  r4 r4 r4 r4 | \repeat unfold 3 \lowermotifone | %1
  \lowermotifone | \repeat unfold 3 \lowermotiftwo | %5
  \lowermotiftwo | \repeat unfold 3 \lowermotifone | %9
  \lowermotifone | <c,, e,,>1 | <d,, f,,>1 | \lowermotifone | %13
  \lowerlineone | %17
  %% page 2
  \lowerlinetwo | %21
  \lowerlineone | % 25
  \lowerlinetwo | %29
  c,,2 r4 r4
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

\markup {
  \fill-line {
	\center-align {
	  \epsfile #X #30 #"Liliuokalani.eps"
	}
  }
}