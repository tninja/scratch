
\version "2.18.2"
% automatically converted by musicxml2ly from The_Lost_Painting_from_Castlevania_Symphony_of_the_Night.xml

\header {
    encodingsoftware = "MuseScore 2.0.3.1"
    source = "http://musescore.com/score/2683096"
    encodingdate = "2016-11-06"
    composer = "Composed by Michiru Yamane"
    title = "The Lost Painting"
    }

#(set-global-staff-size 20.0750126457)
\paper {
    paper-width = 21.59\cm
    paper-height = 27.94\cm
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
PartPOneVoiceOne =  \relative d' {
    \clef "treble" \key a \major \time 4/4 | % 1
    \tempo 4=116 R1 | % 2
    <d fis>1 \mp | % 3
    \tempo 4=108 | % 3
    <cis e>1 \bar "||"
    \tempo 4=116 | % 4
    cis1 \pageBreak | % 5
    R1 | % 6
    a'''1 \pp ~ | % 7
    a1 \repeat volta 2 {
        | % 8
        \tempo 4=116 | % 8
        R1*3 \pageBreak | % 11
        R1*4 \pageBreak | % 15
        R1 \bar "||"
        R1*3 \pageBreak | % 19
        R1 | \barNumberCheck #20
        fis,2. \mf gis8 [ a8 ] | % 21
        gis4 e4 e4 cis4 | % 22
        fis2. gis8 [ a8 ] \pageBreak | % 23
        cis4 gis4 gis4 cis,4 | % 24
        cis'4 b8 [ cis8 ] a2 | % 25
        r4 b4 gis2 | % 26
        a4 \tempo 4=112 b8 [ \tempo 4=108 a8 ] \tempo 4=104 gis2 | % 27
        \tempo 4=100 | % 27
        R1 \bar "||"
        \pageBreak | % 28
        \tempo 4=116 | % 28
        R1*4 \bar "||"
        \pageBreak | % 32
        cis,4. b8 cis4 e4 ~ | % 33
        e4 dis2 b8 [ fis8 ] | % 34
        cis'4. b8 cis4 e4 | % 35
        dis8 [ e8 ] fis2 fis8 [ gis8 ] \pageBreak | % 36
        a4 gis8 [ a8 ] gis8 [ e8 ] cis4 | % 37
        fis4 e8 [ fis8 ] e8 [ cis8 ] a4 | % 38
        b8 [ a8 ] b4. fisis8 [ a8 b8 ] \pageBreak | % 39
        cis8 [ b8 ] cis2 cis16 -> [ dis16 -> eis16 -> gis16 -> ] \bar
        "||"
        cis,4. b8 cis4 e4 ~ | % 41
        e4 dis2 b8 [ fis8 ] \pageBreak | % 42
        cis'4. b8 cis4 e4 | % 43
        dis8 [ e8 ] fis2 fis8 [ gis8 ] | % 44
        a4 gis8 [ a8 ] gis8 [ e8 ] cis4 | % 45
        fis4 gis8 [ a8 ] gis8 [ e8 ] b4 \pageBreak | % 46
        a4 gis8 [ fis8 ] gis8 [ e8 ] cis4 | % 47
        \tempo 4=108 | % 47
        fis1 }
    | % 48
    \tempo 4=116 | % 48
    R1 | % 49
    R1 \pageBreak | \barNumberCheck #50
    R1*4 \pageBreak | % 54
    R1*2 \bar "|."
    ^\markup{ \bold {Fade Out} } }

PartPTwoVoiceOne =  \relative fis, {
    \clef "bass" \key a \major \time 4/4 R1*2 | % 3
    R1 \bar "||"
    R1 \pageBreak | % 5
    R1*3 \repeat volta 2 {
        | % 8
        <fis fis'>8 ^\markup{ \italic {ritardando} } ^\markup{ \italic
            {a tempo} } \f [ cis''8 ] r8 cis8 <e,, e'>8 [ cis''8 fis8
        cis8 ] | % 9
        <d,, d'>8 [ a''8 d8 a8 ] <cis,, cis'>8 [ gis''8 cis8 gis8 ] |
        \barNumberCheck #10
        b,8 [ fis'8 d'8 gis,8 ] <cis,, cis'>8 [ gis''8 cis8 gis8 ]
        \pageBreak | % 11
        <fis, fis'>8 [ cis''8 fis8 cis8 ] <fis,, fis'>8 [ cis'8 fis8 gis8
        ] | % 12
        <fis, fis'>8 [ cis''8 ] r8 cis8 <e,, e'>8 [ cis''8 fis8 cis8 ] | % 13
        <d,, d'>8 [ a''8 d8 a8 ] <cis,, cis'>8 [ gis''8 cis8 gis8 ] | % 14
        b,8 [ fis'8 d'8 gis,8 ] <cis,, cis'>8 [ gis''8 cis8 gis8 ]
        \pageBreak | % 15
        <fis, fis'>8 [ cis''8 fis8 cis8 ] <fis,, fis'>8 [ a'8 cis8 fis8
        ] \bar "||"
        <d,, d'>8 [ fis'8 a8 cis8 ] e8 [ cis8 a8 fis8 ] | % 17
        <cis, cis'>8 [ e'8 gis8 cis8 ] e8 [ cis8 gis8 e8 ] | % 18
        <d, d'>8 [ fis'8 a8 cis8 ] e8 [ cis8 a8 fis8 ] \pageBreak | % 19
        <cis, cis'>8 [ e'8 gis8 cis8 ] e8 [ cis8 gis8 e8 ] |
        \barNumberCheck #20
        <fis, fis'>8 [ cis''8 fis8 cis8 ] <e,, e'>8 [ cis''8 fis8 cis8 ]
        | % 21
        <cis,, cis'>8 [ cis''8 gis'8 cis,8 ] <gis, gis'>8 [ cis'8 gis'8
        cis,8 ] | % 22
        <fis,, fis'>8 [ cis''8 gis'8 cis,8 ] <e,, e'>8 [ cis''8 gis'8
        cis,8 ] \pageBreak | % 23
        <cis,, cis'>8 [ cis''8 gis'8 cis,8 ] <gis, gis'>8 [ cis'8 gis'8
        cis,8 ] | % 24
        <d,, d'>8 [ fis'8 a8 cis8 ] e8 [ cis8 a8 fis8 ] | % 25
        <cis, cis'>8 [ e'8 gis8 cis8 ] e8 [ cis8 gis8 e8 ] | % 26
        R1*2 \bar "||"
        \pageBreak | % 28
        <fis, fis'>8 ^\markup{ \italic {rit. poco a poco} } ^\markup{
            \italic {a tempo} } [ cis''8 ] r8 cis8 <e,, e'>8 [ cis''8
        fis8 cis8 ] | % 29
        <d,, d'>8 [ a''8 d8 a8 ] <cis,, cis'>8 [ gis''8 cis8 gis8 ] |
        \barNumberCheck #30
        b,8 [ fis'8 d'8 gis,8 ] <cis,, cis'>8 [ gis''8 cis8 gis8 ] | % 31
        <fis, fis'>8 [ cis''8 fis8 cis8 ] <fis,, fis'>8 [ a'8 cis8 fis8
        ] \bar "||"
        \pageBreak | % 32
        fis,,8 [ cis'8 fis8 cis8 ] cis8 [ fis8 a8 cis8 ] | % 33
        a,8 [ e'8 a8 e8 ] fis8 [ a8 cis8 ] r8 | % 34
        fis,,8 [ cis'8 fis8 cis8 ] cis8 [ fis8 a8 cis8 ] | % 35
        b,8 [ fis'8 b8 fis8 ] b8 [ dis8 e8 fis8 ] \pageBreak | % 36
        <d,, d'>8 [ a''8 d8 gis8 ] cis,,8 [ gis'8 cis8 gis'8 ] | % 37
        b,,8 [ fis'8 b8 fis'8 ] a,,8 [ e'8 a8 e'8 ] | % 38
        g,,8 [ d'8 g8 d8 ] g8 [ d'8 g8 d8 ] \pageBreak | % 39
        <cis,, cis'>8 [ gis''8 cis8 gis8 ] gis8 [ cis8 gis'8 cis,8 ]
        \bar "||"
        fis,,8 [ cis'8 fis8 cis8 ] cis8 [ fis8 a8 cis8 ] | % 41
        a,8 [ e'8 a8 e8 ] fis8 [ a8 cis8 ] r8 \pageBreak | % 42
        fis,,8 [ cis'8 fis8 cis8 ] cis8 [ fis8 a8 cis8 ] | % 43
        b,8 [ fis'8 b8 fis8 ] b8 [ dis8 e8 fis8 ] | % 44
        <d,, d'>8 [ a''8 d8 gis8 ] <cis,,, cis'>8 [ gis''8 cis8 gis'8 ]
        | % 45
        b,,8 [ fis'8 b8 fis'8 ] <cis,, cis'>8 [ gis''8 cis8 fis8 ]
        \pageBreak | % 46
        <d,, d'>8 [ a''8 d8 ] r8 <cis,, cis'>8 [ gis''8 ] r8 fis'8 | % 47
        R1 }
    | % 48
    <fis,, fis'>8 ^\markup{ \italic {ritardando} } \f ^\markup{ \italic
        {a tempo} } [ cis''8 ] r8 cis8 <e,, e'>8 [ cis''8 fis8 cis8 ] | % 49
    <d,, d'>8 [ a''8 d8 a8 ] <cis,, cis'>8 [ gis''8 cis8 gis8 ]
    \pageBreak | \barNumberCheck #50
    b,8 \f [ fis'8 \> d'8 gis,8 ] <cis,, cis'>8 [ gis''8 cis8 gis8 ] | % 51
    <fis, fis'>8 \! \mf \> [ cis''8 fis8 cis8 ] <fis,, fis'>8 [ cis'8
    fis8 gis8 ] | % 52
    <fis, fis'>8 \! \mp \> [ cis''8 ] r8 cis8 <e,, e'>8 [ cis''8 fis8
    cis8 ] | % 53
    <d,, d'>8 \! \p \> [ a''8 d8 a8 ] <cis,, cis'>8 [ gis''8 cis8 gis8 ]
    \pageBreak | % 54
    b,8 \! \pp \> [ fis'8 d'8 gis,8 ] <cis,, cis'>8 [ gis''8 cis8 gis8 ]
    | % 55
    <fis, fis'>8 \! \ppp \> [ cis''8 fis8 cis8 ] <fis,, fis'>8 [ a'8 cis8
    fis8 ] \bar "|."
    \! }

PartPThreeVoiceOne =  \relative fis {
    \clef "bass" \key a \major \time 4/4 | % 1
    fis4 \mf e4 cis2 | % 2
    d1 | % 3
    \ottava #-1 | % 3
    cis,2 ^\markup{ \italic {ritardando} } cis,2 \ottava #0 \bar "||"
    fis'1 ^\markup{ \italic {a tempo} } ~ \pageBreak | % 5
    fis1 | % 6
    fis1 ~ | % 7
    fis1 \repeat volta 2 {
        | % 8
        fis'8 \mf r4. e8 r4. | % 9
        d8 r4. cis8 r4. | \barNumberCheck #10
        b8 r4. cis8 r4. \pageBreak | % 11
        fis8 r4. fis8 r4. | % 12
        fis8 r4. e8 r4. | % 13
        d8 r4. cis8 r4. | % 14
        b8 r4. cis8 r4. \pageBreak | % 15
        fis8 r4. fis8 r4. \bar "||"
        d8 r2.. | % 17
        cis8 r2.. | % 18
        d8 r2.. \pageBreak | % 19
        cis8 r2.. | \barNumberCheck #20
        fis8 r4. e8 r4. | % 21
        cis8 r4. gis'8 r4. | % 22
        fis8 r4. e8 r4. \pageBreak | % 23
        cis8 r4. gis'8 r4. | % 24
        d8 r2.. | % 25
        cis8 r2.. | % 26
        a4 ^\markup{ \italic {rit. poco a poco} } b8 [ a8 ] gis2 | % 27
        cis,4 -. gis'4 -. cis,2 \bar "||"
        \pageBreak | % 28
        fis'8 ^\markup{ \italic {a tempo} } r4. e8 r4. | % 29
        d8 r4. cis8 r4. | \barNumberCheck #30
        b8 r4. cis8 r4. | % 31
        fis8 r4. fis8 r4. \bar "||"
        \pageBreak | % 32
        fis,8 r2.. | % 33
        a8 r2.. | % 34
        fis8 r2.. | % 35
        b8 r2.. \pageBreak | % 36
        d8 r2.. | % 37
        b8 r2.. | % 38
        g8 r2.. \pageBreak | % 39
        cis8 r2.. \bar "||"
        fis,8 r2.. | % 41
        a8 r2.. \pageBreak | % 42
        fis8 r2.. | % 43
        b8 r2.. | % 44
        d8 r2.. | % 45
        b8 r4. cis8 r4. \pageBreak | % 46
        d8 r4. cis8 r4. | % 47
        fis4 ^\markup{ \italic {ritardando} } -. cis4 -. fis,2 }
    | % 48
    fis'8 \mf ^\markup{ \italic {a tempo} } r4. e8 r4. | % 49
    d8 r4. cis8 r4. \pageBreak | \barNumberCheck #50
    b8 r4. cis8 r4. | % 51
    fis8 \mf \> r4. fis8 r4. | % 52
    fis8 \! \mp \> r4. e8 r4. | % 53
    d8 \! \p \> r4. cis8 r4. \pageBreak | % 54
    b8 \! \pp \> r4. cis8 r4. | % 55
    fis8 \! \ppp \> r4. fis8 r4. \bar "|."
    \! }

PartPFourVoiceOne =  \relative fis, {
    \clef "bass_8" \key a \major \time 4/4 | % 1
    fis4 \mf e4 cis2 | % 2
    d1 | % 3
    cis2 ^\markup{ \italic {ritardando} } cis,2 \bar "||"
    fis1 ^\markup{ \italic {a tempo} } ~ \pageBreak | % 5
    fis1 | % 6
    fis1 ~ | % 7
    fis1 \repeat volta 2 {
        | % 8
        fis'8 \mf r4. e8 r4. | % 9
        d8 r4. cis8 r4. | \barNumberCheck #10
        b8 r4. cis8 r4. \pageBreak | % 11
        fis8 r4. fis8 r4. | % 12
        fis8 r4. e8 r4. | % 13
        d8 r4. cis8 r4. | % 14
        b8 r4. cis8 r4. \pageBreak | % 15
        fis8 r4. fis8 r4. \bar "||"
        d8 r2.. | % 17
        cis8 r2.. | % 18
        d8 r2.. \pageBreak | % 19
        cis8 r2.. | \barNumberCheck #20
        fis8 r4. e8 r4. | % 21
        cis8 r4. gis'8 r4. | % 22
        fis8 r4. e8 r4. \pageBreak | % 23
        cis8 r4. gis'8 r4. | % 24
        d8 r2.. | % 25
        cis8 r2.. | % 26
        a4 ^\markup{ \italic {rit. poco a poco} } b8 [ a8 ] gis2 | % 27
        cis,4 -. gis'4 -. cis,2 \bar "||"
        \pageBreak | % 28
        fis'8 ^\markup{ \italic {a tempo} } r4. e8 r4. | % 29
        d8 r4. cis8 r4. | \barNumberCheck #30
        b8 r4. cis8 r4. | % 31
        fis8 r4. fis8 r4. \bar "||"
        \pageBreak | % 32
        fis,8 r2.. | % 33
        a8 r2.. | % 34
        fis8 r2.. | % 35
        b8 r2.. \pageBreak | % 36
        d8 r2.. | % 37
        b8 r2.. | % 38
        fisis8 r2.. \pageBreak | % 39
        cis'8 r2.. \bar "||"
        fis,8 r2.. | % 41
        a8 r2.. \pageBreak | % 42
        fis8 r2.. | % 43
        b8 r2.. | % 44
        d8 r2.. | % 45
        b8 r4. cis8 r4. \pageBreak | % 46
        d8 r4. cis8 r4. | % 47
        fis4 ^\markup{ \italic {ritardando} } -. cis4 -. fis,2 }
    | % 48
    fis'8 \mf ^\markup{ \italic {a tempo} } r4. e8 r4. | % 49
    d8 r4. cis8 r4. \pageBreak | \barNumberCheck #50
    b8 r4. cis8 r4. | % 51
    fis8 \mf \> r4. fis8 r4. | % 52
    fis8 \! \mp \> r4. e8 r4. | % 53
    d8 \! \p \> r4. cis8 r4. \pageBreak | % 54
    b8 \! \pp \> r4. cis8 r4. | % 55
    fis8 \! \ppp \> r4. fis8 r4. \bar "|."
    \! }

PartPFiveVoiceOne =  \relative fis'' {
    \clef "treble^8" \key a \major \time 4/4 R1*2 | % 3
    R1 \bar "||"
    fis16 ^\markup{ \italic {ritardando} } \ff [ fis'16 cis16 cis'16 ]
    c,16 [ c'16 a,16 a'16 ] b,16 [ b'16 gis,16 gis'16 ] bes,16 [ bes'16
    g,16 g'16 ] \pageBreak s1*3 \repeat volta 2 {
        | % 8
        R1*3 \pageBreak | % 11
        R1*4 \pageBreak | % 15
        R1 \bar "||"
        R1*3 \pageBreak | % 19
        R1*4 \pageBreak | % 23
        R1*5 \bar "||"
        \pageBreak | % 28
        R1*4 \bar "||"
        \pageBreak | % 32
        R1*4 \pageBreak | % 36
        R1*3 \pageBreak | % 39
        R1 \bar "||"
        R1*2 \pageBreak | % 42
        R1*4 \pageBreak | % 46
        R1 | % 47
        R1 }
    | % 48
    R1*2 \pageBreak | \barNumberCheck #50
    R1*4 \pageBreak | % 54
    R1*2 \bar "|."
    ^\markup{ \italic {a tempo} } ^\markup{ \italic {ritardando} }
    ^\markup{ \italic {a tempo} } }

PartPSixVoiceOne =  \relative cis'' {
    \clef "treble" \key a \major \time 4/4 | % 1
    cis4 \f b8 [ cis8 ] gis2 | % 2
    r4 b4 a8 [ b8 ] b4 | % 3
    gis2 ^\markup{ \italic {ritardando} } e2 \bar "||"
    fis2 ^\markup{ \italic {a tempo} } r2 \pageBreak | % 5
    R1*3 \repeat volta 2 {
        | % 8
        r4 \f fis4 cis'2 ~ | % 9
        cis4 b8 [ cis8 ] a4 gis4 | \barNumberCheck #10
        fis4 gis8 [ a8 ] gis4 e4 \pageBreak | % 11
        fis4 r4 r2 | % 12
        r4 fis4 cis'2 ~ | % 13
        cis4 b8 [ cis8 ] a4 gis4 | % 14
        fis4 gis8 [ a8 ] gis4 e4 \pageBreak | % 15
        fis1 \bar "||"
        cis''4 b2 a8 [ b8 ] | % 17
        cis4 gis4 gis4 cis,4 | % 18
        cis'4 b2 a8 [ b8 ] \pageBreak | % 19
        cis4 e4 d4 cis4 | \barNumberCheck #20
        \clef "treble^8" fis2. gis8 [ a8 ] | % 21
        gis4 e4 e4 cis4 | % 22
        fis2. gis8 [ a8 ] \pageBreak | % 23
        cis4 gis4 gis4 cis,4 | % 24
        cis'4 b8 [ cis8 ] a2 | % 25
        r4 b4 gis2 | % 26
        a4 ^\markup{ \italic {rit. poco a poco} } b8 [ a8 ] gis2 | % 27
        R1 \bar "||"
        \pageBreak | % 28
        \clef "treble" | % 28
        r4 ^\markup{ \italic {a tempo} } fis,,4 cis'2 ~ | % 29
        cis4 b8 [ cis8 ] a4 gis4 | \barNumberCheck #30
        fis4 gis8 [ a8 ] gis4 e4 | % 31
        fis1 \bar "||"
        \pageBreak | % 32
        cis''4. b8 cis4 e4 ~ | % 33
        e4 dis2 b8 [ fis8 ] | % 34
        cis'4. b8 cis4 e4 | % 35
        \clef "treble^8" dis8 [ e8 ] fis2 fis8 [ gis8 ] \pageBreak | % 36
        a4 gis8 [ a8 ] gis8 [ e8 ] cis4 | % 37
        fis4 e8 [ fis8 ] e8 [ cis8 ] a4 | % 38
        b8 [ a8 ] b4. g8 [ a8 b8 ] \pageBreak | % 39
        cis8 [ b8 ] cis2. \bar "||"
        \clef "treble" cis4. b8 cis4 e4 ~ | % 41
        e4 dis2 b8 [ fis8 ] \pageBreak | % 42
        cis'4. b8 cis4 e4 | % 43
        \clef "treble^8" dis8 [ e8 ] fis2 fis8 [ gis8 ] | % 44
        a4 gis8 [ a8 ] gis8 [ e8 ] cis4 | % 45
        fis4 gis8 [ a8 ] gis8 [ e8 ] b4 \pageBreak | % 46
        \clef "treble" a4 gis8 [ fis8 ] gis8 [ e8 ] cis4 | % 47
        fis1 ^\markup{ \italic {ritardando} } }
    | % 48
    r4 \f ^\markup{ \italic {a tempo} } fis,4 cis'2 ~ | % 49
    cis4 b8 [ cis8 ] a4 gis4 \pageBreak | \barNumberCheck #50
    fis4 \f \> gis8 [ a8 ] gis4 e4 | % 51
    fis4 \! \mf \> r4 r2 | % 52
    r4 \! \mp \> fis4 cis'2 ~ | % 53
    cis4 \! \p \> b8 [ cis8 ] a4 gis4 \pageBreak | % 54
    fis4 \! \pp \> gis8 [ a8 ] gis4 e4 | % 55
    fis1 \! \ppp \> \bar "|."
    \! }

PartPSevenVoiceOne =  \relative fis'' {
    \transposition c''' \clef "treble" \key a \major \time 4/4 | % 1
    fis4 \f e8 [ fis8 ] cis2 | % 2
    r4 b4 a8 [ b8 ] b4 | % 3
    gis2 ^\markup{ \italic {ritardando} } e2 \bar "||"
    fis2 ^\markup{ \italic {a tempo} } r2 \pageBreak | % 5
    R1*3 \repeat volta 2 {
        | % 8
        r4 \f fis4 cis'2 ~ | % 9
        cis4 b8 [ cis8 ] a4 gis4 | \barNumberCheck #10
        fis4 gis8 [ a8 ] gis4 e4 \pageBreak | % 11
        fis4 r4 r2 | % 12
        r4 fis4 cis'2 ~ | % 13
        cis4 b8 [ cis8 ] a4 gis4 | % 14
        fis4 gis8 [ a8 ] gis4 e4 \pageBreak | % 15
        fis1 \bar "||"
        cis'4 b2 a8 [ b8 ] | % 17
        cis4 gis4 gis4 cis,4 | % 18
        cis'4 b2 a8 [ b8 ] \pageBreak | % 19
        cis4 e4 d4 cis4 | \barNumberCheck #20
        fis,2. gis8 [ a8 ] | % 21
        gis4 e4 e4 cis4 | % 22
        fis2. gis8 [ a8 ] \pageBreak | % 23
        cis4 gis4 gis4 cis,4 | % 24
        cis'4 b8 [ cis8 ] a2 | % 25
        r4 b4 gis2 | % 26
        a4 ^\markup{ \italic {rit. poco a poco} } \< b8 [ a8 ] gis2 | % 27
        cis,4 \! \ff \> -. gis'4 -. cis2 -. \bar "||"
        \pageBreak | % 28
        r4 \! \mf ^\markup{ \italic {a tempo} } fis,4 cis'2 ~ | % 29
        cis4 b8 [ cis8 ] a4 gis4 | \barNumberCheck #30
        fis4 gis8 [ a8 ] gis4 e4 | % 31
        fis1 \bar "||"
        \pageBreak | % 32
        cis'4. b8 cis4 e4 ~ | % 33
        e4 dis2 b8 [ fis8 ] | % 34
        cis'4. b8 cis4 e4 | % 35
        \clef "treble^8" dis8 [ e8 ] fis2 fis8 [ gis8 ] \pageBreak | % 36
        a4 gis8 [ a8 ] gis8 [ e8 ] cis4 | % 37
        fis4 e8 [ fis8 ] e8 [ cis8 ] a4 | % 38
        b8 [ a8 ] b4. fisis8 [ a8 b8 ] \pageBreak | % 39
        cis8 [ b8 ] cis2. \bar "||"
        \clef "treble" cis4. b8 cis4 e4 ~ | % 41
        e4 dis2 b8 [ fis8 ] \pageBreak | % 42
        cis'4. b8 cis4 e4 | % 43
        \clef "treble^8" dis8 [ e8 ] fis2 fis8 [ gis8 ] | % 44
        a4 gis8 [ a8 ] gis8 [ e8 ] cis4 | % 45
        fis4 gis8 [ a8 ] gis8 [ e8 ] b4 \pageBreak | % 46
        \clef "treble" a4 gis8 [ fis8 ] gis8 [ e8 ] cis4 | % 47
        fis1 ^\markup{ \italic {ritardando} } }
    | % 48
    r4 \f ^\markup{ \italic {a tempo} } fis4 cis'2 ~ | % 49
    cis4 b8 [ cis8 ] a4 gis4 \pageBreak | \barNumberCheck #50
    fis4 \f \> gis8 [ a8 ] gis4 e4 | % 51
    fis4 \! \mf \> r4 r2 | % 52
    r4 \! \mp \> fis4 cis'2 ~ | % 53
    cis4 \! \p \> b8 [ cis8 ] a4 gis4 \pageBreak | % 54
    fis4 \! \pp \> gis8 [ a8 ] gis4 e4 | % 55
    fis1 \! \ppp \> \bar "|."
    \! }

