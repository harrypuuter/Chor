\version "2.18.2"

\header {
  title = "Good News"
  poet = "Spiritual"
  arranger = "Arr. by Wolfgang Kelber "
}

lskip = #(define-music-function (parser location count)(integer?)
  #{
    \repeat unfold $count { \skip 4 }
#})

\paper {
  #(set-paper-size "a4")
}

global = {
  \key g \major
  \time 4/4 \partial 4
}

soprano = \relative c' {
  \global
  \repeat volta 2 { b'4
  b2. r8 b8~b8 b8 a4 g8 g8 b4 a2. r8 b8~b8 b8 a4 g8 g8 b4 
  b2. r8 b8~b8 b8 a4 g8 g8 c8 c8 b8 b4 b8 a4 a8 a8 g2.  }
  % Vers
  \repeat volta 2 { g8 e8 
  d4 e4 d4 e8 e8 g8 g8 b8 g8~g2~g1 r2 r4 e8 e8
  d4 e4 d4 e8 e8 g8 g8 b8 g8~g4 c8 c8 b8 b4 b8 a4 a8 a8 g2. }
}

alto = \relative c' {
  \global
  g'4
  g2. r8 g8~g8 g8 fis4 g8 g8 g4 fis2. r8 g8~g8 g8 fis4 g8 g8 g4
  g2. r8 g8~g8 g8 fis4 g8 g8 g8 g8 g8 g4 g8 fis4 fis8 fis8 d2.
  % Vers
  r4 r1 r2 r4 r8 d8 g4 e4 d4 c8 c8 b8 b8 a4 g4 c8 c8
  b4 c4 b4 c8 c8 d8 d8 d8 e8~e4 e8 e8 d8 d4 d8 d4 c8 c8 b2.

}

tenor = \relative c {
  \global
  d'4 d2. r8 d8~d8 d8 c4 b8 b8 d4 c2. r8 d8~d8 d8 c4 b8 b8 d4 
  d2. r8 d8~d8 d8 c4 b8 b8 e8 e8 d8 d4 d8 d4 c8 c8 b2. 
 % Vers
 g8 e8 d4 e4 d4 e8 e8 g8 g8 b8 g8~g2~g1 r2 r4
 g8 g8 g4 g4 g4 g8 g8 g8 g8 g8 g8~g4 g8 g8 g8 g4 g8 fis4 fis8 fis8 g2.
}

bass = \relative c {
  \global
 g'4 g2. r8 g8~g8 g8 g4 g8 g8 g4 d2. r8 d8~d8 d8 d4 g8 g8 g4 
 g2. r8 g8~g8 g8 d4 e8 e8 c8 c8 d8 d4 d8 d4 d8 d8 g,2.
 %Vers
 r4 r1 r2 r4 r8 d'8 g4 e4 d4 c8 c8 b8 b8 a4 g4 
 g8 g8 g4 g4 a4 a8 a8 b8 b8 b8 e8~e4 a,8 c8 d8 d4 d8 d4 d8 d8 g,2.
}
refOne = \lyricmode {
  \set stanza = "Ref."
  Good News, char -- i -- ot's com -- in', good news, char -- i -- ot's com -- in', good news,
  char -- i -- ot's com -- in', and I don't want to leave me be -- hind.
}

texthigh =  \lyricmode {
  \set stanza = "1. "
  There's a long white robe in the hea -- ven i know,
}

textlow = \lyricmode {
  \set stanza = "1. "
  a long white robe in the hea -- ven i know,
}

refTwo = \lyricmode {
  There's a long white robe in the hea -- ven i know, and I don't want to leave me be -- hind.
}



\score {
  \new ChoirStaff <<
    \new Staff \with {
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \lyricsto "soprano" {\refOne \texthigh \refTwo}
    \new Lyrics \lyricsto "alto" {\lskip 30 \textlow \refTwo }
    \new Staff \with {
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
   \new Lyrics \lyricsto "tenor" {\refOne \texthigh \refTwo}
    \new Lyrics \lyricsto "bass" {\lskip 30 \textlow \refTwo}
  >>
  \layout {
    \context {
      \Lyrics
      \override LyricSpace.minimum-distance = #0.5
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\markup {
  \column {
    \vspace #1
    \line {
      \bold "2."
      \column {
        "There's a pair of wings ... "
      }
    }
    \combine \null \vspace #0.1 %
    \line {
      \bold "3."
      \column {
        "There's a pair of shoes ... "
      }
    }
    \combine \null \vspace #0.1 %
    \line {
      \bold "4."
      \column {
        "There's a golden harp ... "
      }
    }
  }
}