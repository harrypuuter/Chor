\version "2.18.2"

\header {
  title = "O Heiland, reiß die Himmel auf"
  poet = "Friedrich Spee"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key d \minor
  \time 3/4 \partial 4
}

soprano = \relative c' {
  \global
  d4 f2 g4 a2 d,4 f e2 d2.
  a'4 a b c2 f,4 a g2 f r4 \break
  c' c c c2 a4 d2 d4 c2.
  a4 a g a2 f4 g e2 d \bar "|."
  
}

alto = \relative c' {
  \global
  d4 d2 e4 f2 a,4 d cis2 a2.
  f'4 f g g2 d4 f e2 c r4
  e e e f2 f4 g2 g4 e2.
  e4 e e f2 d4 d cis2 a
}

tenor = \relative c {
  \global
  d4 a'2 c4 c2 f,4 bes a2 f2.
  c'4 c d e2 a,4 d c2 a r4
  g g g a2 a4 b2 b4 g2.
  cis4 cis cis d2 a4 bes a2 d
}

bass = \relative c {
  \global
  d4 d2 c4 f2 d4 g,4 a2 d2.
  f,4 f g c2 d4 b4 c2 f,2 r4
  c'4 c c d2 d4 g,2 g4 c2.
  a4 a a d2 d4 g,4 a2 d
}

verseOne = \lyricmode {
  \set stanza = "1."
  O Hei -- land, reiß die Him -- mel auf,
  her -- ab, her -- ab vom Him -- mel lauf.
  Reiß ab vom Him -- mel Tor und Tür,
  reiß ab, wo Schloss und Rie -- gel für.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  O Gott, ein Tau vom Him -- mel gieß,
  im Tau her -- ab, o Hei -- land fließ.
  Ihr Wol -- ken, brecht und reg -- net aus
  den Kö -- nig ü -- ber Ja -- kobs Haus.
}

verseThree = \lyricmode {
  \set stanza = "3."
%   O kla -- re Sonn, du schö -- ner Stern,
%   dich woll -- ten wir an -- schau -- en gern.
%   O Sonn, geh auf, ohn dei -- nen Schein
%   in Fin -- ster -- nis wir al -- le sein.
% }
% 
% verseFour = \lyricmode {
%   \set stanza = "4."
  O Erd, schlag aus, schlag aus, o Erd,
  dass Berg und Tal grün al -- les werd.
  O Erd, her -- für dies Blüm -- lein bring,
  o Hei -- land, aus der Er -- den spring.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \lyricsto "soprano" \verseOne
    \new Lyrics \lyricsto "soprano" \verseTwo
    \new Lyrics \lyricsto "soprano" \verseThree
%     \new Lyrics \lyricsto "soprano" \verseFour
    \new Staff \with {
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\markup {
  \column {
    \line {
      \bold "4."
      \column {
        "Wo bleibst du, Trost der ganzen Welt,"
        "darauf sie all ihr Hoffnung stellt?"
        "O komm, ach komm vom höchsten Saal,"
        "komm, tröst uns hier im Jammertal."
      }
    }
    \combine \null \vspace #0.1 %
    \line {
      \bold "5."
      \column {
        "O klare Sonn, du schöner Stern,"
        "dich wollten wir anschauen gern;"
        "o Sonn, geh auf, ohn deinen Schein"
        "in Finsternis wir alle sein."
      }
    }
    \combine \null \vspace #0.1 %
    \line {
      \bold "6."
      \column {
        "Hier leiden wir die größte Not,"
        "vor Augen steht der ewig Tod."
        "Ach komm, führ uns mit starker Hand"
        "vom Elend zu dem Vaterland."
      }
    }
  }
}