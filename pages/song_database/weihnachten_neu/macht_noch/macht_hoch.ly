\version "2.18.2"

\header {
  title = "Macht hoch die Tür"
  poet = "Georg Weißel"
}

global = {
  \key g \major
  \time 3/4 \partial 4
}

sopran = \relative a' { 
  \global
  b4 d2 c4 b2 a4 g( a) b a2 \breathe d4 c2 c4 b2 b4 a( g) a g2 \breathe
  b4 a2 a4 b( cis) d d( e) cis d2 \breathe a4 b2 a4 b( cis) d d( e) cis d2 \breathe
  \repeat unfold 2 {d4 | e2 d4 e2 d4 e( d) c b2 \breathe }
  d4 g,2 g4 c2 b4 a2.~a2 \breathe d4 c2 b4 a( g) a g2.~g2
  \bar "|."
}

alt = \relative g' { 
  \global
  g4 g2 fis4 g2 fis4 g2 g4 fis2 g4 g2 fis4 g2 g4 g2 fis4 d2
  g4 e2 fis4 g2 a4 g2 g4 fis2 fis4 g2 fis4 g2 a4 g2 g4 fis2
  \repeat unfold 2 {g4 g2 g4 g2 g4 g2 fis4 g2 }
  g4 e2 e4 e4.( fis8) g4 a4.( g8 fis e fis2) g4 g2 g4 fis( g) fis d2.~d2
}

tenor = \relative c' { 
  \global
  d4 b2 c4 d2 d4 b( c) d d2 \breathe d4 e2 d4 d2 d4 d2 d4 b2 \breathe
  d4 cis2 d4 d4( e) d b2 a4 a2 \breathe d4 d2 d4 d4( e) d b2 a4 a2 \breathe
  \repeat unfold 2 {b4 | c2 d4 c2 b4 c( b) c d2 \breathe }
  d4 c2 c4 c2 d4 d2.~d2 \breathe d4 e2 d4 d2 d4 b2.~b2 
}

bass = \relative g {
  \global
  g4 g,2 a4 b( c) d e( d) b8( c) d2 b4 a2 d4 g,2 g4 d'2 d4 g,2
  g'4 a2 a4 g2 fis4 e2 a4 d,2 d4 g2 a4 g2 fis4 e2 a4 d,2
  \repeat unfold 2 {g4 | c,2 b4 c2 g'4 c,2 d4 g2 }
  b,4 c2 c8( b) a2 b8( c) d2.~d2 b4 c2 g4 d'2 d4 g,2.~g2 
}

stropheEins = \lyricmode { 
  \set stanza = "1. "
  Macht hoch die Tür, die Tor macht weit!
  Es kommt der Herr der Herr -- lich -- keit,
  ein Kö -- nig al -- ler Kö -- nig -- reich,
  ein Hei -- land al -- ler Welt zu -- gleich,
  der Heil und Le -- ben mit sich bringt,
  der -- hal -- ben jauchzt, mit Freu -- den singt:
  ge -- lo -- bet sei mein Gott, __
  mein Schöp -- fer, reich von Rat! __
}

stropheDrei = \lyricmode { 
  \set stanza = "3. "
  O wohl dem Land, o wohl der Stadt,
  so die -- sen Kö -- nig bei sich hat!
  Wohl al -- len Her -- zen ins -- ge -- mein,
  da die -- ser Kö -- nig zie -- het ein!
  Er ist die rech -- te Freu -- den -- sonn,
  bringt mit sich lau -- ter Freud und Wonn.
  Ge -- lo -- bet sei mein Gott, __
  mein Trö -- ster früh und spat. __
}

stropheFuenf = \lyricmode {
  \set stanza = "5. "
  Komm, o mein Hei -- land Je -- su Christ,
  meins Her -- zens Tür dir of -- fen ist.
  Ach zieh mit dei -- ner Gna -- den ein;
  dein Freund -- lich -- keit auch uns er -- schein.
  Dein Heil -- ger Geist uns führ und leit
  den Weg zur ew -- gen Se -- lig -- keit.
  Dem Na -- men dein, o Herr, __
  sei e -- wig Preis und Ehr. __
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "sopran" <<
        \voiceOne
        \sopran
      >>
      \new Voice = "alt" <<
        \voiceTwo
        \alt
      >>
    >>
    \new Lyrics \lyricsto sopran \stropheEins
    \new Lyrics \lyricsto sopran \stropheDrei
    \new Lyrics \lyricsto sopran \stropheFuenf
    \new Staff <<
      \clef bass
      \new Voice = "tenor" <<
        \voiceOne
        \tenor
      >>
      \new Voice = "bass" <<
        \voiceTwo
        \bass
      >>
    >>
  >>
  \layout { }
  \midi {
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
    \tempo 4 = 138
  }
}
