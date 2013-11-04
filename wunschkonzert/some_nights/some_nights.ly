\version "2.14.2"
date = #(strftime "%d-%m-%Y" (localtime (current-time)))
\header {
  title = "Some Nights"
  composer = "Text und Musik: Fun"
  %\markup \right-column {  \line {Text und Musik: Jack Antonoff,}
   %                                   \line {Jeffrey Bhasker}
    %                                 \line {Andrew Dost, Nathaniel Ruess } }
  arranger = "Arrangement: Andreas Fiebig"
  subtitle = \date
}
#(set-global-staff-size 17)
#(set-default-paper-size "a4")

global = {
  % \key f orginal hier bes 
  \key g \major
  \time 4/4 
  \tempo 4 = 105
}

\paper {
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #-20
  last-bottom-spacing #'basic-distance = #10

  %system-system-spacing = #'((padding . 0) (basic-distance . 0.1))
  %ragged-last-bottom = ##f
  %ragged-bottom = ##f
}

%%%%%%%%Text%%%%%%%%%%%%%%%%%%%%%
Intro = \lyricmode{
Some nights I stay up cash -- ing in my bad luck,
some nights I call it a draw.
Some nights I wish that my lips could build a cas -- tle,
some nights I wish they'd just fall off.
}
IntroPartTwo = \lyricmode{
But I still wake up, I still see your ghost
Oh, Lord, I'm still not sure what I stand for whoa.
What do I stand for? What do I stand for?
Most nights I don't know 
}
FIntroOh = \lyricmode{
more, whoa, whoa, whoa, whoa, whoa, 
whoa, whoa, whoa, whoa, whoa, whoa
}
Oh = \lyricmode{
whoa, whoa, whoa, whoa, whoa, whoa,
whoa, whoa, whoa, whoa, whoa, whoa
}

TenorVersOne = \lyricmode{
This is it, boys, this is war. What are we wait -- ing for?
Why don't we break the rules al -- rea -- dy?
I was ne -- ver one to be -- lieve the hype.
Save that for the black and white
I try twice as hard and I'm half as liked,
but here they come a -- gain to jack my style.
}
 
%%%%%%%%%%%%%%
SAlright = \lyricmode {
whoa __ whoa __ whoa __ whoa
who I am? 
who I am?
who I am? 
who I am?
well
}
AAlright = \lyricmode {
whoa __ whoa __ whoa __ whoa
who I am? oh 
who I am?
who I am?
who I am?
who I am?
well
}
TAlright = \lyricmode {
whoa __ whoa __ whoa __ whoa
who I am? oh 
who I am?
who I am?
who I am?
who I am? well
}

BassVers = \lyricmode {
That's al -- right.
I found a mar -- tyr in my bed to -- night.
She stops my bones from won -- de -- ring just who I am,
who I am? who I am? oh 
who I am?
who I am?
who I am?
who I am?
well
}
%%%%%%%%%%%%%%%%%%
SopVers = \lyricmode {
Some nights I wish that this all would end
'Cause I could use some friends for a change.
And some nights I'm scared you'll for -- get me a -- gain
Some nights I al -- ways win, I al -- ways win.

}

SopranComeOn = \lyricmode{
Oh come on.
Oh come on
come on
Oh come on
come on
they sound like this one, so come on
Oh come on 
Oh come on
Oh come on

}
AltComeOn = \lyricmode{
So this is it?
I sold my soul for this?
Washed my hands of that for this?
I miss my mom and dad for this?
Oh come on come on come on
Oh come on
Oh come on
Oh come on 
}
TenorComeOn = \lyricmode{
Oh come on. Oh come on come on
When I see stars, that's all they are.
When I hear songs, they sound like this one, so come on.
Oh come on Oh come on.
}
BassComeOn = \lyricmode{
Oh come on.
Oh come on
come on_
Oh come on.
Oh come on come on
come on Oh come on
come on Oh come on
}

TenorVerseTwo = \lyricmode{
That is it guys, that is all
five mi -- nutes in and I'm bored a -- gain.
Ten years of this, I'm not sure if an -- y -- bo -- dy un -- der -- stands.
This one is not for folks at home.
Sor -- ry to leave, mom, I had to go
Who the fuck wants to die a -- lone all dried up in the des -- ert sun?
}

