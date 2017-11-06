
\version "2.18.2"
% automatically converted by musicxml2ly from 10000_reasons_Still_Not_finished.xml

\header {
    encodingsoftware = "MuseScore 2.0.3.1"
    source = "http://musescore.com/score/1183611"
    encodingdate = "2016-11-06"
    title = "10'000 reasons"
    }

#(set-global-staff-size 20.0762645669)
\paper {
    paper-width = 21.01\cm
    paper-height = 33.39\cm
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
PartPOneVoiceOne =  \relative b'' {
    \clef "treble" \key g \major \numericTimeSignature\time 4/4 | % 1
    \tempo 4=72 R1*3 | % 4
    r2 ^\markup{ \bold {Adagio} } r4 b8 \mf [ d8 ] \bar "||"
    \pageBreak | % 5
    \mark \markup { \box { A } } | % 5
    e4 e8 [ d8 ] b2 \breathe | % 6
    a8 [ b8 a8 g8 ] e8 ~ e4 \breathe d8 | % 7
    e8 [ g8 d'8 b8 ~ ] b4 g4 \pageBreak | % 8
    a2. \breathe b8 \f [ d8 ] | % 9
    e4 e8 [ d8 ] b2 \breathe | \barNumberCheck #10
    e4 <d fis>4 <b g'>2 \> \breathe \pageBreak | % 11
    <g g'>8  \mf [ <a a'>8 <b b'>8 <a a'>8 ] ~ <a a'>4 <g g'>8 [ <g
        g'>8 ~ ] ~ | % 12
    <g g'>1 \> | % 13
    R1 \bar "||"
    \pageBreak | % 14
    \mark \markup { \box { B } } | % 14
    c,16  \mp ^"One" ( [ e16 g16 e16 ] c16 [ e16 g16 e16 ] b16 [ d16 g16
    d16 ] b16 [ d16 g16 d16 ) ] | % 15
    a16 ( [ e'16 fis16 e16 ] d16 [ fis16 a16 fis16 ] e16 [ g16 b16 g16 ]
    g16 [ b16 e16 b16 ) ] \pageBreak | % 16
    g16 ( [ c16 g16 e16 ] c16 [ e16 g16 e16 ] b16 [ d16 g16 d16 ~ ] d16
    [ d16 g16 d16 ) ] | % 17
    fis16 ( [ d'16 ) a8 ] b8 r8 a16 ( [ g16 fis16 e16 ] fis16 [ g16 a16
    b16 ) ] \pageBreak | % 18
    c8 \mp [ c8 ] c4 b4 a8 \< [ g8 ] | % 19
    a8  \< [ g8 a8 b8 ] b4 a4 | \barNumberCheck #20
    r2  r8 g8 \f ^"All" [ g8 g8 ] \pageBreak | % 21
    g8 [ g8 g8 a8 ] b4 a4 | % 22
    g2 ~ g4 r4 | % 23
    r2 r4 b8 \f \f [ d8 ] \bar "||"
    \pageBreak | % 24
    \mark \markup { \box { C } } | % 24
    e4 e8 [ d8 ] b2 \breathe | % 25
    a8 [ b8 a8 g8 ] e8 ~ e4 \breathe d8 | % 26
    e8 [ g8 d'8 b8 ~ ] b4 g4 \pageBreak | % 27
    a2. \breathe b8 \f [ d8 ] | % 28
    e4 e8 [ d8 ] b2 \breathe | % 29
    e4 fis4 b,4. \> \breathe a8 \pageBreak | \barNumberCheck #30
    g8  \mf [ a8 b8 a8 ~ ] a4 g8 [ g8 ~ ] | % 31
    g1 | % 32
    R1*2 \bar "||"
    \mark \markup { \box { D } } | % 34
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
    }

PartPTwoVoiceOne =  \relative e'' {
    \clef "treble" \key g \major \numericTimeSignature\time 4/4 R1*4
    \bar "||"
    \pageBreak | % 5
    e2 \mp d2 \breathe | % 6
    d2 e2 | % 7
    e4. d8 ~ d4 g4 \pageBreak | % 8
    g2 fis2 | % 9
    e2 \f d2 \breathe | \barNumberCheck #10
    c4 d4 e2 \> \pageBreak | % 11
    g8  \mp \mf [ a8 b8 a8 ~ ] a4 g8 [ g8 ~ ] | % 12
    g1 \> \> | % 13
    R1 \bar "||"
    \pageBreak | % 14
    R1*2 \pageBreak | % 16
    R1*2 \pageBreak | % 18
    R1*2 | \barNumberCheck #20
    r2   r8 g8 \f [ g8 g8 ] \pageBreak | % 21
    g8 [ g8 g8 a8 ] b4 a4 | % 22
    g2 ~ g4 r4 | % 23
    r2 r4 fis8 \f \f [ b8 ] \bar "||"
    \pageBreak | % 24
    g4 g8 [ fis8 ] g2 \breathe | % 25
    fis8 [ g8 fis8 d8 ] e8 ~ e4 \breathe b8 | % 26
    c8 [ c8 d8 b8 ~ ] b4 g'4 \pageBreak | % 27
    a2. \breathe fis8 \f [ b8 ] | % 28
    c4 c8 [ g8 ] d2 \breathe | % 29
    c'4 d4 g,2 \> \pageBreak | \barNumberCheck #30
    R1*4 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
     }

PartPThreeVoiceOne =  \relative cis'' {
    \transposition bes \clef "treble" \key a \major
    \numericTimeSignature\time 4/4 R1*3 | % 4
    r2 r4 cis8 \mf [ e8 ] \bar "||"
    \pageBreak | % 5
    fis4 fis8 [ e8 ] cis2 \breathe | % 6
    b8 [ cis8 b8 a8 ] fis8 ~ fis4 \breathe e8 | % 7
    fis8 [ a8 e'8 cis8 ~ ] cis4 a4 \pageBreak | % 8
    b2. \breathe cis8 \f [ e8 ] | % 9
    fis4 fis8 [ e8 ] cis2 \breathe | \barNumberCheck #10
    fis4 gis4 fis4. \> \breathe b,8 \pageBreak | % 11
    a8  \mf [ b8 cis8 b8 ~ ] b4 a8 [ a8 ~ ] | % 12
    a1 \> | % 13
    R1 \bar "||"
    \pageBreak | % 14
    fis2  \mp e2 | % 15
    e2 fis2 \pageBreak | % 16
    fis2 e2 \breathe | % 17
    e4 fis8 [ fis8 ~ ] fis2 \pageBreak | % 18
    R1*2 | \barNumberCheck #20
    r2 r8 a8 \f [ a8 a8 ] \pageBreak | % 21
    a8 [ a8 a8 b8 ] cis4 b4 | % 22
    a2 ~ a4 r4 | % 23
    a4. \mp \> a8 ~ a4 gis8 \f \f [ cis8 ] \bar "||"
    \pageBreak | % 24
    a4  \f a8 [ gis8 ] a2 \breathe | % 25
    gis8 [ a8 gis8 e8 ] fis8 ~ fis4 \breathe cis8 | % 26
    d8 [ d8 e8 cis8 ~ ] cis4 a'4 \pageBreak | % 27
    b2. \breathe gis8 \f [ cis8 ] | % 28
    d4 d8 [ a8 ] e2 \breathe | % 29
    d'4 e4 a,2 \> \pageBreak | \barNumberCheck #30
    R1*4 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
     }

PartPFourVoiceOne =  \relative gis {
    \transposition bes \clef "treble" \key a \major
    \numericTimeSignature\time 4/4 R1*3 | % 4
    r2 r4 gis8 \mf [ cis8 ] \bar "||"
    \pageBreak | % 5
    d4 d8 [ e8 ] cis2 \breathe | % 6
    b8 [ cis8 b8 cis8 ] cis8 ~ cis4 \breathe cis8 | % 7
    d8 [ d8 e8 cis8 ~ ] cis4 e4 \pageBreak | % 8
    b2. \breathe gis8 \f [ cis8 ] | % 9
    d4 d8 [ e8 ] cis2 \breathe | \barNumberCheck #10
    d4 e4 fis2 \> \pageBreak | % 11
    a4.  \mp a8 ~ a4 a8 [ a8 ~ ] | % 12
    a1 \> | % 13
    R1 \bar "||"
    \pageBreak | % 14
    d,2  \mp cis2 | % 15
    b2 cis2 \pageBreak | % 16
    d2 cis2 \breathe | % 17
    b4 cis8 [ cis8 ~ ] cis2 \pageBreak | % 18
    R1*2 | \barNumberCheck #20
    r2 r8 a'8 \f [ a8 a8 ] \pageBreak | % 21
    a8 [ a8 a8 b8 ] cis4 b4 | % 22
    a2 ~ a4 r4 | % 23
    fis4. \mp \> e8 ~ e4 e8 \f \f [ e8 ] \bar "||"
    \pageBreak | % 24
    d4  \f d8 [ e8 ] cis2 \breathe | % 25
    e8 [ e8 e8 cis8 ] cis8 ~ cis4 a8 | % 26
    a8 [ d8 cis8 a8 ~ ] a4 e'4 \pageBreak | % 27
    a2 gis4 \breathe e8 \f [ gis8 ] | % 28
    a4 a8 [ e8 ] cis2 \breathe | % 29
    a'4 b4 fis2 \> \pageBreak | \barNumberCheck #30
    R1*4 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
     }

PartPFiveVoiceOne =  \relative e' {
    \clef "bass" \key g \major \numericTimeSignature\time 4/4 | % 1
    e4 \mf e8 [ d8 ] b2 | % 2
    a8 [ b8 a8 g8 ] e8 ~ e4 \breathe d8 | % 3
    e8 [ g8 d'8 b8 ~ ] b4 g4 | % 4
    a1 \bar "||"
    \pageBreak | % 5
    g8 \mp [ c8 e8 c8 ] g8 [ b8 d8 b8 ] | % 6
    fis8 [ a8 d8 a8 ] e8 [ g8 b8 g8 ~ ] | % 7
    g8 \< [ c8 e8 b8 ~ ] b8 [ g8 b8 g8 ] \pageBreak | % 8
    g16  \< [ a16 d8 ] g,16 [ a16 d8 ] fis,16 [ a16 d8 ~ ] d8 [ d16 c16
    ] | % 9
    c4  \f \f g8 [ d'8 ] b4. g16 [ b16 ] | \barNumberCheck #10
    g8 [ a16 b16 ] c16 [ d16 e16 fis16 ] g2 \> \pageBreak | % 11
    g,8  \mf \mf [ a8 b8 a8 ~ ] a4 g8 [ d'8 ] | % 12
    c4. b8 ~ b4 ~ b16 [ g16 a16 b16 ] | % 13
    c4 \> d8 [ b8 ~ ] b2 \bar "||"
    \pageBreak | % 14
    c4.  \mp d8 b4 ~ b16 [ c16 d16 e16 ] | % 15
    fis4. d8 g4 e4 \pageBreak | % 16
    c4. c8 d4 g4 | % 17
    a4 b8 [ b8 ~ ] b2 \pageBreak | % 18
    c,16 \mf [ e16 g16 e16 ] c16 [ e16 g16 e16 ] b16 [ d16 g16 d16 ~ ] d16
    [ d16 b16 d16 ] | % 19
    d8 \< [ d8 d8 g8 ] g4 a4 | \barNumberCheck #20
    r2  r8 g,8 \f [ g8 g8 ] \pageBreak | % 21
    g8 [ g8 g8 a8 ] b4 a16 [ fis16 a16 d16 ] | % 22
    g2 ~ g4 r4 | % 23
    R1 \bar "||"
    \pageBreak | % 24
    e2 \f d2 | % 25
    d2 e2 | % 26
    e4. d8 ~ d4 g,4 \pageBreak | % 27
    g16 \< [ a16 d8 ] g,16 [ a16 d8 ] fis,16 [ a16 d8 ~ ] d8 [ d16 c16 ]
    | % 28
    c4  \f g8 [ d'8 ] b4. g16 [ b16 ] | % 29
    g8 \< [ a16 b16 ] c16 [ d16 e16 fis16 ] g2 \> \> \pageBreak |
    \barNumberCheck #30
    g4.    \mp g8 ~ g4 r4 | % 31
    g4. g8 ~ g2 | % 32
    g4. \> g8 ~ g2 | % 33
    g1  \pp ~ \bar "||"
    g4 r4 r2 | % 35
    R1 \pageBreak | % 36
    R1*13 \bar "|."
    }

PartPSixVoiceOne =  \relative g {
    \clef "bass" \key g \major \numericTimeSignature\time 4/4 | % 1
    g2 \mp g2 | % 2
    fis2 g2 | % 3
    g4. g8 ~ g2 | % 4
    g2 fis2 \bar "||"
    \pageBreak | % 5
    <e g>2 \mp <d g>2 | % 6
    <d fis>2 <e g>2 | % 7
    <e g>4. <d g>8 ~ ~ <d g>4 <g b>4 \pageBreak | % 8
    a1 | % 9
    <e g>2 \f <d g>2 | \barNumberCheck #10
    <e g>4 <fis a>4 <e g>4. \> <d fis>8 \pageBreak | % 11
    e8  \mf [ fis8 g8 g8 ~ ] g4 g8 [ g8 ~ ] | % 12
    g2. \breathe <d g>8 [ <d g>8 ] | % 13
    <e g>4. \> <d g>8 ~ ~ <d g>2 \bar "||"
    \pageBreak | % 14
    R1*2 \pageBreak | % 16
    R1*2 \pageBreak | % 18
    R1*2 | \barNumberCheck #20
    r2  c'2 \mf \pageBreak | % 21
    b2 b4 a4 | % 22
    e'4. \mp d8 ~ d2 | % 23
    R1 \bar "||"
    \pageBreak | % 24
    <g, c>2 <g b>2 | % 25
    <fis a>2 <g b>2 | % 26
    <g b>4. <g b>8 ~ ~ <g b>4 <g d'>4 \pageBreak | % 27
    <a d>1 | % 28
    <g c>2 \f <g b>2 | % 29
    <g c>4 <a d>4 <b e>2 \> \pageBreak | \barNumberCheck #30
    <c e>4.  \mp <c e>8 ~ ~ <c e>4 r4 | % 31
    <c e>4. <b d>8 ~ ~ <b d>2 | % 32
    <c e>4. \> <b d>8 ~ ~ <b d>2 | % 33
    <d, g>1  \pp ~ ~ \bar "||"
    <d g>4 r4 r2 | % 35
    R1 \pageBreak | % 36
    R1*13 \bar "|."
    }

PartPSixVoiceTwo =  \relative g {
    \clef "bass" \key g \major \numericTimeSignature\time 4/4 | % 1
    s1*4 \mp \bar "||"
    \pageBreak | % 5
    s1*3 \mp \pageBreak | % 8
    g2 fis2 | % 9
    s1. \f s2 \> \pageBreak | % 11
    s1*2  \mf | % 13
    s1 \> \bar "||"
    \pageBreak s1*2  \pageBreak s1*2 \pageBreak s2*5 s2 \mf \pageBreak
    s1 | % 22
    s1*2 \mp \bar "||"
    \pageBreak s1*3 \pageBreak s1 | % 28
    s1. \f s2 \> \pageBreak | \barNumberCheck #30
    s1*2  \mp | % 32
    s1 \> | % 33
    s1  \pp \bar "||"
    s1*2 \pageBreak s1*13 \bar "|."
    }

PartPSevenVoiceOne =  \relative b' {
    \transposition es \clef "treble" \key e \major
    \numericTimeSignature\time 4/4 R1*3 | % 4
    r2 r4 b8 \mf [ dis8 ] \bar "||"
    \pageBreak | % 5
    e4 e8 [ dis8 ] e2 \breathe | % 6
    dis8 [ e8 dis8 b8 ] e8 ~ e4 e8 | % 7
    e8 [ a8 gis8 e8 ~ ] e4 e4 \pageBreak | % 8
    e2 dis4 \breathe b8 \f [ dis8 ] | % 9
    e4 e8 [ dis8 ] e2 \breathe | \barNumberCheck #10
    a,4 b4 e2 \> \pageBreak | % 11
    cis8  \mf [ dis8 e8 e8 ~ ] e4 r4 | % 12
    a,4. gis8 ~ gis4 \breathe e8 [ gis8 ] | % 13
    a4. \> gis8 ~ gis2 \bar "||"
    \pageBreak | % 14
    a2  \mp gis2 | % 15
    fis2 gis2 \pageBreak | % 16
    a2 gis2 \breathe | % 17
    fis4 gis8 [ gis8 ~ ] gis2 \pageBreak | % 18
    a2 gis2 | % 19
    fis2 \< gis2 | \barNumberCheck #20
    r2  a2 \mf \pageBreak | % 21
    gis2 gis4 fis4 | % 22
    a'4. \mp gis8 ~ gis2 | % 23
    r2 r4 gis8 \f \f [ b8 ] \bar "||"
    \pageBreak | % 24
    cis4 cis8 [ b8 ] gis2 \breathe | % 25
    fis8 [ gis8 fis8 e8 ] cis8 ~ cis4 \breathe b8 | % 26
    cis8 [ e8 b'8 gis8 ~ ] gis4 e4 \pageBreak | % 27
    fis2. \breathe gis8 \f [ b8 ] | % 28
    cis4 cis8 [ b8 ] gis2 \breathe | % 29
    cis4 dis4 gis,4. \> \breathe fis8 \pageBreak | \barNumberCheck #30
    e8  \mf [ fis8 gis8 fis8 ~ ] fis4 e8 [ e8 ~ ] | % 31
    e1 | % 32
    R1*2 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
    }

PartPEightVoiceOne =  \relative cis'' {
    \transposition es \clef "treble" \key e \major
    \numericTimeSignature\time 4/4 | % 1
    cis2 \mp b2 | % 2
    b2 cis2 | % 3
    cis4. b8 ~ b2 | % 4
    b1 \bar "||"
    \pageBreak | % 5
    cis2 \mp b2 | % 6
    b2 cis2 | % 7
    cis4. b8 ~ b2 \pageBreak | % 8
    b1 | % 9
    cis2 \f b2 | \barNumberCheck #10
    R1 \pageBreak | % 11
    cis,4. \mp cis8 ~ cis4 r4 | % 12
    a'4. gis8 ~ gis4 \breathe e8 [ gis8 ] | % 13
    a4. \> gis8 ~ gis2 \bar "||"
    \pageBreak | % 14
    e2  \mp e2 | % 15
    dis2 e2 \pageBreak | % 16
    e2 e2 \breathe | % 17
    dis4 e8 [ e8 ~ ] e2 \pageBreak | % 18
    e2 e2 | % 19
    dis2 \< e2 | \barNumberCheck #20
    r2  e2 \mf \pageBreak | % 21
    e2 dis4 dis4 | % 22
    cis'4. \mp b8 ~ b2 | % 23
    r2 r4 dis8 \f \f [ gis8 ] \bar "||"
    \pageBreak | % 24
    e4 \f e8 [ dis8 ] e2 \breathe | % 25
    dis8 [ e8 dis8 b8 ] cis8 ~ cis4 \breathe gis8 | % 26
    a8 [ a8 b8 gis8 ~ ] gis4 b4 \pageBreak | % 27
    e2 dis4 \breathe dis8 \f [ gis8 ] | % 28
    a4 a8 [ e8 ] b2 \breathe | % 29
    a'4 b4 e,2 \> \pageBreak | \barNumberCheck #30
    R1*4 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
     }

PartPNineVoiceOne =  \relative fis'' {
    \transposition bes, \clef "treble" \key a \major
    \numericTimeSignature\time 4/4 | % 1
    fis2 \mp e2 | % 2
    e2 fis2 | % 3
    fis4. e8 ~ e2 | % 4
    e1 \bar "||"
    \pageBreak | % 5
    fis2 \mp e2 | % 6
    e2 fis2 | % 7
    fis4. e8 ~ e2 \pageBreak | % 8
    e1 | % 9
    fis2 \f e2 | \barNumberCheck #10
    R1 \pageBreak | % 11
    fis,4. \mp fis8 ~ fis4 r4 | % 12
    d'4. cis8 ~ cis4 \breathe a8 [ cis8 ] | % 13
    d4. \> cis8 ~ cis2 \bar "||"
    \pageBreak | % 14
    a2  \mp a2 | % 15
    gis2 a2 \pageBreak | % 16
    a2 a2 \breathe | % 17
    gis4 a8 [ a8 ~ ] a2 \pageBreak | % 18
    a2 a2 | % 19
    gis2 \< a2 | \barNumberCheck #20
    r2  a2 \mf \pageBreak | % 21
    a2 gis4 gis4 | % 22
    fis'4. \mp e8 ~ e2 | % 23
    r2 r4 gis8 \f \f [ cis8 ] \bar "||"
    \pageBreak | % 24
    a4 \f a8 [ gis8 ] a2 \breathe | % 25
    gis8 [ a8 gis8 e8 ] fis8 ~ fis4 \breathe cis8 | % 26
    d8 [ d8 e8 cis8 ~ ] cis4 e4 \pageBreak | % 27
    a2 gis4 \breathe gis8 \f [ cis8 ] | % 28
    d4 d8 [ a8 ] e2 \breathe | % 29
    d'4 e4 a,2 \> \pageBreak | \barNumberCheck #30
    R1*4 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
     }

PartPOneZeroVoiceOne =  \relative e'' {
    \transposition es, \clef "treble" \key e \major
    \numericTimeSignature\time 4/4 | % 1
    e2 \mp e2 | % 2
    dis2 e2 | % 3
    e4. e8 ~ e2 | % 4
    e2 dis2 \bar "||"
    \pageBreak | % 5
    e2 \mp e2 | % 6
    dis2 e2 | % 7
    e4. e8 ~ e2 \pageBreak | % 8
    e2 dis2 | % 9
    e2 \f e2 | \barNumberCheck #10
    e4 fis4 gis2 \> \pageBreak | % 11
    cis,4.  \mp cis8 ~ cis4 r4 | % 12
    e,4. e8 ~ e2 | % 13
    e4. \> e8 ~ e2 \bar "||"
    \pageBreak | % 14
    cis'2  \mp b2 | % 15
    b2 cis2 \pageBreak | % 16
    cis2 b2 \breathe | % 17
    b4 cis8 [ cis8 ~ ] cis2 \pageBreak | % 18
    cis2 b2 | % 19
    b2 \< cis2 | \barNumberCheck #20
    r2  cis2 \mf \pageBreak | % 21
    b2 b4 b4 | % 22
    e4. \mp e8 ~ e2 | % 23
    r2 r4 b'8 \f \f [ b8 ] \bar "||"
    \pageBreak | % 24
    a4 \f a8 [ b8 ] gis2 \breathe | % 25
    b8 [ b8 b8 gis8 ] gis8 ~ gis4 e8 | % 26
    e8 [ a8 gis8 e8 ~ ] e4 e4 \pageBreak | % 27
    fis2. \breathe b8 \f [ dis8 ] | % 28
    e4 e8 [ b8 ] gis2 \breathe | % 29
    e'4 fis4 cis2 \> \pageBreak | \barNumberCheck #30
    R1*4 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
     }

PartPOneOneVoiceOne =  \relative cis'' {
    \transposition bes \clef "treble" \key a \major
    \numericTimeSignature\time 4/4 R1*4 \bar "||"
    \pageBreak | % 5
    R1*3 \pageBreak | % 8
    r2 r4 cis8 \f [ e8 ] | % 9
    fis4 fis8 [ e8 ] cis2 \breathe | \barNumberCheck #10
    fis4 gis4 cis,4. \> \breathe b8 \pageBreak | % 11
    a8  \mf [ b8 cis8 b8 ~ ] b4 a8 [ a8 ~ ] | % 12
    a1 | % 13
    r2 r4 r8 ^\fermata e8 \f \bar "||"
    \pageBreak | % 14
    a4 a4 a4 fis8 [ e8 ] | % 15
    gis4 a4 a4 fis4 \pageBreak | % 16
    r8 a8 [ a8 a8 ] a8 ~ a4 a8 | % 17
    b4 cis8 [ cis8 ~ ] cis4. \breathe a8 \pageBreak | % 18
    d8 [ d8 ] d4 cis4 b8 [ a8 ] | % 19
    b8 \< [ a8 b8 cis8 ] cis4 b4 | \barNumberCheck #20
    r2  r8 a8 \f [ a8 a8 ] \pageBreak | % 21
    a8 [ a8 a8 b8 ] cis4 b4 | % 22
    a2 ~ a4 r4 | % 23
    r2 r4 cis8 \f \f [ e8 ] \bar "||"
    \pageBreak | % 24
    fis4 fis8 [ e8 ] cis2 \breathe | % 25
    b8 [ cis8 b8 a8 ] fis8 ~ fis4 \breathe e8 | % 26
    fis8 [ a8 e'8 cis8 ~ ] cis4 a4 \pageBreak | % 27
    b2. \breathe cis8 \f [ e8 ] | % 28
    fis4 fis8 [ e8 ] cis2 \breathe | % 29
    fis4 gis4 cis,4. \> \breathe b8 \pageBreak | \barNumberCheck #30
    a8  \mf [ b8 cis8 b8 ~ ] b4 a8 [ a8 ~ ] | % 31
    a1 | % 32
    R1*2 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
    }

PartPOneTwoVoiceOne =  \relative gis' {
    \transposition bes \clef "treble" \key a \major
    \numericTimeSignature\time 4/4 R1*4 \bar "||"
    \pageBreak | % 5
    R1*3 \pageBreak | % 8
    r2 r4 gis8 \f [ cis8 ] | % 9
    d4 d8 [ gis,8 ] e2 \breathe | \barNumberCheck #10
    d'4 e4 a,2 \> \pageBreak | % 11
    a4.  \mp a8 ~ a4 r4 | % 12
    R1*2 \bar "||"
    \pageBreak | % 14
    R1*2 \pageBreak | % 16
    R1 | % 17
    r2 r4 r8 a8 \pageBreak | % 18
    d8 \mp [ d8 ] d4 cis4 b8 [ a8 ] | % 19
    b8 \< [ a8 b8 cis8 ] cis4 b4 | \barNumberCheck #20
    r2  r8 a8 \f [ a8 a8 ] \pageBreak | % 21
    a8 [ a8 a8 b8 ] cis4 b4 | % 22
    a4. \mp \mp a8 ~ a2 | % 23
    a4. \> a8 ~ a4 gis8 \f \f [ cis8 ] \bar "||"
    \pageBreak | % 24
    a4  \f a8 [ gis8 ] a2 \breathe | % 25
    gis8 [ a8 gis8 e8 ] fis8 ~ fis4 \breathe cis8 | % 26
    d8 [ d8 e8 cis8 ~ ] cis4 a'4 \pageBreak | % 27
    b2. \breathe gis8 \f [ cis8 ] | % 28
    d4 d8 [ a8 ] e2 \breathe | % 29
    d'4 e4 a,2 \> \pageBreak | \barNumberCheck #30
    a4.  \mp a8 ~ a4 r4 | % 31
    d4. cis8 ~ cis4 a8 [ cis8 ] | % 32
    d4. cis8 ~ cis2 | % 33
    R1 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
    }

PartPOneThreeVoiceOne =  \relative e' {
    \transposition bes \clef "treble" \key a \major
    \numericTimeSignature\time 4/4 R1*4 \bar "||"
    \pageBreak | % 5
    R1*3 \pageBreak | % 8
    r2 r4 e8 \f [ gis8 ] | % 9
    a4 a8 [ e8 ] cis2 \breathe | \barNumberCheck #10
    a'4 b4 fis2 \> \pageBreak | % 11
    fis4.  \mp fis8 ~ fis4 r4 | % 12
    fis4. e8 ~ e2 | % 13
    fis4. \> e8 ~ e2 \bar "||"
    \pageBreak | % 14
    R1*2 \pageBreak | % 16
    R1*2 \pageBreak | % 18
    a2  \mp a2 | % 19
    gis2 \< a2 | \barNumberCheck #20
    r2  r8 a8 \f [ a8 a8 ] \pageBreak | % 21
    a8 [ a8 a8 b8 ] cis4 b4 | % 22
    a2 \mp ~ a4 r4 | % 23
    fis4. \> e8 ~ e4 e8 \f \f [ e8 ] \bar "||"
    \pageBreak | % 24
    d4  \f d8 [ e8 ] cis2 \breathe | % 25
    e8 [ e8 e8 cis8 ] cis8 ~ cis4 a8 | % 26
    a8 [ d8 cis8 a8 ~ ] a4 e'4 \pageBreak | % 27
    a2 gis4 \breathe e8 \f [ gis8 ] | % 28
    a4 a8 [ e8 ] cis2 \breathe | % 29
    a'4 b4 fis2 \> \pageBreak | \barNumberCheck #30
    fis4.  \mp fis8 ~ fis4 r4 | % 31
    fis4. e8 ~ e2 | % 32
    fis4. e8 ~ e2 | % 33
    R1 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
    }

PartPOneFourVoiceOne =  \relative b' {
    \transposition f \clef "treble" \key d \major
    \numericTimeSignature\time 4/4 | % 1
    b2 \mp a2 | % 2
    a2 b2 | % 3
    b4. a8 ~ a2 | % 4
    a1 \bar "||"
    \pageBreak | % 5
    b2 \mp a2 | % 6
    a2 b2 | % 7
    b4. a8 ~ a2 \pageBreak | % 8
    a1 | % 9
    b2 \f a2 | \barNumberCheck #10
    b4 cis4 d2 \> \pageBreak | % 11
    b4.  \mp b8 ~ b4 r4 | % 12
    d4. d8 ~ d2 | % 13
    d4. \> d8 ~ d2 \bar "||"
    \pageBreak | % 14
    R1*2 \pageBreak | % 16
    R1*2 \pageBreak | % 18
    b2  \mp a2 | % 19
    a2 \< b2 | \barNumberCheck #20
    r2  r8 d8 \f [ d8 d8 ] \pageBreak | % 21
    d8 [ d8 d8 e8 ] fis4 e4 | % 22
    d2 \mp ~ d4 r4 | % 23
    d4. \> d8 ~ d2 \bar "||"
    \pageBreak | % 24
    b2  \f a2 | % 25
    a2 b2 | % 26
    b4. a8 ~ a4 a4 \pageBreak | % 27
    d2 cis2 | % 28
    b2 \f a2 | % 29
    b4 cis4 d2 \> \pageBreak | \barNumberCheck #30
    d4.  \mp d8 ~ d4 r4 | % 31
    d4. d8 ~ d2 | % 32
    d4. \> d8 ~ d2 | % 33
    R1 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
     }

PartPOneFiveVoiceOne =  \relative g' {
    \transposition f \clef "treble" \key d \major
    \numericTimeSignature\time 4/4 | % 1
    g2 \mp fis2 | % 2
    e2 fis2 | % 3
    g4. fis8 ~ fis2 | % 4
    a1 \bar "||"
    \pageBreak | % 5
    g2 \mp fis2 | % 6
    e2 fis2 | % 7
    g4. fis8 ~ fis2 \pageBreak | % 8
    a1 | % 9
    g2 \f fis2 | \barNumberCheck #10
    g4 a4 b2 \> \pageBreak | % 11
    g4.  \mp g8 ~ g4 r4 | % 12
    b4. a8 ~ a2 | % 13
    b4. \> a8 ~ a2 \bar "||"
    \pageBreak | % 14
    R1*2 \pageBreak | % 16
    R1*2 \pageBreak | % 18
    g2  \mp fis2 | % 19
    e2 \< fis2 | \barNumberCheck #20
    r2  d2 \mf \pageBreak | % 21
    d2 cis4 cis4 | % 22
    d2 \mp ~ d4 r4 | % 23
    b'4. \> a8 ~ a2 \bar "||"
    \pageBreak | % 24
    g2  \f fis2 | % 25
    e2 fis2 | % 26
    g4. fis8 ~ fis4 fis4 \pageBreak | % 27
    a1 | % 28
    g2 \f fis2 | % 29
    g4 a4 b2 \> \pageBreak | \barNumberCheck #30
    b4.  \mp b8 ~ b4 r4 | % 31
    b4. a8 ~ a2 | % 32
    b4. \> a8 ~ a2 | % 33
    R1 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
     }

PartPOneSixVoiceOne =  \relative c' {
    \clef "bass" \key g \major \numericTimeSignature\time 4/4 | % 1
    c2 \mp b2 | % 2
    a2 b2 | % 3
    c4. b8 ~ b2 | % 4
    a1 \bar "||"
    \pageBreak | % 5
    c2 \mp b2 | % 6
    a2 b2 | % 7
    c4. b8 ~ b2 \pageBreak | % 8
    a1 | % 9
    c2 \f b2 | \barNumberCheck #10
    g4 a4 b2 \> \pageBreak | % 11
    c4.  \mp c8 ~ c4 r4 | % 12
    c4. b8 ~ b4 \breathe g8 [ b8 ] | % 13
    c4. \> b8 ~ b2 \bar "||"
    \pageBreak | % 14
    R1*2 \pageBreak | % 16
    R1*2 \pageBreak | % 18
    g2  \mp g2 | % 19
    fis2 \< g2 | \barNumberCheck #20
    r2  r8 g8 \f [ g8 g8 ] \pageBreak | % 21
    g8 [ g8 g8 a8 ] b4 a4 | % 22
    c4. \mp b8 ~ b4 \breathe g8 [ b8 ] | % 23
    c4. \> b8 ~ b2 \bar "||"
    \pageBreak | % 24
    c2  \f \f b2 | % 25
    a2 b2 | % 26
    c4. b8 ~ b4 b4 \pageBreak | % 27
    a1 | % 28
    c2 \f \f b2 | % 29
    g4 a4 b2 \> \pageBreak | \barNumberCheck #30
    c4.  \mp c8 ~ c4 r4 | % 31
    c4. b8 ~ b4 \breathe g8 [ b8 ] | % 32
    c4. \> b8 ~ b2 | % 33
    b1  \pp ~ \bar "||"
    b4 r4 r2 | % 35
    R1 \pageBreak | % 36
    R1*13 \bar "|."
    }

PartPOneSevenVoiceOne =  \relative g {
    \clef "bass" \key g \major \numericTimeSignature\time 4/4 | % 1
    g2 \mp g2 | % 2
    fis2 g2 | % 3
    g4. g8 ~ g2 | % 4
    g2 fis2 \bar "||"
    \pageBreak | % 5
    g2 \mp g2 | % 6
    fis2 g2 | % 7
    g4. g8 ~ g2 \pageBreak | % 8
    g2 fis2 | % 9
    g2 \f g2 | \barNumberCheck #10
    g4 a4 b2 \> \pageBreak | % 11
    g4.  \mp g8 ~ g4 r4 | % 12
    c4. b8 ~ b4 \breathe g8 [ b8 ] | % 13
    c4. \> b8 ~ b2 \bar "||"
    \pageBreak | % 14
    R1*2 \pageBreak | % 16
    R1*2 \pageBreak | % 18
    e,2  \mp d2 | % 19
    d2 \< e2 | \barNumberCheck #20
    r2  e2 \mf \pageBreak | % 21
    d2 d4 d4 | % 22
    c'4. \mp b8 ~ b4 \breathe g8 [ b8 ] | % 23
    c4. \> b8 ~ b2 \bar "||"
    \pageBreak | % 24
    g2  \f g2 | % 25
    fis2 g2 | % 26
    g4. g8 ~ g4 g4 \pageBreak | % 27
    d1 | % 28
    g2 \f g2 | % 29
    e4 fis4 g2 \> \pageBreak | \barNumberCheck #30
    g4.  \mp g8 ~ g4 r4 | % 31
    c4. b8 ~ b4 \breathe g8 [ b8 ] | % 32
    c4. \> b8 ~ b2 | % 33
    g1  \pp ~ \bar "||"
    g4 r4 r2 | % 35
    R1 \pageBreak | % 36
    R1*13 \bar "|."
    }

PartPOneEightVoiceOne =  \relative c {
    \clef "bass" \key g \major \numericTimeSignature\time 4/4 | % 1
    c2 \mp g2 | % 2
    fis2 e2 | % 3
    c'4. g8 ~ g2 | % 4
    d1 \bar "||"
    \pageBreak | % 5
    c'2 \mp g2 | % 6
    fis2 e2 | % 7
    c'4. g8 ~ g2 \pageBreak | % 8
    d1 | % 9
    c'2 \f g2 | \barNumberCheck #10
    c4 d4 e2 \> \pageBreak | % 11
    c4.  \mp c8 ~ c4 d4 | % 12
    g,4. g8 ~ g2 | % 13
    g4. \> g8 ~ g2 \bar "||"
    \pageBreak | % 14
    c4.  \mp c8 g4. g8 | % 15
    d4. d8 e2 \pageBreak | % 16
    c4. c8 g'4. g8 | % 17
    d4 d8 [ e8 ~ ] e4. e8 \pageBreak | % 18
    c'4. c8 g4. g8 | % 19
    d'4. d8 e2 | \barNumberCheck #20
    r2 c4. \mf c8 \pageBreak | % 21
    g4. g8 d'4 d,4 | % 22
    g4. g8 ~ g2 | % 23
    g4. g8 ~ g2 \bar "||"
    \pageBreak | % 24
    c2 \f g2 | % 25
    fis2 e2 | % 26
    c'4. g8 ~ g2 \pageBreak | % 27
    d'1 | % 28
    c2 \f g2 | % 29
    c,4 d4 e2 \> \pageBreak | \barNumberCheck #30
    c4.  \mp c8 ~ c4 d4 | % 31
    g4. g8 ~ g2 | % 32
    g4. \> g8 ~ g2 | % 33
    R1 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
     }

PartPOneNineVoiceOne =  \relative e'' {
    \transposition c''' \clef "treble" \key g \major
    \numericTimeSignature\time 4/4 | % 1
    e4 \mf e8 [ d8 ] b2 | % 2
    a8 [ b8 a8 g8 ] e8 ~ e4 d8 | % 3
    e8 [ g8 d'8 b8 ~ ] b4 g4 | % 4
    a2 r2 \bar "||"
    \pageBreak | % 5
    R1*3 \pageBreak | % 8
    R1*3 \pageBreak | % 11
    R1*3 \bar "||"
    \pageBreak | % 14
    R1*2 \pageBreak | % 16
    R1*2 \pageBreak | % 18
    R1*3 \pageBreak | % 21
    R1*3 \bar "||"
    \pageBreak | % 24
    R1*3 \pageBreak | % 27
    R1*3 \pageBreak | \barNumberCheck #30
    R1*4 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
    }

PartPTwoZeroVoiceOne =  \relative g'' {
    \clef "percussion" \key c \major \numericTimeSignature\time 4/4 R1*4
    \bar "||"
    \pageBreak | % 5
    R1*3 \pageBreak | % 8
    R1*3 \pageBreak | % 11
    R1*3 \bar "||"
    \pageBreak | % 14
    \once \override NoteHead #'style = #'cross g8 \mf [ \once \override
    NoteHead #'style = #'cross g8 \once \override NoteHead #'style =
    #'cross g8 \once \override NoteHead #'style = #'cross g8 ] \once
    \override NoteHead #'style = #'cross g8 [ \once \override NoteHead
    #'style = #'cross g8 \once \override NoteHead #'style = #'cross g8
    \once \override NoteHead #'style = #'cross g8 ] | % 15
    \once \override NoteHead #'style = #'cross g8 [ \once \override
    NoteHead #'style = #'cross g8 \once \override NoteHead #'style =
    #'cross g8 \once \override NoteHead #'style = #'cross g8 ] \once
    \override NoteHead #'style = #'cross g8 [ \once \override NoteHead
    #'style = #'cross g8 \once \override NoteHead #'style = #'cross g8
    \once \override NoteHead #'style = #'cross g8 ] \pageBreak | % 16
    \once \override NoteHead #'style = #'cross g8 [ \once \override
    NoteHead #'style = #'cross g8 \once \override NoteHead #'style =
    #'cross g8 \once \override NoteHead #'style = #'cross g8 ] \once
    \override NoteHead #'style = #'cross g8 [ \once \override NoteHead
    #'style = #'cross g8 \once \override NoteHead #'style = #'cross g8
    \once \override NoteHead #'style = #'cross g8 ] | % 17
    \once \override NoteHead #'style = #'cross g8 [ \once \override
    NoteHead #'style = #'cross g8 \once \override NoteHead #'style =
    #'cross g8 \once \override NoteHead #'style = #'cross g8 ] \once
    \override NoteHead #'style = #'cross g8 [ \once \override NoteHead
    #'style = #'cross g8 \once \override NoteHead #'style = #'cross g8
    \once \override NoteHead #'style = #'cross g8 ] \pageBreak | % 18
    \once \override NoteHead #'style = #'cross g8 [ \once \override
    NoteHead #'style = #'cross g8 \once \override NoteHead #'style =
    #'cross g8 \once \override NoteHead #'style = #'cross g8 ] \once
    \override NoteHead #'style = #'cross g8 [ \once \override NoteHead
    #'style = #'cross g8 \once \override NoteHead #'style = #'cross g8
    \once \override NoteHead #'style = #'cross g8 ] | % 19
    \once \override NoteHead #'style = #'cross g8 [ \once \override
    NoteHead #'style = #'cross g8 \once \override NoteHead #'style =
    #'cross g8 \once \override NoteHead #'style = #'cross g8 ] \once
    \override NoteHead #'style = #'cross g8 [ \once \override NoteHead
    #'style = #'cross g8 \once \override NoteHead #'style = #'cross g8
    \once \override NoteHead #'style = #'cross g8 ] | \barNumberCheck
    #20
    r2 \f \once \override NoteHead #'style = #'cross g8 \mf [ \once
    \override NoteHead #'style = #'cross g8 \once \override NoteHead
    #'style = #'cross g8 \once \override NoteHead #'style = #'cross g8 ]
    \pageBreak | % 21
    \once \override NoteHead #'style = #'cross g8 [ \once \override
    NoteHead #'style = #'cross g8 \once \override NoteHead #'style =
    #'cross g8 \once \override NoteHead #'style = #'cross g8 ] \once
    \override NoteHead #'style = #'cross g8 [ \once \override NoteHead
    #'style = #'cross g8 \once \override NoteHead #'style = #'cross g8
    \once \override NoteHead #'style = #'cross g8 ] | % 22
    \once \override NoteHead #'style = #'cross g8 [ \once \override
    NoteHead #'style = #'cross g8 \once \override NoteHead #'style =
    #'cross g8 \once \override NoteHead #'style = #'cross e8 ] \once
    \override NoteHead #'style = #'cross e4 \once \override NoteHead
    #'style = #'cross e4 | % 23
    \once \override NoteHead #'style = #'cross g8 [ \once \override
    NoteHead #'style = #'cross g8 \once \override NoteHead #'style =
    #'cross g8 \once \override NoteHead #'style = #'cross e8 ] \once
    \override NoteHead #'style = #'cross e4 \once \override NoteHead
    #'style = #'cross e4 \bar "||"
    \pageBreak | % 24
    \once \override NoteHead #'style = #'cross g8 \f [ \once \override
    NoteHead #'style = #'cross g8 <c, \tweak #'style #'cross g'>8 \once
    \override NoteHead #'style = #'cross g'8 ] \once \override NoteHead
    #'style = #'cross g8 [ \once \override NoteHead #'style = #'cross g8
    <c, \tweak #'style #'cross g'>8 \once \override NoteHead #'style =
    #'cross g'8 ] | % 25
    \once \override NoteHead #'style = #'cross g8 [ \once \override
    NoteHead #'style = #'cross g8 <c, \tweak #'style #'cross g'>8 \once
    \override NoteHead #'style = #'cross g'8 ] \once \override NoteHead
    #'style = #'cross g8 [ \once \override NoteHead #'style = #'cross g8
    <c, \tweak #'style #'cross g'>8 <c \tweak #'style #'cross g'>8 ] | % 26
    \once \override NoteHead #'style = #'cross g'8 [ \once \override
    NoteHead #'style = #'cross g8 <c, \tweak #'style #'cross g'>8 <c
        \tweak #'style #'cross g'>8 ] \once \override NoteHead #'style =
    #'cross g'8 [ \once \override NoteHead #'style = #'cross g8 <c,
        \tweak #'style #'cross g'>8 \once \override NoteHead #'style =
    #'cross g'8 ] \pageBreak | % 27
    <c, \tweak #'style #'cross g'>8 [ \once \override NoteHead #'style =
    #'cross g'8 <c, \tweak #'style #'cross g'>8 \once \override NoteHead
    #'style = #'cross g'8 ] \once \override NoteHead #'style = #'cross g8
    [ \once \override NoteHead #'style = #'cross g8 <c, \tweak #'style
        #'cross g'>8 \once \override NoteHead #'style = #'cross g'8 ] | % 28
    \once \override NoteHead #'style = #'cross g8 \f [ \once \override
    NoteHead #'style = #'cross g8 <c, \tweak #'style #'cross g'>8 \once
    \override NoteHead #'style = #'cross g'8 ] \once \override NoteHead
    #'style = #'cross g8 [ \once \override NoteHead #'style = #'cross g8
    <c, \tweak #'style #'cross g'>8 \once \override NoteHead #'style =
    #'cross g'8 ] | % 29
    <c, \tweak #'style #'cross g'>8 [ \once \override NoteHead #'style =
    #'cross g'8 <c, \tweak #'style #'cross g'>8 \once \override NoteHead
    #'style = #'cross g'8 ] <c, \tweak #'style #'cross g'>8 \> [ \once
    \override NoteHead #'style = #'cross g'8 \once \override NoteHead
    #'style = #'cross g8 <c, \tweak #'style #'cross g'>8 ] \pageBreak |
    \barNumberCheck #30
    \once \override NoteHead #'style = #'cross g'8  \mp [ \once
    \override NoteHead #'style = #'cross g8 \once \override NoteHead
    #'style = #'cross g8 \once \override NoteHead #'style = #'cross e8 ]
    \once \override NoteHead #'style = #'cross e4 \once \override
    NoteHead #'style = #'cross e4 | % 31
    \once \override NoteHead #'style = #'cross g8 [ \once \override
    NoteHead #'style = #'cross g8 \once \override NoteHead #'style =
    #'cross g8 \once \override NoteHead #'style = #'cross e8 ] \once
    \override NoteHead #'style = #'cross e4 \once \override NoteHead
    #'style = #'cross e4 | % 32
    \once \override NoteHead #'style = #'cross g8 [ \once \override
    NoteHead #'style = #'cross g8 \once \override NoteHead #'style =
    #'cross g8 \once \override NoteHead #'style = #'cross e8 ] \once
    \override NoteHead #'style = #'cross e4 \once \override NoteHead
    #'style = #'cross e4 | % 33
    R1 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
    }

PartPTwoZeroVoiceTwo =  \relative f' {
    \clef "percussion" \key c \major \numericTimeSignature\time 4/4 s1*4
    \bar "||"
    \pageBreak s1*3 \pageBreak s1*3 \pageBreak s1*3 \bar "||"
    \pageBreak | % 14
    f4. \mf f8 f2 | % 15
    f4. f8 f2 \pageBreak | % 16
    f4. f8 f2 | % 17
    f4. f8 f2 \pageBreak | % 18
    f4. f8 f2 | % 19
    f4. f8 f4 f4 | \barNumberCheck #20
    s2 \f | \barNumberCheck #20
    f4 \mf f4 f4. f8 \pageBreak | % 21
    <f f>2 f8 | % 22
    f4. <f f>8 ~ s4. | % 23
    f4. f8 ~ f2 \bar "||"
    \pageBreak | % 24
    <f a>4. \f f8 f2 | % 25
    <f a>4. f8 f2 | % 26
    <f a>4. f8 f2 \pageBreak | % 27
    <f a>4. f8 f2 | % 28
    <f a>4. \f f8 f2 s2 s2 \> | % 29
    f4.  a4. f8 f2 \pageBreak | \barNumberCheck #30
    f4. \mp f8 ~ f2 | % 31
    f4. f8 ~ f2 | % 32
    f4. f8 ~ f2 \bar "||"
    s8*13 \pageBreak s1*13 \bar "|."
    }

PartPTwoOneVoiceOne =  \relative c, {
    \clef "bass_8" \key g \major \numericTimeSignature\time 4/4 | % 1
    c2 \mp g2 | % 2
    fis2 e2 | % 3
    c'4. g8 ~ g2 | % 4
    d'1 \bar "||"
    \pageBreak | % 5
    c2 \mp g2 | % 6
    fis2 e2 | % 7
    c'4. g8 ~ g2 \pageBreak | % 8
    d'1 | % 9
    c2 \f g2 | \barNumberCheck #10
    c4 d4 e2 \> \pageBreak | % 11
    c4.  \mp c8 ~ c4 d4 | % 12
    g,4. g8 ~ g2 | % 13
    g4. \> g8 ~ g2 \bar "||"
    \pageBreak | % 14
    c4.  \mp c8 g4. g8 | % 15
    d'4. d8 e2 \pageBreak | % 16
    c4. c8 g4. g8 | % 17
    d'4 d8 [ e8 ~ ] e4. e8 \pageBreak | % 18
    c4. c8 g4. g8 | % 19
    d'4. d8 e2 | \barNumberCheck #20
    r2 c4. \mf c8 \pageBreak | % 21
    g4. g8 d'4 d4 | % 22
    g,4. g8 ~ g2 | % 23
    g4. g8 ~ g2 \bar "||"
    \pageBreak | % 24
    c2 \f g2 | % 25
    fis2 e2 | % 26
    c'4. g8 ~ g2 \pageBreak | % 27
    d'1 | % 28
    c2 \f g2 | % 29
    c4 d4 e2 \> \pageBreak | \barNumberCheck #30
    c4.  \mp \mp c8 ~ c4 d4 | % 31
    g,4. g8 ~ g2 | % 32
    g4. \> g8 ~ g2 | % 33
    R1 \bar "||"
    R1*2 \pageBreak | % 36
    R1*13 \bar "|."
     }

PartPTwoOneVoiceTwo =  \relative c' {
    \clef "bass_8" \key g \major \numericTimeSignature\time 4/4 | % 1
    s1*4 \mp \bar "||"
    \pageBreak | % 5
    s1*3 \mp \pageBreak s1 | % 9
    s1. \f s2 \> \pageBreak | % 11
    s1*2  \mp | % 13
    s1 \> \bar "||"
    \pageBreak | % 14
    s1*2  \mp \pageBreak s1*2 \pageBreak s2*5 s2 \mf \pageBreak s2*5 r2
    \bar "||"
    \pageBreak | % 24
    s1*3 \f \pageBreak s1 | % 28
    s1. \f s2 \> \pageBreak | \barNumberCheck #30
    s1*2  \mp \mp | % 32
    s1 \> s1  \bar "||"
    s1*2 \pageBreak s1*13 \bar "|."
    }


% The score definition
\score {
    <<
        \new StaffGroup <<
            \new StaffGroup <<
                \new Staff <<
                    \set Staff.instrumentName = "1st Flutes"
                    \set Staff.shortInstrumentName = "Fl. 1"
                    \context Staff << 
                        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "2nd Flutes"
                    \set Staff.shortInstrumentName = "Fl. 2"
                    \context Staff << 
                        \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                        >>
                    >>
                
                >>
            \new StaffGroup <<
                \new Staff <<
                    \set Staff.instrumentName = "1st B♭ Clarinet"
                    \set Staff.shortInstrumentName = "B♭ Cl. 1"
                    \context Staff << 
                        \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "2nd B♭ Clarinet"
                    \set Staff.shortInstrumentName = "B♭ Cl. 2"
                    \context Staff << 
                        \context Voice = "PartPFourVoiceOne" { \PartPFourVoiceOne }
                        >>
                    >>
                
                >>
            \new StaffGroup <<
                \new Staff <<
                    \set Staff.instrumentName = "Solo Bassoon"
                    \set Staff.shortInstrumentName = "Solo Bsn."
                    \context Staff << 
                        \context Voice = "PartPFiveVoiceOne" { \PartPFiveVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "Bassoons"
                    \set Staff.shortInstrumentName = "Bsns."
                    \context Staff << 
                        \context Voice = "PartPSixVoiceOne" { \voiceOne \PartPSixVoiceOne }
                        \context Voice = "PartPSixVoiceTwo" { \voiceTwo \PartPSixVoiceTwo }
                        >>
                    >>
                
                >>
            \new StaffGroup <<
                \new Staff <<
                    \set Staff.instrumentName = "1st Alto Saxophones"
                    \set Staff.shortInstrumentName = "A. Sax. 1"
                    \context Staff << 
                        \context Voice = "PartPSevenVoiceOne" { \PartPSevenVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "2nd Alto Saxophone (opt)"
                    \set Staff.shortInstrumentName = "A. Sax. 2"
                    \context Staff << 
                        \context Voice = "PartPEightVoiceOne" { \PartPEightVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "Tenor Saxophone"
                    \set Staff.shortInstrumentName = "T. Sax."
                    \context Staff << 
                        \context Voice = "PartPNineVoiceOne" { \PartPNineVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "Baritone Saxophone"
                    \set Staff.shortInstrumentName = "Bar. Sax."
                    \context Staff << 
                        \context Voice = "PartPOneZeroVoiceOne" { \PartPOneZeroVoiceOne }
                        >>
                    >>
                
                >>
            
            >>
        \new StaffGroup <<
            \new StaffGroup <<
                \new Staff <<
                    \set Staff.instrumentName = "Solo Trumpets"
                    \set Staff.shortInstrumentName = "Solo Tpt."
                    \context Staff << 
                        \context Voice = "PartPOneOneVoiceOne" { \PartPOneOneVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "1st Trumpets"
                    \set Staff.shortInstrumentName = "B♭ Tpt. 1"
                    \context Staff << 
                        \context Voice = "PartPOneTwoVoiceOne" { \PartPOneTwoVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "2nd Trumpets"
                    \set Staff.shortInstrumentName = "B♭ Tpt. 2"
                    \context Staff << 
                        \context Voice = "PartPOneThreeVoiceOne" { \PartPOneThreeVoiceOne }
                        >>
                    >>
                
                >>
            \new StaffGroup <<
                \new Staff <<
                    \set Staff.instrumentName = "1st Horn in F"
                    \set Staff.shortInstrumentName = "F Hn. 1"
                    \context Staff << 
                        \context Voice = "PartPOneFourVoiceOne" { \PartPOneFourVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "2nd Horn in F"
                    \set Staff.shortInstrumentName = "F Hn. 2"
                    \context Staff << 
                        \context Voice = "PartPOneFiveVoiceOne" { \PartPOneFiveVoiceOne }
                        >>
                    >>
                
                >>
            \new StaffGroup <<
                \new Staff <<
                    \set Staff.instrumentName = "1st Trombone"
                    \set Staff.shortInstrumentName = "1st Tbn."
                    \context Staff << 
                        \context Voice = "PartPOneSixVoiceOne" { \PartPOneSixVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "2nd Trombone"
                    \set Staff.shortInstrumentName = "Tbn. 2"
                    \context Staff << 
                        \context Voice = "PartPOneSevenVoiceOne" { \PartPOneSevenVoiceOne }
                        >>
                    >>
                
                >>
            \new StaffGroup <<
                \new Staff <<
                    \set Staff.instrumentName = "Tuba"
                    \set Staff.shortInstrumentName = "Tba."
                    \context Staff << 
                        \context Voice = "PartPOneEightVoiceOne" { \PartPOneEightVoiceOne }
                        >>
                    >>
                
                >>
            
            >>
        \new StaffGroup <<
            \new StaffGroup <<
                \new Staff <<
                    \set Staff.instrumentName = "Glockenspiel"
                    \set Staff.shortInstrumentName = "Glk."
                    \context Staff << 
                        \context Voice = "PartPOneNineVoiceOne" { \PartPOneNineVoiceOne }
                        >>
                    >>
                \new DrumStaff <<
                    \set DrumStaff.instrumentName = "Drumset"
                    \set DrumStaff.shortInstrumentName = "Drs."
                    \context DrumStaff << 
                        \context DrumVoice = "PartPTwoZeroVoiceOne" { \voiceOne \PartPTwoZeroVoiceOne }
                        \context DrumVoice = "PartPTwoZeroVoiceTwo" { \voiceTwo \PartPTwoZeroVoiceTwo }
                        >>
                    >>
                
                >>
            
            >>
        \new StaffGroup <<
            \new StaffGroup <<
                \new Staff <<
                    \set Staff.instrumentName = "Electric Bass"
                    \set Staff.shortInstrumentName = "El. B."
                    \context Staff << 
                        \context Voice = "PartPTwoOneVoiceOne" { \voiceOne \PartPTwoOneVoiceOne }
                        \context Voice = "PartPTwoOneVoiceTwo" { \voiceTwo \PartPTwoOneVoiceTwo }
                        >>
                    >>
                
                >>
            
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
     \midi {}
    }

