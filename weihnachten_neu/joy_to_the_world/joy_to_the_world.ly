\version "2.18.2"

\header {
  title = "Joy to the world"
  composer = "Georg Friedrich Händel"
  arranger = "Satz: Siegfried Singer"
  poet = "Isaac Watts, nach Psalm 98"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key d \major
  \time 4/4
}

soprano = \relative c'' {
  \global
  d4 cis8. b16 a4. g8
  fis4 e d4. a'8
  b4. b8 cis4. cis8
  d2. r8 d8
  d (cis) b (a) a8. (g16 fis8) d'
  d (cis) b (a) a8. (g16 fis8) fis
  fis fis fis fis16 (g) a4. g16 (fis)
  e8 e e e16 (fis) g4. fis16 (e)
  d8 (d'4) b8 a8. (g16) fis8 g
  fis4 e d2 \bar "|."  
}

alto = \relative c' {
  \global
  fis4 a8. g16 fis4. e8
  d4 cis d4. a'8
  g4. g8 g4. g8
  fis2. r8 fis8
  fis (a) g (fis) fis8. (e16 d8) fis
  fis (a) g (fis) fis8. (e16 d8) d
  d d d d16 (e) fis4. e16 (d)
  cis8 cis cis cis16 (d) e4. d16 (cis)
  d8 (fis4) g8 fis8. (e16) d8 e
  d4 cis d2
}

tenor = \relative c' {
  \global
  a4 a8. d16 d4. b8
  a4. g8 fis4. d'8 d4. d8 e4. e8
  a,2. r8 a8
  a (a) d (d) d8. (b16 a8) a
  a (a) d (d) d8. (b16 a8) r
  r4 r8 a a a a a
  a4. a8 a a a a16 (g)
  fis8 (a4) d8 d8. (b16) a8 b
  a4. g8 fis2
}

bass = \relative c {
  \global
  d4 d8. d16 d4. g,8
  a4 a d4. fis8
  g4. g8 e4. e8 d2. r8 d8
  d (d) d (d) d8. (d16 d8) d
  d (d) d (d) d8. (d16 d8) r
  r4 r8 d d d d fis
  a4. a8 a, a a a
  d4. d8 d4 d8 g,
  a4 a d2
}

verseOne = \lyricmode {
  \set stanza = "1."
  Joy to the world, the
  Lord is come, let
  earth re -- ceive a king. Let
  e -- v'ry heart pre
  -- pare him room and
  heav'n and na -- ture sing, and
  heav'n and na -- ture sing, and
  \set ignoreMelismata = ##t hea -- ven \set ignoreMelismata = ##f and hea -- ven and na -- ture sing.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Joy to the world, the
  sa -- viour reigns, that
  men their songs em
  -- ploy. White
  fields and floods, rocks,
  hills and plains re
  -- peat the sound -- ing joy, re
  -- peat the sound -- ing joy, re
  -- peat the sound -- ing, the
  sound -- ing joy.
}

verseThree = \lyricmode {
  \set stanza = "3."
  He rules the world with
  truth and grace and
  makes the na -- tions
  prove the
  \set ignoreMelismata = ##t
  glo -- ries of his right -- eous -- ness the
  glo -- ries of his right -- eous -- ness the
  \set ignoreMelismata = ##f
  won -- ders of his love, and
  won -- ders of his love, and
  \set ignoreMelismata = ##t won -- ders \set ignoreMelismata = ##f and won -- _ ders
  of his love.
}

bassverseOne = \lyricmode {
  _ _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _
  _ _ _ _
  _ _ _
  \set stanza = "1."
  and heav'n and na -- ture
  sing, and heav'n and na -- ture
  sing, and hea -- ven and
  na -- ture sing.
}

bassverseTwo = \lyricmode {
  _ _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _
  _ _ _ _
  _ _ _
  \set stanza = "2."
  re -- peat the sound -- ing
  joy, re -- peat the sound -- ing
  joy, the sound -- ing, the
  sound -- ing joy.
}

bassverseThree = \lyricmode {
  _ _ _ _ _
  _ _ _ _
  _ _ _ _
  _ _
  _ _ _ _
  _ _ _
  \set stanza = "3."
  and won -- ders of his
  love, and won -- ders of his
  love, and won -- _ ders
  of his love.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Sopran" "Alt" }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \lyricsto "soprano" \verseOne
    \new Lyrics \lyricsto "soprano" \verseTwo
    \new Lyrics \lyricsto "soprano" \verseThree
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Tenor" "Bass" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \lyricsto "bass" \bassverseOne
    \new Lyrics \lyricsto "bass" \bassverseTwo
    \new Lyrics \lyricsto "bass" \bassverseThree
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
