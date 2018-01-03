%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

global = {
  \key c \major
  \time 2/4
}

uppermotifone = { a'4 a'4 f'4 f'4 }
upper = \absolute {
  \clef "bass"
  \repeat volta 2 { |
	c8 d8 e8 c8 | g4 g4 | a8 a8 c'8 a8 | g4 g4 | a8 a8 c'8 |
	g8 a8 g4 | a8 g8 e8 g8 | e8 c8 d8 e8 | c4 c4 |
  }
}

%% aligning lyrics to a melody: http://lilypond.org/doc/v2.19/Documentation/learning/aligning-lyrics-to-a-melody
%% 每一个单词/中文字 对一个音符
verseone = \new Lyrics \lyricsto "one" {
  \lyricmode {
	太 阳 天 空 | 照 ，   花 儿 对 我 | 笑 ； | 小 鸟 说：“早 早 早! 你 为 什 么 | 背 上 小 书 | 包 ？”
  }
}

versetwo = \new Lyrics \lyricsto "one" {
  \lyricmode {
	我 去 上 学 | 校 ，   天 天 不 迟 | 到 ； | 爱 学 习，爱 劳 动! 长 大 要 为 | 人 民 立 功 | 劳
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
	\verseone
	\versetwo
  >>
  \midi {
	\tempo 2 = 50
  }
  \layout { }
}
