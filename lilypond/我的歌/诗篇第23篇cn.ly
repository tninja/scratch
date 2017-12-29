%% Use convert-ly to update this file if the version is different to the lilypond you use.
%% For more information go to (info "(lilypond)Piano music"). Place cursor after the last
%% parenthesis and C-x C-e.

\header {
  source = "http://www.shenshi777.com/html/?6689.html"
  maintainer = "Kang Tu"
  maintainerEmail = "tninja@gmail.com"
  title = "诗篇第23篇"
}

global = {
  \key d \major
  \clef "bass"
}

upper = \absolute {
  \clef "bass"
  \time 2/4
  g4 f4 | e4 d8~a,8 | c2 | d8~e8 e8~d8 | c2 | g8~g8 a8~g8 | f2 | g8~a8 c'8~a8 | g2 
  a8 d'8 c'8 a'8 | g2 | g8 g8 a8 g8 | f2 | g8 a8 c'8 a8 | g4 g8 e8 | d4~d8~a,8 | c2
}

%% aligning lyrics to a melody: http://lilypond.org/doc/v2.19/Documentation/learning/aligning-lyrics-to-a-melody
%% 每一个单词/中文字 对一个音符
verseone = \new Lyrics \lyricsto "one" {
  \lyricmode {
	耶 和 华 是 我 的 牧 者， 我 必 不 至 缺 乏。
	他 使 我 躺 卧 在 青 草 地 上， 领 我 在 可 安 歇 的 水 边。
  }
}

versetwo = \new Lyrics \lyricsto "one" {
  \lyricmode {
	我 虽 然 行 过 死阴 的幽 谷， 也不 怕遭 害， 因 为 你
	与 我 同 _ 在。 你 _ 的 _ 仗， 你 _ 的 _ 竿 都 _ 安慰 我。
  }
}

versethree = \new Lyrics \lyricsto "one" {
  \lyricmode {
	我 一 生 一 世， 我一 生一 世 必有 恩 惠， 必有 恩 惠
	慈 爱 随 着 我。 我 一 生 一 世， 我 一 生 一 世 必 有 恩 惠
  }
}

\score
{
  \new PianoStaff
  <<
	\set PianoStaff.instrumentName = "Piano"
    \numericTimeSignature
	\new Voice = "one" {
	  \upper
	}
	\verseone
	\versetwo
	\versethree
  >>
  \midi {
	\tempo 2 = 75
  }
  \layout { }
}
