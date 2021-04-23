\version "2.19"

#(set-global-staff-size 18)

tabTablePath = 
    \markup
    \with-dimensions #'(0 . 0) #'(-4.3 . 2)
    \path #0.1 
          #'((moveto    0.05   0.00)
             (lineto    1.05   1.00)
             (moveto    1.05   0.00)
             (lineto    0.05   1.00))
          
tabTable = \once \override NoteHead.stencil = 
    #(lambda (grob) (grob-interpret-markup grob tabTablePath))

strumOne = #(define-music-function
     (chord)
     (string-or-music?)
   #{
     bes'8.\rest #chord bes'8\rest \once \override Accidental #'stencil = ##f \tabTable a'8
     bes'8.\rest #chord bes'8\rest \once \override Accidental #'stencil = ##f \tabTable a'8
   #})

strumOneBis = #(define-music-function
     (chord)
     (string-or-music?)
   #{
     bes'8\rest #chord bes'8\rest #chord
     bes'8\rest #chord bes'8\rest #chord
   #})

strumTwo= #(define-music-function
     (chord1 chord2)
     (string-or-music? string-or-music?)
   #{
     bes'8.\rest #chord1 bes'8\rest \once \override Accidental #'stencil = ##f \tabTable a'8
     bes'8.\rest #chord2 bes'8\rest \once \override Accidental #'stencil = ##f \tabTable a'8
   #})

% couplet 

couplet = {
  \arpeggioArrowUp
  <fis' c'' d''>1\arpeggio
  <f' b' d''>2\arpeggio <e' bes' d''>2\arpeggio
}

coupletBasseSimple = {
  <d a>2 <d a>
  <d a>  <d a>
}

coupletStrum = {
  \strumOne { <fis' c'' d''>16 }
  \strumTwo { <f'   b'  d''>16 } { <e' bes' d''>16 }
}

% refrain 
refrainStrun =  {
  \strumOne { <f' bes' d''>16 } 
  \strumOne { <e' bes' dis''>16 } 
  \strumOne { <a' cis'' e''>16 } 
  \strumOne { <a' d'' f''>16 } 
  \strumOne { <bes' d'' fis''>16 } 
  \strumOne { <e' bes' cis'' g''>16 } 
  \strumOne { <eeses' c'' ges'' aes''>16 } 
  \strumOne { <d' b' f'' a''>16 } 

  \strumOne { <f' bes' d'' a''>16 } 
  \strumOne { <e' bes' dis'' aes''>16 } 
  \strumOne { <e' a' cis'' g'' >16 } 
  \strumOne { <a' d'' fis''>16 } 
  \strumOne { <bes d' g' d'' f''>16 } 
  \strumTwo { <g' d'' e''>16  }  {<g' cis'' e''>16 } 
  \strumOne { <c' ges' bes' d'' >16 } 
  \strumTwo { <b f' a' d'' >16 }  {<e' bes' d'' >16 }
}

refrainBasseSimple = \relative g {
  g2  g
  c   c
  f,  f
  bes bes
  e,  e
  a   a
  aes aes
  g   g

  g   g
  c   c
  f,  f
  bes bes
  e,  e
  a   a 
  aes aes
  g   c 
}

% coda

codaBasse = {
  \repeat unfold 4 <d a d'>2 
  <d a d'>1
}

codaStrum = {
  \strumOne { <gis' d'' gis''>16 }
  \strumOne { <gis' d'' gis''>16 }
  <gis' d'' gis''>1\arpeggio
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header
{
  title = "Le Bateau ivre"
  subtitle = \markup { \abs-fontsize #10 "Lundi 11 juin 2018, 8 h 20 du matin"}
  poet = "Poème de Arthur Rimbaud"
  composer = "Musique de Christophe Thiebaud"
}

\markup {
  \vspace #1
}

\score {

  <<
  \new Staff = "main" {
    \set Staff.instrumentName = \markup \center-column {
        "Guitarre"
        { \abs-fontsize #7 \italic "6ème corde en ré" }
    }
    \set Staff.midiInstrument = "acoustic guitar (nylon)"

    <<
      \tempo 4 = 70
      %{
      %}
      \new Voice = "one" {
        \voiceOne
        \repeat volta 2 \couplet
        \repeat volta 8 \coupletStrum
        \refrainStrun
        \codaStrum
      }
      \new Voice = "two" {
        \voiceTwo
        \override Score.RehearsalMark.break-visibility = #end-of-line-visible
        \override Score.RehearsalMark.self-alignment-X = #RIGHT

        \key g \major
        \bar ".|:" 
        \repeat volta 2 \coupletBasseSimple
        \mark \markup { \tiny  "2x"} 
        \break
        
        \bar ":|.|:" 
        \repeat volta 8 \coupletBasseSimple
        \mark \markup { \tiny  "8x"} 
        \break
        
        \key d \minor
        \refrainBasseSimple
        \break
        
        \key g \major
        \codaBasse
      }
    >>

  }
  >>
  \layout {
    \clef treble
    \time 4/4
    \override LyricText.self-alignment-X = #LEFT
    \override Lyrics.LyricText.font-size = #-1
  
  }

  \midi { 
    \tempo 4 = 70
  }
}

