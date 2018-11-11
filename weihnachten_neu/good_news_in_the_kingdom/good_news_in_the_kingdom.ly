\version "2.13.39"

#(set-global-staff-size 19)

dcaf = { 
	\once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
	\mark "D.C. al Fine" }

\header {
  title = "Good news in the Kingdom"
  composer = "West Indies Spiritual"
  arranger = "Arr. by Francis ..."
}
global = {
  \key es \major
  \time 2/4
}

soprano = \relative c' {
  \global
  % refrain
  es8 es4 g16 as16
  bes8 bes4 bes16 bes16
  c8 bes4 bes8 
  bes8. as16 g8 f8 \break
  
  es8 es4 g16 as16
  bes8 bes8 bes8\fermata g16 g16
  as8 g4 f8 
  es4. \mark "Fine" r8 \bar"|." \break
  
  % vers
  \partial 8 bes'8 es8 es8 d8 d8 c8 bes8 bes8
  bes16 bes16 c8 bes4 bes8 bes4. \break
  
  bes8 es8 es8 d8 d8 c8 bes8 bes8
  bes16 bes16 as8 g4 f8 es2 \dcaf \bar ":|.:" \break
}

alto = \relative c' {
  \global
  % refrain
  es8 es4 es16 es16
  es8 es4 es16 es16
  es8 es4 es8
  d8. es16 d8 d8
  
  es8 es4 es16 es16
  es8 es8 es8\fermata es16 es16
  c8 d4 d8
  bes4. r8
  
  %vers
  \partial 8 as'8 g8 g8 g8 g8 g8 g8 g8 
  es16 es16 es8 es4 es8 c8( d4)
  
  as'8 g8 g8 g8 g8 g8 g8 g8 
  es16 es16 d8 d4 d8 bes2
}

tenor = \relative c' {
  \global
  %refrain
  g8 g4 bes16 bes16
  bes8 bes4 g16 g16 
  as8 g4 bes8
  bes8. c16 bes8 as8
  
  g8 g4 bes16 bes16
  bes8 bes8 bes8\fermata bes16 bes16
  bes8 bes4 as8 
  g4. r8
  
  %vers
  \partial 8 d'8 es8 es8 es8 es8 es8 es8 es8
  g,16 g16 as8 g4 bes8 bes4.
  
  d8 es8 es8 es8 es8 es8 es8 es8
  g,16 g16 c8 bes4 as8 g2
}

bass = \relative c {
  \global
  %Refrain
 es8 es4 es16 f16
 g8 g4 es16 es16
 es8 es4 g8
 f8. f16 bes,8 bes8
 
 es8 es4 es16 f16
 g8 g8 g8\fermata es16 es16
 bes8 bes4 bes8
 es4. r8
 
 %vers
 \partial 8 bes8 es8 bes'8 bes,8 bes'8 es,8 bes'8 es,8
 es16 es16 es8 es4 g8 f4.
 
 bes,8 es8 bes'8 bes,8 bes'8 es,8 bes'8 es,8
 es16 es16 bes8 bes4 bes8 es2
}

text = \lyricmode {
  \set alignBelowContext = sa
  \set stanza = "Ref. "
  Good news in the king -- dom,
  An’ I won’t die no more, my lead -- er;
  Good news in the king -- dom, Lord
  An' I won't die no more.
<<
\new Lyrics {
  \set stanza = "3. " 
  \set alignBelowContext = sa
  I feel de spir -- it mov -- in’ me,
  An’ I won't die no more;
  I’m gwine to join the ju- bi- lee,
    An’ I won't die no more;
}
\new Lyrics {
  \set stanza = "2. " 
  \set alignBelowContext = sa
  I do be -- lieve with -- out a doubt,
  An’ I won't die no more;
  The Chris -- tian has a right to shout,
    An’ I won't die no more;
}
\new Lyrics {
  \set stanza = "1. " 
  \set alignBelowContext = sa
  I saw Saint Pe -- ter on the sea,
  An’ I won't die no more;
  He left his nets and fol -- lered me,
  An’ I won't die no more.
}
>>

}


\score {
  \new ChoirStaff 
  <<
    \new Staff = "sa" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Sopran" "Alt" }
    } 
    <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto  }
    >>
    \new Staff = "tb" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Tenor" "Bass" }
    } 
    <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \lyricsto "alto" {\text}

  >>
  \layout { }
  \midi {
    \context {\Score tempoWholesPerMinute = #(ly:make-moment 100 4)}
  }
}
