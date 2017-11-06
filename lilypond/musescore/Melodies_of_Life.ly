
\version "2.18.2"
% automatically converted by musicxml2ly from Melodies_of_Life.xml

%% additional definitions required by the score:
otherdynamics = #(make-dynamic-script "other-dynamics")

\header {
    encodingsoftware = "MuseScore 2.0.3.1"
    copyright = "http://www.nobuouematsu.com"
    encodingdate = "2017-01-22"
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
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative gis'' {
    \clef "treble" \key e \major \numericTimeSignature\time 4/4 | % 1
    gis4 ^\markup{ \bold\italic {Adagio} } \otherdynamics fis4 <cis e>4.
    cis16 [ dis16 ] | % 2
    e8 [ dis8 cis8 b8 ~ ] b4. fis'16 [ gis16 ] \break | % 3
    <cis, e a>8 [ gis'8 <a, cis e>8 gis'8 ] <b, dis fis>4 <b dis gis>8 [
    e8 ~ ] | % 4
    e2 s2 \sustainOn \break | % 5
    gis,8 [ e'8 ~ ] e2. ~ | % 6
    e2. r8. b16 \sustainOff | % 7
    gis'4 gis8 [ fis16 e16 ~ ] e4 e8 [ dis8 ] \break | % 8
    cis8 [ dis8 ~ ] dis16 [ e16 ~ e16 fis16 ] <fis, b>4. b8 | % 9
    cis8 [ dis8 e8 cis8 ] cis16 [ b16 ~ b16 e16 ~ ] e8 [ gis8 ]
    \pageBreak | \barNumberCheck #10
    a8 [ gis8 ~ ] gis16 [ e16 ~ e16 gis16 ] fis4. gis8 | % 11
    b4 ~ b8 [ b16 dis16 ] b16 [ a16 ~ a16 a16 ~ ] a8 [ gis8 ] \break | % 12
    gis8 [ fis8 ~ ] fis16 [ fis16 ~ fis16 gis16 ] a4 ~ a8 [ gis16 fis16
    ] | % 13
    e4 ~ e8 [ b16 cis16 ] e4 ~ e8 [ e8 ] \break | % 14
    fis4 ~ fis16 [ gis16 ~ gis16 a16 ] fis2 ~ | % 15
    fis2.. b,8 | % 16
    gis'4 gis8 [ fis8 ] e4 e8 [ dis8 ] \break | % 17
    cis8 [ dis8 e8 fis8 ] <fis, b>4. b8 | % 18
    cis8 [ dis8 e8 cis8 ] cis16 [ b16 ~ b16 e16 ~ ] e8 [ gis8 ]
    \pageBreak | % 19
    a8 [ gis8 ~ ] gis16 [ e16 ~ e16 gis16 ] fis4. gis8 | \barNumberCheck
    #20
    b8 [ b8 ] b8 [ b16 cis16 ] b16 [ a16 ~ a16 a16 ~ ] a8 [ gis8 ]
    \break | % 21
    gis8 [ fis8 ~ ] fis16 [ fis16 ~ fis16 gis16 ] a4 ~ <e a>8 [ gis16
    fis16 ] | % 22
    e4 ~ e8 [ b16 cis16 ] e4 ~ e8 [ fis8 ] \break | % 23
    gis16 [ fis16 ~ fis16 e16 ~ ] e2. | % 24
    r2 <a, a'>8 [ <gis gis'>8 <fis fis'>8 <e e'>8 ] \break | % 25
    <dis dis'>8 [ <e e'>16 <fis fis'>16 ~ ] ~ <fis fis'>2. | % 26
    b4. <gis gis'>8 <b b'>8 [ <a a'>8 <gis gis'>8 <fis fis'>8 ] | % 27
    <eis eis'>8 [ <fis fis'>16 <gis gis'>16 ~ ] ~ <gis gis'>2.
    \pageBreak | % 28
    <a a'>4 <gis gis'>4 <fis fis'>2 | % 29
    fis8 gis'8 a8 [ gis16 fis16 ~ ] fis8 [ e8 dis8 e8 ] \break |
    \barNumberCheck #30
    gis2. <b, b'>8 [ <a a'>8 ] | % 31
    <fis fis'>2.. b8 | % 32
    <e, e'>4 <fis fis'>8 [ <gis gis'>8 ] <dis dis'>4 dis'4 \break | % 33
    <dis, dis'>8 [ <e e'>8 <dis dis'>8 <b b'>8 ] <e cis'>4 cis'4 | % 34
    <a a'>8 [ <gis gis'>8 <gis gis'>8 <fis fis'>8 ] <fis fis'>8 <e e'>4
    cis'8 \break | % 35
    <b dis>8 [ <cis e>16 <dis fis>16 ~ ] ~ <dis fis>2. | % 36
    <e, e'>4 <fis fis'>8 [ <gis gis'>8 ] <b b'>4 ~ ~ \once \override
    TupletBracket #'stencil = ##f
    \times 2/3  {
        <b b'>8 [ <gis gis'>8 <dis dis'>8 ] }
    | % 37
    cis'1 \pageBreak | % 38
    <cis a'>8 [ <b gis'>8 <b gis'>8 <a fis'>8 ] <a fis'>4 a4 | % 39
    <b b'>8 [ <a a'>16 <a a'>16 ~ ] ~ <a a'>8 [ <gis gis'>16 <gis gis'>16
    ~ ] ~ <gis gis'>8 [ <fis fis'>8 ~ ] ~ \once \override TupletBracket
    #'stencil = ##f
    \times 2/3  {
        <fis fis'>8 [ <gis gis'>8 <a a'>8 ] }
    \break | \barNumberCheck #40
    <b b'>1 | % 41
    a,4 \rest s8 gis''8 a8 [ gis8 ~ ] \once \override TupletBracket
    #'stencil = ##f
    \times 2/3  {
        gis8 [ dis8 fis8 ] }
    | % 42
    fis8 [ e8 ] e2. \break | % 43
    fis2 <dis fis>8 [ <cis e>16 <b dis>16 ~ ] ~ <b dis>8 [ <a cis>8 ] | % 44
    b4. gis8 b8 [ gis8 <dis' fis>8 <cis e>8 ~ ] ~ \break | % 45
    <cis e>4 <b dis>4 <a cis>4 <gis b>4 | % 46
    cis2 s2 \break | % 47
    <cis a'>8 [ a8 <b fis'>8 gis8 ] <a fis'>8 [ fis8 ] <fis a e'>4 ~ ~ ~
    | % 48
    <fis a e'>4 <fis gis b e>2. ^\fermata \bar "|."
    }

PartPOneVoiceOneChords =  \chordmode {
    | % 1
    e4:5 b4:5 cis4.:m5 s16 s16 | % 2
    fis8:m5 s8 s8 gis8:m5 s4. s16 s16 | % 3
    a8:5/+fis s8 s8 s8 b4:5/+gis gis8:m5 s8 | % 4
    a2:m5 s2 | % 5
    e8:sus4 s8 e2.:5 | % 6
    e2.:sus4 s8. s16 | % 7
    e4:sus4 s8 s16 s16 cis4:m5 s8 s8 | % 8
    a8:5 s8 s16 s16 s16 s16 gis4.:m7 s8 | % 9
    a8:5 s8 s8 s8 e16:maj7 s16 s16 s16 s8 s8 | \barNumberCheck #10
    fis8:m7 s8 s16 s16 s16 s16 b4.:sus4 s8 | % 11
    gis4:m7 s8 s16 s16 cis16:m7 s16 s16 s16 s8 s8 | % 12
    fis8:m7 s8 s16 s16 s16 s16 a4:m5 s8 s16 s16 | % 13
    e4:5 s8 s16 s16 cis4:m7 s8 s8 | % 14
    a4:5 s16 s16 s16 s16 fis2:m7 | % 15
    b2..:5 s8 | % 16
    e4:sus4 e8:5 s8 cis4:m5 s8 s8 | % 17
    a8:5 s8 s8 s8 gis4.:m7 s8 | % 18
    a8:5 s8 s8 s8 e16:5 s16 s16 s16 s8 s8 | % 19
    fis8:m7 s8 s16 s16 s16 s16 b4.:sus4 s8 | \barNumberCheck #20
    gis8:m7 s8 s8 s16 s16 cis16:m7 s16 s16 s16 s8 s8 | % 21
    fis8:m7 s8 s16 s16 s16 s16 a4:m5 s8 s16 s16 | % 22
    e4:5 s8 s16 s16 a4:5 s8 s8 | % 23
    e16:5 s16 s16 s16 s2. | % 24
    a2:5 s8 s8 s8 s8 | % 25
    b8:5 s16 s16 s2. | % 26
    gis4.:m5 s8 s8 s8 s8 s8 | % 27
    cis8:7 s16 s16 s2. | % 28
    fis4:m7 cis4:m5 d2:maj7 | % 29
    b8:m5 s8 s8 s16 s16 cis8:m5 s8 s8 s8 | \barNumberCheck #30
    a2.:maj7 s8 s8 | % 31
    b2..:sus4 s8 | % 32
    e4:5 s8 s8 gis4:m5 s4 | % 33
    b8:5/+a s8 s8 s8 a4:5 s4 | % 34
    fis8:m7 s8 s8 s8 fis8:m5 s4 s8 | % 35
    b8:5/+dis s16 s16 s2. | % 36
    e4:5 s8 s8 gis4:m5 s1*1/12 s1*1/12 s1*1/12 | % 37
    a1:5 | % 38
    fis8:m5 s8 s8 s8 s4 s4 | % 39
    b8:m5/+d s16 s16 s8 s16 s16 s8 s8 s1*1/12 s1*1/12 s1*1/12 |
    \barNumberCheck #40
    b1:sus4 | % 41
    b4:5 s8 s8 s8 s8 s1*1/12 s1*1/12 s1*1/12 | % 42
    e8:5 s8 s2. | % 43
    fis2:m5 s8 s16 s16 s8 s8 | % 44
    e4.:5 s8 b8:5 s8 s8 s8 | % 45
    cis4:m5 s4 s4 s4 | % 46
    a2:5 s2 | % 47
    fis8:m5 s8 e8:5 s8 d8:5 s8 b4:sus4.7 | % 48
    s4 e2.:sus4 \bar "|."
    }

PartPOneVoiceOneLyricsTwo =  \lyricmode { \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 A lone for "I've" search
    -- "dark," For tra -- love side "heart," To weave pick -- piece --
    main dies "fe," lost "frain." Our paths they "cross," through can --
    "why." We "met," we then bye And who hear \skip4 sto -- "told?" ring
    loud they In mem -- \skip4 I see out Now "you're" gone \skip4 I
    still call on name A voice from "past," \skip4 join -- "mine,"
    \skip4 Add -- lay -- ers of har -- And so "geos," "on." Mel --
    "life," \skip4 To birds for ev -- o -- nd \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 }
PartPOneVoiceOneLyricsThree =  \lyricmode { \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 So far and
    "way," see bird "by." \skip4 Gli -- sha -- clouds "sky." "I've" laid
    -- \skip4 mem -- dreams "wings." now see mo -- In mem -- \skip4 do
    you lo -- Was it fate \skip4 that brought leaves me "hind?" A voice
    from "past," \skip4 join -- "mine," \skip4 Add -- lay -- ers if har
    -- And so goes on Mel -- "life," \skip4 To birds for ev -- \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 }
PartPOneVoiceOneLyricsFour =  \lyricmode { \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 If i
    leave this lone -- hind your voice mem -- ber our mel -- Now i
    "we'll" "on." Mel -- "life," come cir -- "hearts," as long me --
    "ber." \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 }
PartPOneVoiceTwo =  \relative c'' {
    \clef "treble" \key e \major \numericTimeSignature\time 4/4 | % 1
    s1*2 ^\markup{ \bold\italic {Adagio} } \otherdynamics \break s1 | % 4
    c4 a4 \sustainOn c8 [ b8 a8 gis8 ] \break s16*31 s16*17 \sustainOff
    \break s1*2 \pageBreak s1*2 \break s1*2 \break s8*5 e'8 [ dis8 cis8
    ] | % 15
    dis4 cis8 [ b8 ~ ] b8 [ fis8 ~ fis8 ] s8*9 \break s1*2 \pageBreak
    s1*2 \break s1*2 \break s16*5 b,16 [ e16 gis16 ] b16 [ a16 gis16 fis16
    ] e16 [ b'16 dis,16 b'16 ] | % 24
    cis,2 s2 \break s2 <b dis>8 [ <cis e>8 <dis fis>8 cis'8 ] s1. d8 [
    cis8 b8 gis8 ] \pageBreak s8*5 \once \override TupletBracket
    #'stencil = ##f
    \times 2/3  {
        fis''16 ( [ cis16 a16 ] }
    \once \override TupletBracket #'stencil = ##f
    \times 4/6  {
        cis16 [ a16 fis16 a16 fis16 cis16 ) ] }
    s1 \break s8 cis8 b8 [ cis8 ] gis4 s16*9 b,16 [ cis16 e16 ] dis8 [
    b'16 a16 ] b8 s8*9 \break s1*2 \break s2 b8 ( [ b16 cis16 ] dis16 [
    b16 cis16 dis16 ) ] s1*2 \pageBreak s1*2 \break s8*5 cis16 ( [ dis16
    ] <cis e>16 [ <dis fis>16 <e gis>16 <fis a>16 ) ] <dis fis b>4. s1 b8
    e8 [ fis8 gis8 b8 ] \break s1*2 \break s4*5 cis,16 [ e16 a16 b16 ]
    <e, cis'>8 [ cis8 <e b'>8 b8 ] \break s1*2 \bar "|."
    }

