\version "2.18.2"

\header {
  title = "God Rest Ye Merry, Gentlemen"
  arranger = "Andreas Fiebig"
}

\paper {
  #(set-paper-size "a4")
  system-system-spacing.minimum-distance=#20

}

#(set-global-staff-size 19)

global = {
  \key e \minor
  \time 4/4
  \partial 8
}

verseEmptyI = \lyricmode {
_ _ _ _ _ _ _ _
_ _ _ _ _ _
_ _ _ _ _ _ _
_ _ _ _ _ _ 
}


verseOneI = \lyricmode {
God rest ye mer -- ry, gent -- le -- men,
let no -- thing you dis -- may,
re -- mem -- ber, Christ, our Sa -- viour
was born on Christ -- mas day
}

verseOneII = \lyricmode {
to save us all from Sa -- tan's power
when we were gone a -- stray,
}

tidingsI = \lyricmode {
oh ti -- dings of com -- fort and
}

tidingsII = \lyricmode {
joy, com -- fort and joy,
oh ti -- dings of com -- fort and joy.
}

verseTwoI = \lyricmode {
In Beth -- le -- hem, in Is -- ra -- el,
this bles -- sed Babe was born,
and laid with -- in a man -- ger
u -- pon this bles -- sed morn,
}

verseTwoII = \lyricmode {
the which His Mo -- ther Ma -- _ ry
did no -- thing take in scorn,
}

verseThreeI = \lyricmode {
Now to the Lord sing prai -- _ ses,
all you with -- in this place,
and with true love and 
\set ignoreMelismata = ##t
bro -- ther -- hood
\unset ignoreMelismata
each o -- ther now em -- brace,
}

verseThreeII = \lyricmode {
this ho -- ly tide of Christ -- _ mas
all o -- ther doth de -- face,
}

soprano = \relative c' {
  \global
e8
e b' b a g fis e d
e fis g a b4 r8 e,
e b' b a g( fis) e d
e fis g a b4 r8 b

c a b c d e b a
g e fis g a r g( a)
b4 c8 b b( a) g fis
e4 g16 fis e8 a r g( a)

b( c) d e b( a) g fis
e2 r4. \bar "|."
  
}

alto = \relative c' {
  \global
e8
e e e fis e d b b
e e e fis g4 r8 e
e e e fis e( d) b b
e e e e dis4 r

a'2( g4 fis)
e2( fis8) r e( fis)
g4 a8 g g( fis) e dis
c4 e16 d? c8 fis r d4

d4 d8 d d4 d8 d
e2 r4.
}

tenor = \relative c {
  \global
e8
e e g a b a g b
b c c b b4 r8 b
b g g a b( a) g b
b c d c b4 r

e4 (d8 c b c d4)
b2 (a8) r d4
d4 d8 d g,( a) b b
g4 g16 g g8 a r g( fis)
d( e) fis g a4 a8 a
gis?2 r4.
  
}

bass = \relative c {
  \global
e8
e e e e e e e a
g g g fis e4 r8 e
e e e e e4 e8 a
g g g fis b4 r8 b

a fis d e fis g g
d e d a b d r4.
r1
c4 e16 e e8 d r b( a)
g4 g8 g d'4 b8 b
e2 r4.
  
}

sopranoVerseOne = \lyricmode {
  
\verseEmptyI
%\set stanza = "1."
\verseOneII

}

sopranoVerseTwo = \lyricmode {
%  \set stanza = "2."
  %\verseTwoI
\verseEmptyI
\verseTwoII
}

sopranoVerseThree = \lyricmode {
  % \set stanza = "3."
\verseEmptyI
%\verseThreeI
\verseThreeII
%\tidingsI
%\tidingsII
}

altoVerseOne = \lyricmode {
  \set stanza = "1."
  \set stanza = "1."
\verseOneI
ah __ ah __ 
\tidingsI
\tidingsII
}

altoVerseTwo = \lyricmode {
  \set stanza = "2."
\verseTwoI
}

altoVerseThree = \lyricmode {
  \set stanza = "3."
\verseThreeI
}

tenorVerseOne = \lyricmode {
  %  \set stanza = "1."
  %\verseOneI
  %\verseOneII
  %\tidingsII
}

tenorVerseTwo = \lyricmode {
  \set stanza = "2."
  % Text folgt hier.
  
}

tenorVerseThree = \lyricmode {
  \set stanza = "3."
  % Text folgt hier.
  
}

bassVerseOne = \lyricmode {
%  \set stanza = "1."
\verseEmptyI
\verseOneII
%\tidingsII
  
}

bassVerseTwo = \lyricmode {
%  \set stanza = "2."
\verseEmptyI
\verseTwoII
  
}

bassVerseThree = \lyricmode {
%  \set stanza = "3."
\verseEmptyI
\verseThreeII
}

\score {
  \new ChoirStaff <<
    \new Staff = "sa" \with {
%      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Sopran" "Alt" }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      alignAboveContext = "sa"
    } \lyricsto "soprano" \sopranoVerseOne
    \new Lyrics \with {
      alignAboveContext = "sa"
    } \lyricsto "soprano" \sopranoVerseTwo
    \new Lyrics \with {
      alignAboveContext = "sa"
    } \lyricsto "soprano" \sopranoVerseThree
    \new Lyrics \lyricsto "alto" \altoVerseOne
    \new Lyrics \lyricsto "alto" \altoVerseTwo
    \new Lyrics \lyricsto "alto" \altoVerseThree
    \new Staff = "tb" \with {
%      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Tenor" "Bass" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \with {
      alignAboveContext = "tb"
    } \lyricsto "tenor" \tenorVerseOne
    \new Lyrics \with {
      alignAboveContext = "tb"
    } \lyricsto "tenor" \tenorVerseTwo
    \new Lyrics \with {
      alignAboveContext = "tb"
    } \lyricsto "tenor" \tenorVerseThree
    \new Lyrics \lyricsto "bass" \bassVerseOne
    \new Lyrics \lyricsto "bass" \bassVerseTwo
    \new Lyrics \lyricsto "bass" \bassVerseThree
  >>
  \layout {
    \context {
      %\Staff
      %\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
