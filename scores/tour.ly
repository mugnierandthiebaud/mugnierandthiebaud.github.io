\version "2.22"

%{
%}
\paper {
  page-count = #3
}

\header {
  title = #"Chanson de la plus haute tour"
  composer = #"Musique de Christophe Thiebaud"
  poet = #"Poème de Arthur Rimbaud"
}

\markup {
  \vspace #1
}

% couplet (16 bars) %%%%%%%%%%%%%%%%%%
melodyCouplet = {
  \repeat unfold 7 { R2. | }
  r2 b4  |
  b2.    |
  r2 b4  |
  b2.    |
  r2 b4  |
  b2 b4~ |
  b4 b b |
  b2.    |
  R2.    |
}
acuteCouplet = {
  \repeat unfold 2  {
    \repeat unfold 2 { r8 e   <g  b>  e    <g  b>  e    | }
    \repeat unfold 2 { r8 e   <a  b>  e    <a  b>  e    | }
    \repeat unfold 2 { r8 dis <a' b>  dis, <a' b>  dis, | }
    \repeat unfold 2 { r8 e   <g  b>  e    <g  b>  e    | }
  }
}
bassCouplet = {
  \repeat unfold 2  {
    e2. |
    e   |
    f   |
    f   |
    fis |
    fis |
    e   |
    e   |
  }
}

% refrain (36 bars) %%%%%%%%%%%%%%%%%%
melodyRefrain = {
  % 8 bars
  e4. e |
  d2.   |
  e4. e |
  b2.   |
  d4. d |
  c c   |
  b2.   |
  R2.   |
  % 9 bars
  e         |
  b'        |
  fis4. fis |
  a2.~      |
  a         |
  g4.   g   |
  g     g   |
  fis2.     |
  R2.       |
  % 8 bars
  e4. e |
  b2.   |
  e     |
  b     |
  e4. e |
  g g   |
  b2.   |
  R2.   |
  % 11 bars
  b4.   a   |
  gis   fis |
  a     g   |
  fis   e   | 
  g2.~      |
  g         |
  g~        |
  g4  g  g  |
  e2.       |
  R2.       |
  R2.       |
}
melodyRefrainZwei = {
  % 8 bars
  e4. e |
  d2.   |
  e2.   |  % <= diff !
  b2.   |
  d4. d |
  c c   |
  b2.   |
  R2.   |
  % 9 bars
  e         |
  b'        |
  fis4. fis |
  a2.~      |
  a         |
  g4.   g   |
  g     g   |
  fis2.     |
  R2.       |
  % 8 bars
  e4. e |
  b2.   |
  e     |
  b     |
  e2.   | % <= diff !
  g     | % <= diff !
  b2.   |
  R2.   |
  % 11 bars
  b4.   a   |
  gis   fis |
  a     g   |
  fis e4 e8 | % <= diff !
  g2.~      |
  g         |
  g~        |
  g4  g  g  |
  e2.       |
  R2.       |
  R2.       |
}

