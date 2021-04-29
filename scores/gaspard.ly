\version "2.22.0"

\header {
  title = #"O Vous Tous !"
  composer = #"Musique de Christophe Thiebaud"
  poet = #"Poème de Paul Verlaine"
}

\markup {
  \vspace #1
}

#(define-markup-command
  (fret-diag layout props chord)
  (markup?) (
              interpret-markup layout props #{
                \markup {
                  \hspace #6
                  \override #'(fret-diagram-details . ((number-type . roman-lower) (finger-code . in-dot) (barre-type . straight))) {
                    \fret-diagram-terse #chord
                  }
                }
              #}
              )
  )

#(define RH rightHandFinger)

un     = \markup \fret-diag "o;x;x;9-3;9-4;o;"
deux   = \markup \fret-diag "o;x;x;8-2;9-4;o;"
trois  = \markup \fret-diag "o;x;x;7-1;9-4;o;"
quatre = \markup \fret-diag "o;x;x;6-1;10-4;o;"

cinq   = \markup \fret-diag "o;x;9-3;x;10-4;o;" 
six    = \markup \fret-diag "o;x;9-3;x;9-4;o;"
sept   = \markup \fret-diag "o;x;7-1;x;9-4;o;" 
huit   = \markup \fret-diag "o;x;7-1;x;7-2;o;" 

neuf  = \markup \fret-diag "o;x;6-1;x;7-2;o;" 
dix   = \markup \fret-diag "o;x;6-1;9-4;x;o;"
onze  = \markup \fret-diag "o;x;4-1;9-4;x;o;" 
douze = \markup \fret-diag "o;x;4-1;8-4;x;o;" 


arpege = {
  {  
    gis16\2\RH#3 
    e    \1\RH#4 
    gis  \2\RH#3 
    e    \3\RH#1 
    gis16\RH#2 
    e    \RH#4 
    gis  \RH#3 
    e    \RH#1 
    gis16\RH#2 
    e    \RH#4 
    gis  \RH#3 
    e    \RH#1 
    gis16\RH#2 
    e    \RH#4 
    gis  \RH#3 
    e    \RH#2 
  } | {
    gis  \RH#3   
    e    \RH#4 
    gis  \RH#3 
    dis  \RH#1
  } \repeat unfold 3 {  gis    e gis dis  } |
  \repeat   unfold 4 {  gis    e gis d    } |
  \repeat   unfold 4 {  a'     e a   cis, } |
  \repeat   unfold 4 {  a'     e a   b,   } |
  {  gis'\2  e\1 gis\2 b,\4   }
  \repeat   unfold 3 {  gis'  e gis b,   } |
  \repeat   unfold 4 {  gis'  e gis a,   } |
  \repeat   unfold 4 {  fis'  e fis a,   } |
  \repeat   unfold 4 {  fis'  e fis gis, } |
  {  e'\3    e\1 e\3   gis,\4 }
  \repeat   unfold 3 {  e'    e e   gis, } |
  \repeat   unfold 4 {  e'    e e   fis, } |
  \repeat   unfold 4 {  dis'  e dis fis, } |
}

\score {

  <<
    \new Staff \with { midiInstrument = #"clarinet" instrumentName = #"Chant" } \relative e' {
      
      \key e \major
      \new Voice = "one" {
        \tempo 4 = 120
        r8 e gis  e gis4. e8 | gis dis e2. |
        r8 e gis8 e gis e4 a8~ | a8 cis,4 e8~e2 |
        r4   g8   e g4 g8   e | g d e2. | 
        r8 d d d d4. d8  | d e e2. |
        dis,4 e gis b | dis e gis e~ | 
        e8 d d d d4. d8  | d e e2. |
        r1
      }
    }
    \new Lyrics  \lyricsto "one" {
      \lyricmode {
        Je suis ve -- nu, calme or -- phe -- lin,
        Ri -- che de mes seuls yeux __ tran -- quilles,
        Vers les hom -- mes des gran -- des "villes :"
        Ils ne m'ont pas trou -- vé ma -- lin.

        Ils ne l'ont pas trou -- vé ma -- lin.
        Ils ne l'ont pas trou -- vé ma -- lin.
      }
    }
    \new Staff \with { midiInstrument = #"acoustic guitar (nylon)" instrumentName = #"Guitare" } \transpose c' c \relative e'' {

      \key e \major
      <<

        \new Voice = "acute" {
          \voiceOne
          \arpege
        }
        \new Voice = "bass" {
          \voiceTwo
          e,1-\un   \RH #1 -\markup { \italic \smaller "(arpège carrément piqué au BWV 1006a de Johann Sebastian Bach)"}
          e-\deux   \RH #1
          e-\trois    
          e-\quatre   
          e-\cinq     
          e-\six      
          e-\sept     
          e-\huit     
          e-\neuf     
          e-\dix      
          e-\onze     
          e-\douze    
        }
      >>
      e
    }
  >>

  \layout {
    \clef #"treble_8"
    \time 4/4
    \accidentalStyle modern-voice-cautionary
  }

  \midi {
    \tempo 4 = 120
  }
}