SisterVerse = \lyricmode{
My heart is break -- ing for my sis -- ter and the con that she call love.
When I look in -- to my neph -- ew's eyes
you would -- n't be -- lieve the most a -- ma -- zing things that can come from
some ter -- ri -- ble nights.
}
TenorVerseThree = \lyricmode{
The o -- ther night you would -- n't be -- lieve the dream I just
had a -- bout you and me.
I called you up but we'd both a -- gree.

It's for the best you did -- n't li -- sten
It's for the best we get our dis -- tance.
}
%%%%%%%%%%%%%%%%%%%Chords%%%%%%%%%%%%%%%%%%
harmonies = \chordmode {
\germanChords 
g1 
c4. g8 g2
c2 g4 d:sus4
d:sus4 d2.
g1
c4. g8 g2
c4. g8 g4. d8:sus4
d8:sus4 d8 d2 g4
c4. g8 g2
c4. g8 g2
c4. g8 g2
d4. c4. d4
c2 g 
c2 g
e1:m d1
%%%%%%%%%%%%%Refrain
g1
c4. g8 g2
c4. g8 g2
d1
g1
c4. g8 g2
c4. g8 g2
d1

g1
c4. g8 g2
c4. g8 g2
d1
g1
c4. g8 g2
c4. g8 g2
d1
%BassVers
d1
c4. g8 g2
c4. g8 g2
c4. g8 g2
d1
%%ALRIGHT
c4. g8 g2
c4. g8 g2
c1
d1
%%%%%%%%%%%%Re
g1 
c4 d8 g8 g2
c2 g4 d:sus4
d:sus4 d2.
g1
c4. d8 g2 
c4. g8 g2
d1
c4. g8 g2 
c4. g8 g2
c4. g8 g2
d1
c4. g8 g2 
c4. g8 g2
e2:m c2
d1
%%%comeOn
c1 g d d
c g d d
c g d d
%%%Ref
c4. g8 g2
c4. g8 g2
c4. g8 g2
d1
c4. g8 g2
c4. g8 g2
c4. g8 g2
d1
%%sister
c1 g c a:m
c a:m d d d
%%Ref
g1
c4. g8 g2
c4. g8 g2
d1
g1
c4. g8 g2
c4. g8 g2
d1
g1
c4. g8 g2
c4. g8 g2
d1
g1
c4. g8 g2
c4. g8 g2
d1

g1
c4. g8 g2
c4. g8 g2
d1
g1
c4. g8 g2
c4. g8 g2
d1
g1
c4. g8 g2
c4. g8 g2
d1
g1
c4. g8 g2
c4. g8 g2
d1
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Musik%%%%%%%%%%


%%%%Intro%%%%
sopranIntro =  \relative c'' {
\global
g4\mf g8 g b (d) d4
e8 e e d b4 a8 (g)
r8 e' e d b4 a8 a~
a a8~a4 r2

g4 g8 g b (d) d e
e8 e e d b4 a8 (g)
r8 e' e d d d d8 a~
a a~a4 r4 c16 d8.

e8. e16~e8 d8~d16 (c16 b8) b8 d
e8. e16~e8 d r8 g, b d
e8. e16~e8 d8~d16 (c16 b8) b16 c8.
b8. a16 r4 r8 c8 (b8 a)

r8  e' e d b4 a8 (g)
r8 e' e d b4 a8 (g)

e8. e16~e4 r8 c'8~c a
b8 (a8~a4) r4 g16 a8.

}
altIntro =  \relative c'' {
\global
<< { \voiceOne
g4 g8 g b4 b4
c8 c c b g4 fis8 (g)
r8 c c b g4 g8 g~
g fis~fis4 r2

g4 g8 g b4 b8 c
c8 c c b g4 fis8 (g)
r8 c c b b b b8 g~
g fis~fis4 r4 g16 b8.

c8. c16~c8 b8~b16 (a g8) g8 b
c8. c16~c8 b r8 g b b
c8. c16~c8 b8~b16 (a16 g8) g16 a8.
g8. fis16 r4 r8 g8 (g8 fis)

r8  g c c g4 fis8 (g)
r8 c c b g4 fis8 (g)

e8. e16~e4 r8 g8~g g
g8 (fis8~fis4) r4 g16 a8.

}
\new Voice { \voiceTwo
g4 g8 g b8 (g) g4
g8 g g g d4 d
r8 g g g d4 d8 d~
d d~d4 r2

g4 g8 g b (g) g8 g
g8 g g g d4 d
r8 g g g g g g8 d~
d d~d4 r4 g16 g8.

g8. g16~g8 g8~g16 (d~d8) d8 g
g8. g16~g8 g r8 g g g
g8. g16~g8 g8~g16 (d16~d8) d16 d8.
d8. d16 r4 r8 e8 (d4)

r8  g g g d4 d
r8 g g g d4 d

e8. e16~e4 r8 e8~e d
d2 r4 d16 d8.
}>> \oneVoice}

MenIntro =  \relative c' {
\global
R1*16
}
%%%%%%%%Refrain%%%%%%%%%%%
sopranOh =  \relative c'' {
g4. (b8) b (d) 
e4. (d8) r4 b8 (d) 
e4. (d) r4 b8 (a) r1

g4. (b8) b (d) 
e4. (d8) r4 b8 (d) 
e4. (d) r4 b8 (a) r1
}
sopranOh =  \relative c'' {

g4.\f (b8) r4 b8 (d) 
e4. (d8) r4 b8 (d) 
e4. (d8) r4 b8 (a) r1

g4. (b8) r4 b8  (d) 
e4. (d8) r4 b8 (d) 
e4. (d8) r4 b8 (a~) a2. r4
}
altOh =  \relative c' {

