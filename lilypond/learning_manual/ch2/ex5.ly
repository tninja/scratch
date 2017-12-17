global = { \key f \major \time 6/8 \partial 8 }

SopOneMusic = \relative c'' {
  c8 | c8([ bes)] a a([ g)] f | f'4. b, | c4.~ c4
}
SopOneLyrics = \lyricmode {
  Let | flee -- cy flocks the | hills a -- dorn, __
}
SopTwoMusic = \relative c' {
  r8 | r4. r4 c8 | a'8([ g)] f f([ e)] d | e8([ d)] c bes'
}
SopTwoLyrics = \lyricmode {
  Let | flee -- cy flocks the | hills a -- dorn,
}

\score {
  \new ChoirStaff <<
	\new Staff <<
	  \new Voice = "SopOne" {
		\global
		\SopOneMusic
	  }
	  \new Lyrics \lyricsto "SopOne" {
		\new Lyrics \lyricsto "SopOne" {
		  \SopOneLyrics
		}
	  >>
				\new Staff <<
				  \new Voice = "SopTwo" {
					\global
					\SopTwoMusic
				  }
				  \new Lyrics \lyricsto "SopTwo" {
					\SopTwoLyrics
				  }
				>>
			  >>
				 }