PartPEightVoiceOne =  \relative e' {
    \clef "percussion" \stopStaff \override Staff.StaffSymbol
    #'line-count = #1 \startStaff \key c \major \time 4/4 R1*2 | % 3
    R1 \bar "||"
    R1 \pageBreak | % 5
    R1*3 \repeat volta 2 {
        | % 8
        e4 ^\markup{ \italic {ritardando} } ^\markup{ \italic {a tempo}
            } \p r4 e4 r4 | % 9
        e4 r4 e4 r4 | \barNumberCheck #10
        e4 r4 e4 r4 \pageBreak | % 11
        e4 r4 r2 | % 12
        e4 r4 e4 r4 | % 13
        e4 r4 e4 r4 | % 14
        e4 r4 e4 r4 \pageBreak | % 15
        e4 r4 r2 \bar "||"
        e4 r4 e4 r4 | % 17
        e4 r4 e4 r4 | % 18
        e4 r4 e4 r4 \pageBreak | % 19
        e4 r4 r2 | \barNumberCheck #20
        e4 r4 e4 r4 | % 21
        e4 r4 e4 r4 | % 22
        e4 r4 e4 r4 \pageBreak | % 23
        e4 r4 r2 | % 24
        R1*2 | % 26
        R1*2 \bar "||"
        \pageBreak | % 28
        e4 ^\markup{ \italic {rit. poco a poco} } ^\markup{ \italic {a
                tempo} } r4 e4 r4 | % 29
        e4 r4 e4 r4 | \barNumberCheck #30
        e4 r4 e4 r4 | % 31
        e4 r4 r2 \bar "||"
        \pageBreak | % 32
        R1*4 \pageBreak | % 36
        R1*3 \pageBreak | % 39
        R1 \bar "||"
        e4 r4 r2 | % 41
        e4 r4 r2 \pageBreak | % 42
        e4 r4 r2 | % 43
        e4 r4 r2 | % 44
        e4 r4 r2 | % 45
        e4 r4 r2 \pageBreak | % 46
        e4 r4 r2 | % 47
        R1 }
    | % 48
    e4 ^\markup{ \italic {ritardando} } \p ^\markup{ \italic {a tempo} }
    r4 e4 r4 | % 49
    e4 r4 e4 r4 \pageBreak | \barNumberCheck #50
    e4 r4 e4 r4 | % 51
    e4 r4 r2 | % 52
    e4 r4 e4 r4 | % 53
    e4 \p \> r4 e4 r4 \pageBreak | % 54
    e4 \! \pp \> r4 e4 r4 | % 55
    e4 \! \ppp \> r4 r2 \bar "|."
    \! }