d4. (g8) r4 g8 (b) 
g4. (b8) r4 b8 (g) 
g4. (b8) r4 g8 (fis) r1

d4. (g8) r4 g8 (b) 
g4. (b8) r4 b8 (g) 
g4. (b8) r4 g8 (fis~) fis2. r4
}
tenorOh =  \relative c'' {

b4. (d8) r4 d4 
c4. (d8) r4 d4 
c4. (d8) r4 d4 r1

b4. (d8) r4 d4 
c4. (d8) r4 d4 
c4. (d8) r4 d4~d2. r4
}
bassOh =  \relative c' {
g2 r4 g4 
c4. (g8) r4 g8 (b) 
c4. (g8) r4 d4 r1

g2 r4 g4 
c4. (g8) r4 g8 (b) 
c4. (g8) r4 d4~d2. r4
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tenVersOne= \relative c''{
g16 g8 g16~g g8. b8 d e4
r8 e8~e16 d8 c16 d8. d16 b16 (g8.)
r8. e'16~e8 d16 b b8. c16 a8 a16 (b)
b16 (a8) fis16~fis8 r8 r4 r8 g16 g
g16 g8 g16~g g8 g16 d'8 g e4
r8 e16 e~e d8 b16 b8 c a16 g g8
e'8 g,16 e' r8 d16 c b8 c a g
d16 d g a b8 r16 c b8 a a4
}

bassVers = \relative c'{
r2\mf r8 b (a) g
g4 r4 r r16 e g g
c8 c16 g~g8 g8 g8 g e16 (d) r d
c'8 c d8. d16 b8. b16 a8 a
b16 a a16 r16 r8 b16 a a8 r8 d,8 d8
r8 g~g2 r8 g8
c,16 c8 c16~c8 (g'8~g4) r4 
c4. g4. c,4
d16 d d r r8
d16 d d8 r8 d4
}
sopranAlright =  \relative c'' {
r1
c4.\mf (b8~b4) r
c4. (b8~b4) r
c4. (b8~b4) r
d2 r2 
r1 
r2. e16 d d r16
r8\< e16 d d8 r8 r2
e16 d d r16 r8 e16 d d8 r8 d4\!
}
altAlright =  \relative c'' {
r1
g4. (g8~g4) r
g4. (g8~g4) r
g4. (g8~g4) r
g2 r4  b16 (g) g8
r8 b8~b8 (g a8. g16~g8) b8
c16 g8 g16~g8(e16 d~d4) r4
c'4. b4. g4
fis16 fis fis r r8
fis16 fis fis8 r8 fis4
}
tenorAlright =  \relative c'' {
r1
e4. (d8~d4) r
e4. (d8~d4) r
e4. (d8~d4) r 
d2 r4 d8 d
r8 d8~d8 (e d4.) d8
c16 c8 c16~c8 (b8~b4) r4
c4. d4. e4
d16 d d r r8
d16 d d8 r8 d4
}