PartPOneVoiceTwoChords =  \chordmode {
    | % 1
    s1*2 s1 | % 4
    s4 s4 s8 s8 s8 s8 s16*31 s16*17 s1*2 s1*2 s1*2 s8*5 s8 s8 s8 | % 15
    s4 s8 s8 a8:5/+cis s8 b8:5/+dis s8*9 s1*2 s1*2 s1*2 s16*5 s16 s16
    s16 a16:5 s16 s16 s16 b16:5 s16 s16 s16 | % 24
    s1 s2 s8 s8 s8 s8*13 s8 s8 s8 s8 s8*5 s1*1/24 s1*1/24 s1*1/24
    s1*1/24 s1*1/24 s1*1/24 s1*1/24 s1*1/24 s1*25/24 s8 s8 s8 s8 s16*13
    s16 s16 s16 b8:7 s16 s16 s4*5 s1*2 s2 b8:5 s16 s16 s16 s16 s16
    s16*33 s1*2 s8*5 s16 s16 s16 s16 s16 s16 s8*11 s8 s8 s8 s8 s8 s1*2
    s4*5 s16 s16 s16 s16 s8 s8 e8:5 s8 s1*2 \bar "|."
    }

PartPOneVoiceFive =  \relative e' {
    \clef "treble" \key e \major \numericTimeSignature\time 4/4 <e b'>8
    ( [ gis8 <dis b'>8 fis8 ] <cis gis'>2 ) | % 2
    \clef "bass" <fis, a cis>4 ~ ~ ~ <fis a cis>8 [ <gis b dis>8 ~ ] ~ ~
    <gis b dis>8 [ fis8 ~ ] fis16 [ dis16 b16 gis16 ] \break | % 3
    <fis fis'>4 <fis fis'>4 <gis gis'>4 <gis gis'>4 | % 4
    <a a'>2 e''16 [ c16 a16 e16 ~ ] e4 \break | % 5
    \clef "treble" <fis' gis b>8 [ e8 <fis gis b>8 e8 ] <gis b>8 [ e8
    <gis b>8 e8 ] | % 6
    <fis gis b>8 [ e8 <fis gis b>8 e8 ] <gis b>8 [ e8 <gis b>8 e8 ] | % 7
    <fis gis b>8 [ e8 <e gis b>8 dis8 ] <cis e gis>8 [ gis8 <cis e gis>8
    gis8 ] \break | % 8
    <a cis>8 [ e8 <a cis>8 e8 ] \clef "bass" <gis b>8 [ dis8 <gis b>8
    dis8 ] | % 9
    <a' cis>8 [ e8 <a cis>8 e8 ] <gis b dis>8 [ e8 <gis b dis>8 e8 ]
    \pageBreak | \barNumberCheck #10
    \clef "treble" <cis' e fis>8 [ gis8 <cis e fis>8 gis8 ] <b e fis>8 [
    fis8 <b dis fis>8 fis8 ] | % 11
    <b dis fis>8 [ gis8 <b dis fis>8 gis8 ] <cis e gis>8 [ gis8 <cis e
        gis>8 gis8 ] \break | % 12
    <cis fis a>8 [ a8 <cis fis a>8 a8 ] <c e a>8 [ a8 ] b'16 [ c16 a16 e16
    ] | % 13
    <fis gis b>8 [ e8 <fis gis b>8 e8 ] <c e a>8 [ a8 <c e a>8 a8 ]
    \break | % 14
    <cis e a>8 [ a8 <cis e a>8 a8 ] <cis fis a>8 [ a8 <cis fis a>8 a8 ]
    | % 15
    <dis fis b>8 [ b8 <b dis fis>8 gis8 ] <e cis'>8 [ a8 <fis dis'>8 b8
    ] | % 16
    <fis' gis b>8 [ e8 <e gis b>8 dis8 ] <cis e gis>8 [ gis8 <cis e gis>8
    gis8 ] \break | % 17
    <a cis>8 [ e8 <a cis>8 e8 ] \clef "bass" <gis b>8 [ dis8 <gis b>8
    dis8 ] | % 18
    <a' cis>8 [ e8 <a cis>8 e8 ] <gis b dis>8 [ e8 <gis b dis>8 e8 ]
    \pageBreak | % 19
    \clef "treble" <cis' e fis>8 [ a8 <cis e fis>8 a8 ] <b e fis>8 [ fis8
    <b e fis>8 fis8 ] | \barNumberCheck #20
    <b dis fis>8 [ gis8 <b dis fis>8 gis8 ] <cis e gis>8 [ gis8 <cis e
        gis>8 gis8 ] \break | % 21
    <cis fis a>8 [ a8 <cis fis a>8 a8 ] <c e a>8 [ a8 ] b'16 [ c16 a16 e16
    ] | % 22
    <fis gis b>8 [ e8 <fis gis b>8 e8 ] <c e a>8 [ a8 <c e a>8 a8 ]
    \break | % 23
    <e' gis b>8 [ b8 ] <e gis b>4 \clef "bass" <a,, cis e a>4 <b dis fis
        b>4 | % 24
    <cis e a>8 [ a8 <cis e a>8 a8 ] <cis e a>8 [ a8 <cis e a>8 a8 ]
    \break | % 25
    <dis fis b>8 [ b8 <dis fis b>8 b8 ] <dis fis>8 [ b8 <dis fis b>8 b8
    ] | % 26
    <gis' b dis>8 [ dis8 <gis b dis>8 dis8 ] <gis b dis>8 [ dis8 <gis b
        dis>8 dis8 ] | % 27
    <eis gis cis>8 [ cis8 <eis gis cis>8 cis8 ] <gis' cis e>8 [ eis8 dis8
    eis8 ] \pageBreak | % 28
    <fis a dis>4 <gis cis e>4 <d fis a cis>2 | % 29
    <b d fis b>4. <b b'>8 <cis e gis cis>4. <cis cis'>8 \break |
    \barNumberCheck #30
    <e gis a cis>4. gis,8 <e' gis a cis>4 <gis cis e>4 | % 31
    <b e>8 [ fis8 <b e>8 fis8 ] b8 [ fis8 <b dis>8 fis8 ] | % 32
    <gis b>8 [ e8 <gis b>8 e8 ] b'8 [ fis8 <b dis>8 fis8 ] \break | % 33
    <gis b>8 [ dis8 <gis b>8 dis8 ] <a' cis>8 [ <b dis>8 <cis e>8 a8 ] | % 34
    <a cis fis>8 [ fis8 <a cis fis>8 fis8 ] <gis cis e>8 [ e8 <gis cis
        e>8 e8 ] \break | % 35
    <b' dis>8 [ fis8 <dis' fis>8 b8 ] <b dis>8 [ fis8 <dis' fis>8 fis,8
    ] | % 36
    <gis b>8 [ e8 <gis b>8 e8 ] <gis b>8 [ dis8 <gis b>8 dis8 ] | % 37
    cis'8 [ b8 cis8 e8 ] \clef "treble" <gis b>8 [ cis,8 <fis a>8 cis8 ]
    \pageBreak | % 38
    <a cis fis>8 [ fis8 <a cis fis>8 fis8 ] <a cis fis>8 [ a16 ( b16 ]
    cis16 [ b16 cis16 e16 ) ] | % 39
    <cis f a>8 [ fis,8 <cis' f a>8 fis,8 ] \clef "bass" <fis a d>8 [ d8
    <fis a d>8 d8 ] \break | \barNumberCheck #40
    <b' e fis>8 [ fis8 <b e fis>8 fis8 ] <b dis fis>8 [ fis8 <b dis fis>8
    fis8 ] | % 41
    \clef "treble" <b dis fis>4. r8 r2 | % 42
    <gis' b>8 [ e8 <gis b>8 e8 ] <gis b>8 [ e8 <gis b>8 e8 ] \break | % 43
    <fis a>8 [ cis8 <fis a>8 cis8 ] <fis a>8 [ cis8 <fis a>8 cis8 ] | % 44
    <e gis>8 [ b8 <e gis>8 b8 ] <dis fis>8 [ b8 <dis fis>8 b8 ] \break | % 45
    <e gis>8 [ cis8 <e gis>8 cis8 ] <e gis>8 [ cis8 <cis e>8 gis8 ] | % 46
    <cis a'>16 [ e16 a16 b16 ] a4 a4 gis4 \break | % 47
    fis4 e4 dis4 \clef "bass" <b, b'>4 ~ ~ | % 48
    <b b'>4 <e, e'>2. ^\fermata \bar "|."
    }


% The score definition
\score {
    <<
        \context ChordNames = "PartPOneVoiceOneChords" \PartPOneVoiceOneChords
        \context ChordNames = "PartPOneVoiceTwoChords" \PartPOneVoiceTwoChords
        \new PianoStaff <<
            \set PianoStaff.instrumentName = "Piano"
            \context Staff = "1" << 
                \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
                \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsTwo
                \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsThree
                \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsFour
                \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
                >> \context Staff = "2" <<
                \context Voice = "PartPOneVoiceFive" { \PartPOneVoiceFive }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
     \midi {}
    }

