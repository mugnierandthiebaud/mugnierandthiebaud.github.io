\version "2.22"

\header {
  title = #"Chanson de la plus haute tour"
  composer = #"Musique de Christophe Thiebaud"
  poet = #"Poème d'Arthur Rimbaud"
}

\markup {
  \vspace #1
}

% couplet %%%%%%%%%%%%%%%%%%

melodyCouplet = {
\partial 4. b4.
 b2.~
 b4. b4.
 b2.~
 b4. b4.
 b4. b4.~
 b4 b4 b4
 b2.
 r2.
}
acuteCouplet = {
  \repeat unfold 2 { r8 e'  <g  b>  e    <g  b>  e    }
  \repeat unfold 2 { r8 e   <a  b>  e    <a  b>  e    }
  \repeat unfold 2 { r8 dis <a' b>  dis, <a' b>  dis, }
  \repeat unfold 2 { r8 e   <g  b>  e    <g  b>  e    }
}
bassCouplet = {
e2. e
f f 
fis fis 
e e 
}

% refrain %%%%%%%%%%%%%%%%%%

melodyRefrain = {
e4. e
d2.
e4. e
b2.
d4. d
c4. c
b2.
r2.
e2.
b'2.
fis4. fis
a2.~
a2.
g4. g4.
g4. g4.
fis2.
r2.
e4. e4.
b2.
e2.
b2.
e4. e4.
g4. g4. 
b2.
r2.
b4. a
gis fis
a g 
fis e
g2.~
g
g~
g4
g g  
e2.
r
r
r
}
acuteRefrain = {
  { r8 g    <c  e>  g  <c e>  g    }
  { r8 fis  <c' d>  fis,  <c' d>  fis, }
  { r8 fis  <b e>  fis  <b e>  fis }
  { r8 e  <g  b>  e  <g  b>  e }
  { r8 g    <c  d>  g  <c d>  g    }
  { r8 fis  <b c>  fis  <b c>  fis }
  { r8 fis  <a b>  fis  <a b>  fis }
  { r8 e  <g  b>  e  <g  b>  e }
  { r8 g    <c  e>  g  <c e>  g    }
  { r8 c    <ees fis b>  c  <ees fis b>  c    }
  { r8 e,  <bes' cis fis>  e,  <bes' cis fis> e,   }
  \repeat unfold 2 { r8 b'    < e a>  b  <e a>  b    }
  \repeat unfold 2 { r8 bes    < d g>  bes    < d g> bes   }
                  { r8 a    < cis fis>  a    < cis fis> a   }
                  { r8 a    < cis fis>  a    < dis fis> a   }
  \repeat unfold 2 { r8 e   <b' e>  e,    <b' e>  e,    
                     r8 e   <b' b>  e,    <b' b>  e,    }
  { r8 ais   <e b' e>  ais   <b  e>  ais   }
  { r8 a     <ees b' g'>  a    <es b' g'>   a   }
  { <d, gis c f b>2.~}
  { <d gis c f b>2.}
  { r8 c'  <gis' b>  c,  <g' a>   c,  }
  { r8 c  <f aes>  c  <e fis>   c  }
  { r8 b  <fis' a>  b,  <f' g>   b,  }
  { r8 b  <dis fis>  b  <d e>   b  }
  \repeat unfold 2 { r8 ais   < e dis' g>  ais   <e  dis' g>  ais    }
  \repeat unfold 2 { r8 a   < dis, cisis' g'>  a'  <dis,  cisis' g'>  a'   }
  { <b f a b e>2.~}
  { <b f a b e>2.}
  { <b f a b e>2.~}
  { <b f a b e>2.}
}
bassRefrain = {
a2.
d
g,
g
a
d
g,
g
a
d
g,
cis
cis
c
c
b
b
e,
e
f
f
fis
f
e~
e
a
d
g,
c
fis,
fis
b
b
e,
e
e
e
}

\score {

  <<
    \new Staff \with { midiInstrument = #"viola" instrumentName = #"Chant" } \relative e' {
      
      \key e \minor
      \new Voice = "one" {
        \tempo 4 = 140
        \melodyCouplet
        \melodyRefrain 
        \repeat unfold #8 r2. 
        \melodyRefrain 
      }
    }
    \new Lyrics  \lyricsto "one" {
      \lyricmode {
Qu’il vienne, qu’il vienne,
Le temps dont on s’é -- prenne.

J’ai tant fait pa -- ti -- ence
Qu’à ja -- mais j’ou -- blie.
Crain -- tes et souf -- frances
Aux cieux sont par -- ties.
Et la soif mal -- saine
Ob -- scur -- cit mes veines.

Qu’ -- il vien -- ne, qu’ -- il vien -- ne,
"Le temps" dont on s’é -- prenne.

Tel -- le la pr -- ai -- rie
À l’ou -- bli li -- vrée,
Gran -- die, et fleu -- rie
D’en -- cens et d’i -- vraies,
Au bour -- don fa -- rouche
Des "_" sa -- les mouches.

Qu’ -- il vien -- ne, qu’ -- il vien -- ne,
"Le temps" dont on s’é -- prenne.
      }
    }
    \new Staff \with { midiInstrument = #"acoustic guitar (nylon)" instrumentName = #"Guitare" } \transpose c' c {

      \key e \minor
      <<
        \new Voice = "couplet" \relative e  {
          \voiceOne
          \hideNotes \partial 4. r4. \unHideNotes
          \repeat unfold 2 {
            \acuteCouplet
            \acuteRefrain
          }
        }
        \new Voice = "bass" \relative e  {
          \voiceTwo
          \hideNotes \partial 4. r4. \unHideNotes
          \repeat unfold 2 {
            \bassCouplet
            \bassRefrain
          }
        }
      >>
    }
  >>

  \layout {
    \clef #"treble_8"
    \time 3/4
    \accidentalStyle modern-voice-cautionary
  }

  \midi {
  }
}