%%%%%%%%%%%%%%%%%%%
sopranRe = \relative c''{
g8. g16~g8 g b (d) d g
e (d) d b~b16 (a g8) r8 g
e'8 e e d b8 (a) a a~
a a8~a4 r4 r8 a8
g8. g16~g8 g b (d) d g
e8. d16~d8 d b (a) r8  g
e'8 e e d b (a) a4
a4 a4 a8 r8 b16 d8.

e8. e16~e8 d8~d16 (c16 b8) b8 d
e8. e16~e8 d r8 g, b d
e8. e16~e8 d8~d16 (c16 b8) b16 c8.
b8. a16 r4 r8 c8 (b8 a)

r8  e' e d b4 a8 (g)
r8 e' e d b4 a8 (g)

e8.\mf e16~e4 r8 c'8~c a
b8 (a8~a4) r8 g8 e' d~
%%%ComeON
d2 r8 g, a b~
b2 r4 b8 a~
a1~
a2 r8 g e' d~
d2.~d8 (g~
g2) r4 e8 d~
d2. r8 a8
a8. a16~a8 a a a a g~
g2 r8 g e' d~
d2 r8 g,\< e' d~
d2 r8 d4 d8
d2. r4\!\f
}
altRe = \relative c''{
g8. g16~g8 g g4 g8 b
c (b) a g~g4 r8 g
g8 g g b g4 g8 g~
g fis8~fis4 r4 r8 fis8
g8. g16~g8 g g4 g8 b
c8. b16~b8 a g4 r8  g
g8 g g g g4 d4
a'8 (d,) d4 d8 r8
<< { \voiceOne
g16 b8.

c8. c16~c8 b8~b16 (a g8) g8 b
c8. c16~c8 b r8 g b b
c8. c16~c8 b8~b16 (a16 g8) g16 a8.
g8. fis16 r4 r8 g8 (g8 fis)

r8  g c c g4 fis8 (g)
r8 c c b g4 fis8 (g)

e8. e16~e4 r8 g8~g g
g8 (fis8~fis4) r2
}
\new Voice { \voiceTwo
g16 g8.
g8. g16~g8 g8~g16 (d~d8) d8 g
g8. g16~g8 g r8 g g g
g8. g16~g8 g8~g16 (d16~d8) d16 d8.
d8. d16 r4 r8 e8 (d4)

r8  g g g d4 d
r8 g g g d4 d

e8. e16~e4 r8 e8~e d
d2 r2
}>> \oneVoice
%%%ComeOn
r8 r16 g g g g8 r2
r8 g g g g g16 g~g8 r8
g8 g g g16 g~g8 g g r16 g
g8 g g g16 g~g8 g g r8
r2 r8 g a b~
b2 r4 b8 a~
a1~
a2 r4 a8 g~
g2 r8 g a b~
b2 r8 d, g fis~
fis2 r8 fis4 fis8 
fis2. r4


}

tenorRe = \relative c''{
d8. d16~d8 d d (b) b d
c (b) d d~d16 (c b8) r8 d
e8 e e d d4 d8 d~
d d8~d4 r4 r8 d8
d8. d16~d8 d d (b) b d
c8. b16~b8 d d (c) r8 d
e8 e e d d (c) d4
a4 a4 a8 r8 d16 d8.

c8. c16~c8 d8~d4 d8 d
c8. c16~c8 d r8 d d d
c8. c16~c8 d8~d4 d16 d8.
d8. d16 r4 r8 c8 (d4)

r8 c8 c d d4 d
r8 c8 c d b4 d
b8. b16~b4 r8 c8~c d8
d2 r8 d d e~
%%%%%ComeOn%%%
e2 r8 e e d~
d2 r4 e8 d~
d1~
d2 r2


r4 r8 g, g g g4
r8 g g g g4 r8 g16 g
a4 a2 r8 a
c8. c16~c8 b a g e'd~
d1
r8 g, e' d~d2~ 
d2 r8 d4 d8
d2. r4



}
bassRe = \relative c'{
g8. g16~g8 g g (b) g d
c (d) fis g~g4 r8 g
c8 c c b g4 g8 d~
d d8~d4 r4 r8 d8

