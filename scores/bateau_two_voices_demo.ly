\version "2.22"

upper = \relative c'' {
  \clef treble
  \key c \minor
  \time 4/4
  <<
    \new Voice = "first" { 
      \voiceOne 
      g2. g'4 |
      g2.. f8 |
      \break
      \key fis \minor
      cis1      |
      cis2.. b8 |
    }
    \new Voice= "second" { 
      \voiceTwo 
      \override NoteHead.color = #red
      f2 ees   |
      bes' aes |
      \override NoteHead.color = #darkgreen
      \key fis \minor
      b2 a  |
      a gis |
    }
  >>
}

lower = \relative c {
  \clef bass
  \key c \minor
  \time 4/4

  c1  |
  f,1 |
  \key fis \minor
  fis |
  b   |
}

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" \upper 
    \new Staff = "lower" \lower 
  >>
  \layout { }
  \midi { }
}