acuteRefrain = {   
  { r8 g    <c       e  >  g    <c       e  >  g    }
  { r8 fis  <c'      d  >  fis, <c'      d  >  fis, }
  { r8 fis  <b       e  >  fis  <b       e  >  fis  }
  { r8 e    <g       b  >  e    <g       b  >  e    }
  { r8 g    <c       d  >  g    <c       d  >  g    }
  { r8 fis  <b       c  >  fis  <b       c  >  fis  }
  { r8 fis  <a       b  >  fis  <a       b  >  fis  }
  { r8 e    <g       b  >  e    <g       b  >  e    }
  { r8 g    <c       e  >  g    <c       e  >  g    }
  { r8 ees' <c  fis  b  >  ees  <c  fis  b  >  ees  }
  { r8 bes  <e, cis' fis>  bes' <e, cis' fis>  bes' }
  \repeat unfold 2 { r8 b    < e a>  b  <e a>  b    }
  \repeat unfold 2 { r8 bes    < d g>  bes    < d g> bes   }
  { r8 a    < cis fis>  a    < cis fis> a   }
  { r8 a    < cis fis>  a    < dis fis> a   }
  \repeat unfold 2 { r8 e   <b' e>  e,    <b' e>  e,    
                     r8 e   <b' b>  e,    <b' b>  e,    }
  { r8 e   <ais b e > e   <ais b e > e   }
  { r8 ees <a   b g'> ees <a   b g'> ees }
  { \tuplet 8/6 {  r4 gis8 d c' gis   f' c }  }   
  { <d, gis c f b>2.}
  { r8 c' <gis b' >  c  <g a' >  c  }
  { r8 c  <f   aes>  c  <e fis>  c  }
  { r8 b  <fis a' >  b  <f g' >  b  }
  { r8 b  <dis fis>  b  <d e  >  b  }
  \repeat unfold 2 { r8 e,    < ais    dis   g >  e <ais    dis   g >  e  }
  \repeat unfold 2 { r8 dis < a' cisis g'>  dis,  <a' cisis g'>  dis,   }
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
  e
  e
  a
  d
  g,
  c
  fis,
  fis
  b
  b
}

\score {

  <<
    \new Staff \with { midiInstrument = #"clarinet" instrumentName = #"Chant" } \relative e' {
      
      \key e \minor
      \new Voice = "one" {
        \tempo 4 = 140
        \time 3/4

        % { first part
        \melodyCouplet
        \melodyRefrain
        R2.
        % }          
        % { second part
        \repeat unfold #8 R2.
        \repeat unfold #7 b2.
        R2.
        \melodyRefrainZwei 
        % }          
        % { coda
        r2 
        \repeat unfold #2 {
          e4
          g2.~
          g
          g~
          g4
          g  
          g  
          e2.
          R2.
          R2.
        }
        \alternative {
          { r2 }
          { R2. }
        }
        R2.
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

        Qu’i -- l vien -- ne, qu’i -- l vien -- \override LyricText.self-alignment-X = #LEFT ne,_Le 
        temps dont on s’é -- prenne.

        m -- m -- m -- m -- m -- m -- m 

        Tel -- le la prai -- -- rie
        À l’ou -- bli li -- vrée,
        Gran -- die, et fleu -- rie
        D’en -- cens et d’i -- vraies,
        Au bour -- don fa -- rouche
        Des sales mouches.

        Qu’i -- l vien -- ne, qu’i -- l vien -- ne,  
        Le temps dont on s'é -- prenne.

        Le temps dont on s'é -- prenne.

        Le temps dont on s'é -- prenne.
      }
    }
    \new Staff \with { midiInstrument = #"acoustic guitar (nylon)" instrumentName = #"Guitare" } \transpose c' c {

      \key e \minor
      <<
        \new Voice = "couplet" \relative e'  {
          \voiceOne
          % { first part
          \acuteCouplet
          \bar "||"
          \acuteRefrain
          { 
            <b f' a b e>2.~
            <b f' a b e>2.
            <b f' a b e>2.~
            <b f' a b e>2.
            \bar "||"
          }
          % }          
          % { second part
          \acuteCouplet
          \bar "||"
          \acuteRefrain
          % }          
          % { coda
          {
            {<fis aisis bis   e  >2.~ <fis aisis bis   e >2.}
            {<eis a     b     e  >2.~ <eis a     b     e >2.}
            {<e   bes'  dis   g  >2.~ <e   bes'  dis   g >2.}
            {<ees a     d     g  >2.~ <ees a     d     g >2.}
            {<fis b     c     e  >2.~ <fis b     c     e >2.}
            {<f   a     b     e  >2.~ <f   a     b     e >2.}
            {<e   ais   dis   g  >2.~ <e   ais   dis   g >2.}
            {<dis a'    cisis g' >2.~ <dis a'    cisis g'>2.}

            \repeat unfold 2 {<b e a b e>2.~
                              <b e a b e>2.}
            <b e a b e>2.\fermata
          }
        }
        \new Voice = "bass" \relative e  {
          \voiceTwo
          % { first part
          \bassCouplet
          \bassRefrain
          { e, e e e }
          % }          
          % { second part
          \bassCouplet
          \bassRefrain
          % }          
          % { coda
          { 
            gis gis 
            cis cis 
            c   c   
            f,  f 
            d'  d   
            g,  g   
            fis fis 
            b   b
            e,  e   
            e   e  
            e
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