g8. g16~g8 g g (b) g d
c8. d16~d8 fis g4 r8  g
c8 c c b g4 a4
fis4 fis4 fis8 r8 g16 g8.

c8. c16~c8 g8~g4 g8 g
c8. c16~c8 g r8 g g g
c8. c16~c8 g8~g4 g16 g8.
d8. d16 r4 r8 e8 (d4)

r8 c8 c d g4 g
r8 c,8 c d g4 g
g8. g16~g4 r8 c8~c d8
d2 r8 d, d c~
%%%ComeOn
c2 r8 c c g'~
g2 r4 c,8 d~
d1~
d2 r8 d d c~
c2 r8 c8 c g'~ 
g2 r4 c,8 d~
d1~
d2 r4 d8 c~
c2 r8 c c g'~
g2 r4 c,8 d~
d2 r8 d4 d8 
d2. r4
}

tenorVersTwo= \relative c''{
g8 g16 g16~g g8. e'8 g e4
e8 d16 b e8 d16 b d8. e16 d8 r8
e8 d16 c e8 d16 c d8 d g, b
b16 a8 a16~a16 g a8 r4 r8 g8
g16 g8 g16~g16 g8. e'8 g e4
e16 e8 e16 e8 d16 b d8. d16 b4
r8 e16 d e8 d16 b d8. d16 g,8 b
b16 a a g a g a8 r4 r16 a a a



}
%%%%%%%%%%%%%%%%%%%%%%%%
sopschluss= \relative c''{
g4. (b8) r4 b8 (d) 
e4. (d8) r4 b8 (d) 
e4. (d8) r4 b8 (a) r1 

g4. (b8) r4 b8  (d) 
e4. (d8) r4 b8 (d) 
e4. (d8) r4 b8 (a~) a2
r4 r16
a\mp a a
c8 c c8. d16 b8 b r8 g16 g
a8 g16 g~g8 b b4 r8 d,16 d
c'8 c d8. d16 b8 b a4 
r4 r8 g8 g16 g e g~g4
r8 g g e g4 g8 g~
g4 r8 e16 g e8 e4 (g8 
a2) r2
r4 r8 a\< a8. a16~a8 a 
a2. r4\!
}
altschluss= \relative c'{
d4. (g8) r4 g8 (b) 
g4. (b8) r4 b8 (g) 
g4. (b8) r4 g8 (fis) r1

d4. (g8) r4 g8 (b) 
g4. (b8) r4 b8 (g) 
g4. (b8) r4 g8 (fis~) fis2
r4 r16 fis fis fis
e8 e e8. e16 d8 d r8 d16 d 
d8 d16 d~d8 d8 d4 r8 d16 d
e8 e g8. g16 g8 d d4
r4 r8 e8 e16 e e e~e4

r8 e e e e4 e8 e~
e4 r8 e16 e e8 e4 (g8 
fis2) r2
r4 r8 fis fis8. fis16~fis8 fis 
fis2. r4
}
tenschluss= \relative c''{


g8 g g8. g16 g8 g r b16 b
c8 c16 c~c8 b8 b4 r8 b16 b
c8 e d8. d16 d8 d c4
r4 r8 c8 c16 c c c~c4
r8 c8 c c c4 c8 c~
c4 r8 c16 c c8 c4 (b8 
a2) r2
r4 r8 a a8. a16~a8 a 
a2. r4

}
bassschluss= \relative c'{
g2 r4 g4 
c4. (g8) r4 g8 (b) 
c4. (g8) r4 d4 r1

g2 r4 g4 
c4. (g8) r4 g8 (b) 
c4. (g8) r4 d4~d2
r4 r16 d d d
c8 c c8. c16 g'8 g r8 g16 g
g8 g16 g~g8 g8 g4 r8 g16 g
c,8 c e8. e16 g8 g g4
r4 r8 a8 a16 a a a~a4

r8 g g g g4 g8 a~
a4 r8 a16 a a8 a4 (e8 
d2) r2
r4 r8 d d8. d16~d8 d 
d2. r4

}