PartPNineVoiceOne =  \relative e' {
    \clef "percussion" \stopStaff \override Staff.StaffSymbol
    #'line-count = #1 \startStaff \key c \major \time 4/4 | % 1
    R1 | % 2
    e4 \f r4 r2 | % 3
    R1 \bar "||"
    R1 \pageBreak | % 5
    R1*3 \repeat volta 2 {
        | % 8
        r2 ^\markup{ \italic {ritardando} } ^\markup{ \italic {a tempo}
            } \mf e4 r4 | % 9
        R1 | \barNumberCheck #10
        r2 e4 r4 \pageBreak | % 11
        R1 | % 12
        r2 e4 r4 | % 13
        R1 | % 14
        r2 e4 r4 \pageBreak | % 15
        R1 \bar "||"
        r2 e4 r4 | % 17
        R1 | % 18
        r2 e4 r4 \pageBreak | % 19
        R1 | \barNumberCheck #20
        r2 e4 r4 | % 21
        R1 | % 22
        r2 e4 r4 \pageBreak | % 23
        R1 | % 24
        r2 e4 r4 | % 25
        R1 | % 26
        R1*2 \bar "||"
        \pageBreak | % 28
        r2 ^\markup{ \italic {rit. poco a poco} } ^\markup{ \italic {a
                tempo} } e4 r4 | % 29
        R1 | \barNumberCheck #30
        r2 e4 r4 | % 31
        R1 \bar "||"
        \pageBreak | % 32
        r2 e4 r4 | % 33
        r2 e4 r4 | % 34
        r2 e4 r4 | % 35
        r2 e4 r4 \pageBreak | % 36
        r2 e4 r4 | % 37
        r2 e4 r4 | % 38
        r2 e4 r4 \pageBreak | % 39
        R1 \bar "||"
        R1*2 \pageBreak | % 42
        R1*4 \pageBreak | % 46
        R1 | % 47
        R1 }
    | % 48
    r2 ^\markup{ \italic {ritardando} } \mf ^\markup{ \italic {a tempo}
        } e4 r4 | % 49
    R1 \pageBreak | \barNumberCheck #50
    r2 e4 r4 | % 51
    R1 | % 52
    r2 \mp \> e4 r4 | % 53
    R1 \pageBreak | % 54
    r2 \! \pp \> e4 r4 | % 55
    R1 \bar "|."
    \! }

