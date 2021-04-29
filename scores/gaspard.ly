\version "2.22.0"

\header {
  title = #"O Vous Tous !"
  composer = #"Musique de Christophe Thiebaud"
}

\markup {
  \vspace #1
}

\score {

  \new Staff \with { midiInstrument = #"acoustic guitar (nylon)" instrumentName = #"Guitar" } \transpose c' c {

    \key e \major
    \tempo 4 = 118
    \new Voice = #"accordsI" \relative e'' {
      \set midiInstrument = #"acoustic guitar (nylon)"
      \voiceOne

      \repeat unfold 4 {  gis16 e gis  e    } |
      \repeat unfold 4 {  gis   e gis  dis  } |
      \repeat unfold 4 {  gis   e gis  d    } |
      \repeat unfold 4 {  a'    e a    cis, } |

      \repeat unfold 4 {  a'    e a    b,   } |
      \repeat unfold 4 {  gis'  e gis  b,   } |
      \repeat unfold 4 {  gis'  e gis  a,   } |
      \repeat unfold 4 {  fis'  e fis  a,   } |

      \repeat unfold 4 {  fis'  e fis  gis, } |
      \repeat unfold 4 {  e'    e e    gis, } |
      \repeat unfold 4 {  e'    e e    fis, } |
      \repeat unfold 4 {  dis'  e dis  fis, } |
    }
    e'1
  }
  \layout {
    \clef #"treble_8"
    \time 4/4
    \override LyricText.self-alignment-X = #LEFT
    \accidentalStyle modern-voice-cautionary
    % \override Lyrics.LyricText.font-size = #-1
  }

  \midi {
    \tempo 4 = 118
  }
}