tenorVersThree= \relative c''{
r16 g c d e8 r16 b e d8 d16 d8 r16 d
e8. d16 e e8 e16 d8 d16 d b4
r16 g c d e8 d16 b d8. d16 b4 
r1
r4 r16 g g a b8 c16 b~b a8 a16~
a8 g8~g4 r2
r4 r16 g g a b8 c16 b~b a8 a16~
a8 g8~g2 r4

}

%%%%%%%%%%%%%%%%%%%%%%% Piano %%%%%%%%%%%%%%%%%%%%
rhIntro = \relative c'{
}
lhIntro = \relative c {
\clef bass
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ALL%%%%%%%%%%%

sopranMusik =  \relative c'' {
\sopranIntro
\sopranOh
\sopranOh
\sopranAlright
\sopranRe
\sopschluss
\sopranOh
\sopranOh
\sopranOh
\sopranOh
 \bar "|."
}
altMusik =  \relative c' {
\altIntro
\altOh
\altOh
\altAlright
\altRe
\altschluss
\altOh
\altOh
\altOh
\altOh
}
tenorMusik =  \relative c'' {
\MenIntro
\tenorOh
\tenVersOne
\tenorAlright
\tenorRe
\tenorVersTwo
\tenschluss
\tenorOh
\tenorVersThree
\tenorOh
\tenorOh
}
bassMusik = \relative c' {
\MenIntro
\bassOh
\bassOh
\bassVers
\bassRe
\bassschluss
\bassOh
\bassOh
\bassOh
\bassOh
 \bar "|."
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sopranText = \lyricmode{
\Intro
\IntroPartTwo
an -- y
\FIntroOh
\Oh
\SAlright
\SopVers
\IntroPartTwo
\SopranComeOn
\Oh
\SisterVerse
\Oh
\Oh
\Oh
\Oh
}
altText = \lyricmode{
\Intro
\IntroPartTwo
an -- y
\FIntroOh
\Oh
\AAlright
\SopVers
\IntroPartTwo
\AltComeOn
\Oh
\SisterVerse
\Oh
\Oh
\Oh
\Oh

}
tenorText = \lyricmode{
\Oh
\TenorVersOne
\TAlright
\SopVers
\IntroPartTwo
\TenorComeOn
\TenorVerseTwo
\SisterVerse
\Oh
\TenorVerseThree
\Oh
\Oh
}
bassText = \lyricmode{
\Oh
\Oh
\BassVers
\SopVers
\IntroPartTwo
\BassComeOn
\Oh
\SisterVerse
\Oh
\Oh
\Oh
\Oh

}
%%%%%%%%%%Piano%%%%%%%%
RightHand = \relative c'{
}
LeftHand = \relative c {
}

\score {
  \new ChoirStaff <<
   \new ChordNames \set chordChanges = ##t \harmonies
    \new Staff = "sa" \with {midiInstrument = #"acoustic grand"
     instrumentName = \markup \center-column { "Sopran" }
     }<<
      \new Voice = "soprano" { \voiceOne \sopranMusik }
    >>
    \new Lyrics  \lyricsto "soprano" \sopranText
    
     \new Staff = "alto" \with {midiInstrument = #"acoustic grand"
     instrumentName = \markup \center-column { "Alt" }
     } <<
      \new Voice = "alt" { \voiceOne \altMusik }
      >>
      \new Lyrics  \lyricsto "alt" \altText
  
     
     \new Staff = "tb" \with {midiInstrument = #"acoustic grand"
     instrumentName = \markup \center-column { "Tenor" }
     }<<
       \new Voice = "tb" { \voiceTwo \tenorMusik }
     >>
     \new Lyrics \lyricsto "tb" \tenorText
     
      \new Staff = "bass" \with {midiInstrument = #"acoustic grand"
     instrumentName = \markup \center-column { "Bass" }
     }<<
      \clef bass
       \new Voice = "bass" { \voiceTwo \bassMusik }
     >>
     \new Lyrics \lyricsto "bass" \bassText
  % \new PianoStaff  <<   \new Staff = "up" { \global \RightHand }  \new Staff = "down" { \global \LeftHand }  >>
 >>
      
  \layout {
    \context {
    \Staff
      \RemoveEmptyStaves
      \override VerticalAxisGroup #'remove-first = ##t
      
    }
  }
  \midi {   }
}	