PartPOneZeroVoiceOne =  \relative f' {
    \clef "percussion" \stopStaff \override Staff.StaffSymbol
    #'line-count = #1 \startStaff \key c \major \time 4/4 R1*2 | % 3
    R1 \bar "||"
    R1 \pageBreak | % 5
    R1*3 \repeat volta 2 {
        | % 8
        r2 ^\markup{ \italic {ritardando} } _\markup{ \italic
            {ritardando} } ^\markup{ \italic {a tempo} } _\markup{
            \italic {a tempo} } \f f4 r4 | % 9
        r2 f4 r4 | \barNumberCheck #10
        r2 f4 r4 \pageBreak | % 11
        r2 f8 [ f8 ] r4 | % 12
        r2 f4 r4 | % 13
        r2 f4 r4 | % 14
        r2 f4 r4 \pageBreak | % 15
        r2 f8 [ f8 ] r4 \bar "||"
        r2 f4 r4 | % 17
        r2 f4 r4 | % 18
        r2 f4 r4 \pageBreak | % 19
        r2 f8 [ f8 ] r4 | \barNumberCheck #20
        r2 f4 r4 | % 21
        r2 f4 r4 | % 22
        r2 f4 r4 \pageBreak | % 23
        r2 f8 [ f8 ] r4 | % 24
        R1*2 | % 26
        R1*2 \bar "||"
        \pageBreak | % 28
        f4 ^\markup{ \italic {rit. poco a poco} } _\markup{ \italic
            {rit. poco a poco} } ^\markup{ \italic {a tempo} } _\markup{
            \italic {a tempo} } r4 r2 | % 29
        r2 f8 [ f8 ] r4 | \barNumberCheck #30
        r2 f4 r4 | % 31
        r2 f4 r4 \bar "||"
        \pageBreak | % 32
        R1*4 \pageBreak | % 36
        R1*3 \pageBreak | % 39
        R1 \bar "||"
        r2 f4 r4 | % 41
        r2 f4 r4 \pageBreak | % 42
        r2 f4 r4 | % 43
        r2 f4 r4 | % 44
        r2 f4 r4 | % 45
        r2 f4 r4 \pageBreak | % 46
        r2 f4 r4 | % 47
        R1 }
    | % 48
    r2 ^\markup{ \italic {ritardando} } _\markup{ \italic {ritardando} }
    \f ^\markup{ \italic {a tempo} } _\markup{ \italic {a tempo} } f4 r4
    | % 49
    r2 f4 r4 \pageBreak | \barNumberCheck #50
    r2 \f \> f4 r4 | % 51
    r2 \! \mf \> f8 [ f8 ] r4 | % 52
    r2 \! \mp \> f4 r4 | % 53
    r2 \! \p \> f4 r4 \pageBreak | % 54
    r2 \! \pp \> f4 r4 | % 55
    r2 \! \ppp \> f8 [ f8 ] r4 \bar "|."
    \! }


