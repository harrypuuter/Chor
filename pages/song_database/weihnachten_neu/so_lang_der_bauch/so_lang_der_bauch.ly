\version "2.19.82"

global = {
  \key c \major
  \time 4/8
}
\header {
  title = "Solang der Bauch in die Weste passt "
  composer = "Volkstümlich"
  arranger = "Arr. von sbrommer"
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  \partial g8
  c8 c8 b8 b16 b16 a8 a8 g8  g8 a8 a8 g8 g8 f8 f8 e8 \break

  g16 g16 g4. g16 g16 g4. g8 g8 f8 e8 d8 c4 \break
 g'4 
  c8 c8 b8 b8 a8 a8 g8 g8 f8 d8 g8 g8 c,4. \bar "|."
  
}

verse = \lyricmode {
    So lang der Bauch in die Wes -- te passt, 
    wird kei -- ne Ar -- beit an -- ge -- fasst.
    Mei -- ne Herrn,
    mei -- ne Herrn,
    die Ar -- beit ist kein Frosch,
    sie hüpft, sie hüpft, sie hüpft, sie hüpft, sie hüpft uns nicht da -- von. 
}

\score {
  \new Staff \with {
    midiInstrument = "aahs choir"
  } { \sopranoVoice }
  \addlyrics { \verse }
  \layout { }
  \midi {
        \context {\Score tempoWholesPerMinute = #(ly:make-moment 100 4)}
  }
}
