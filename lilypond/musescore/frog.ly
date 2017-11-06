
\version "2.18.2"
% automatically converted by musicxml2ly from frog.xml

\header {
    encodingsoftware = "MuseScore 2.0.3.1"
    source = "http://musescore.com/score/108640"
    encodingdate = "2016-11-05"
    }

#(set-global-staff-size 20.0750126457)
\paper {
    paper-width = 21.0\cm
    paper-height = 29.7\cm
    top-margin = 1.0\cm
    bottom-margin = 2.0\cm
    left-margin = 1.0\cm
    right-margin = 1.0\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative gis, {
    \clef "bass" \key b \major \numericTimeSignature\time 2/4 \once
    \override TupletBracket #'stencil = ##f
    \times 2/3  {
        gis8 [ fis8 gis8 ] }
    dis4 gis4 ais8 [ b8 ] | % 2
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        ais8 [ gis8 ais8 ] }
    fis2 \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        cis'8 [ b8 ais8 ] }
    | % 3
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        gis8 [ fis8 gis8 ] }
    dis4 gis4 ais8 [ b8 ] | % 4
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        ais8 [ b8 cis8 ] }
    ais2 r4 | % 5
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        gis8 [ fis8 gis8 ] }
    dis4 gis4 ais8 [ b8 ] \break | % 6
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        ais8 [ gis8 ais8 ] }
    fis2 \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        cis'8 [ b8 ais8 ] }
    | % 7
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        gis8 [ fis8 gis8 ] }
    ais4 b4 ais4 | % 8
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        gis8 [ fis8 gis8 ] }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        gis8 [ fis8 gis8 ] }
    gis4 r4 | % 9
    \times 2/3  {
        dis'4 dis8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        dis8 [ b8 cis8 ] }
    dis4 gis4 | \barNumberCheck #10
    fis2 dis4 ( \times 2/3 {
        dis4 ) b8 }
    | % 11
    gis1 \break | % 12
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        gis8 [ ais8 b8 ] }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        ais8 [ b8 cis8 ] }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        b8 [ cis8 dis8 ] }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        cis8 [ dis8 fis8 ] }
    | % 13
    dis4 \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        dis8 [ b8 cis8 ] }
    dis4 gis4 | % 14
    ais4 ( \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        ais8 ) [ b8 ais8 ] }
    gis4 fis4 | % 15
    gis1 | % 16
    gis2 ais2 | % 17
    b4 \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        b8 [ ais8 gis8 ] }
    fis4 dis4 \break | % 18
    \times 2/3  {
        gis4 gis8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        gis8 [ fis8 e8 ] }
    dis2 | % 19
    \times 2/3  {
        b'4 b8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        b8 [ ais8 b8 ] }
    cis4 ais4 | \barNumberCheck #20
    gis2 ais2 | % 21
    b4 \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        b8 [ ais8 gis8 ] }
    fis4 dis4 | % 22
    \times 2/3  {
        gis4 gis8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        gis8 [ fis8 e8 ] }
    dis2 | % 23
    \times 2/3  {
        b'4 b8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        b8 [ ais8 b8 ] }
    cis4 ais4 \break | % 24
    ais2 gis4 r4 | % 25
    R1 \bar "|."
    }


% The score definition
\score {
    <<
        \new Staff <<
            \set Staff.instrumentName = "Violoncello"
            \set Staff.shortInstrumentName = "Vlc."
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
     \midi {}
    }