% The score definition
\score {
    <<
        \new StaffGroup <<
            \new Staff <<
                \set Staff.instrumentName = "Violins"
                \set Staff.shortInstrumentName = "Vlns."
                \context Staff << 
                    \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                    >>
                >>
            \new Staff <<
                \set Staff.instrumentName = "Violoncellos"
                \set Staff.shortInstrumentName = "Vcs."
                \context Staff << 
                    \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                    >>
                >>
            \new Staff <<
                \set Staff.instrumentName = "Acoustic Bass"
                \set Staff.shortInstrumentName = "Bass"
                \context Staff << 
                    \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
                    >>
                >>
            \new Staff <<
                \set Staff.instrumentName = "Acoustic Bass"
                \set Staff.shortInstrumentName = "Bass"
                \context Staff << 
                    \context Voice = "PartPFourVoiceOne" { \PartPFourVoiceOne }
                    >>
                >>
            
            >>
        \new StaffGroup \with { systemStartDelimiter =
            #'SystemStartBrace } <<
            \new Staff <<
                \set Staff.instrumentName = "Crystal Synthesizer"
                \set Staff.shortInstrumentName = "Synth."
                \context Staff << 
                    \context Voice = "PartPFiveVoiceOne" { \PartPFiveVoiceOne }
                    >>
                >>
            \new Staff <<
                \set Staff.instrumentName = "Choir Synthesizer"
                \set Staff.shortInstrumentName = "Synth."
                \context Staff << 
                    \context Voice = "PartPSixVoiceOne" { \PartPSixVoiceOne }
                    >>
                >>
            
            >>
        \new StaffGroup <<
            \new Staff <<
                \set Staff.instrumentName = "Glockenspiel"
                \set Staff.shortInstrumentName = "Glk."
                \context Staff << 
                    \context Voice = "PartPSevenVoiceOne" { \PartPSevenVoiceOne }
                    >>
                >>
            \new RhythmicStaff <<
                \set RhythmicStaff.instrumentName = "Bass Drum"
                \set RhythmicStaff.shortInstrumentName = "B. Dr."
                \context RhythmicStaff << 
                    \context Voice = "PartPEightVoiceOne" { \PartPEightVoiceOne }
                    >>
                >>
            \new RhythmicStaff <<
                \set RhythmicStaff.instrumentName = "Sleigh Bells"
                \set RhythmicStaff.shortInstrumentName = "Sle. Be."
                \context RhythmicStaff << 
                    \context Voice = "PartPNineVoiceOne" { \PartPNineVoiceOne }
                    >>
                >>
            \new RhythmicStaff <<
                \set RhythmicStaff.instrumentName = "Wood Blocks"
                \set RhythmicStaff.shortInstrumentName = "Wd. Bl."
                \context RhythmicStaff << 
                    \context Voice = "PartPOneZeroVoiceOne" { \PartPOneZeroVoiceOne }
                    >>
                >>
            
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

