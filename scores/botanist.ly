\version "2.29"
%{
\paper {
  page-count = #2
}
%}

#(set-global-staff-size 16)

\header {
  title = #"Après “Les filles du botaniste”"
  composer = #"Musique de Christophe Thiebaud"
  poet = #"Arrangement de Benoît Urbain"
}

\markup {
  \vspace #1
}

partTwoUpper = {
  \key c \minor
  <<
    \new Voice \relative ees' { 
      \voiceOne
      | <f g ees'>2. g'4
      | <bes, c ees g>2. f8 f'
      | <f, bes ees>2 <d d'>
      | <aes' aes'>2. <g g'>4
      | f'2. ees4
      | <bes bes'>2. aes8 aes'
      | g2 f 
      | aes2. f4 
      | <c f>2 ees
      | <c g g'>2. f4
      | ees2~ ees4 d 
      \key a \major
      | <gis, b cis>4. gis8 b4 cis
      \bar "||"
    }
    \new Voice \relative ees' { 
      \voiceTwo 
      | s1
      | s1
      | s1
      | s1
      | r4 f bes8 ees, s4
      | r4 r8 bes'~ bes4 s4
      | r4 aes2 aes8 f 
      | r4 aes8 ees'~ ees g,4 g8~
      | g4 g8 c,~ c ees c'4
      | s4. g8 c2
      | f,4 aes c2
    }
  >>

}

partOneUpper = {
  \key a \major
  \time 4/4

  <<
    \new Voice \relative a' { 
      \voiceOne
      % \override Voice.NoteHead.color = #(x11-color 'red3)
      | <a c>4\p r <a c>2 
      | <a c>4 r <a c> <gis b>
      | <a cis>1
      | cis2~ cis4. b8
      | <d, a' b>2. gis4
      %
      | <d' e>2~ <d e>4. cis8
      | <a b e>2 <cis, a'>2
      | <a' e' fis>2 d4 fis,8 d'8
      | <cis d>4 b <a d>8 d, gis4
      | <gis d' e>2. cis,8 cis'
      %
      | <b cis>4. e,8 a2
      | <cis d>2 a4. b8
      | <fis a d>2~ <fis a d>4 aes4
      \key c \minor
      | <f g d'>2. s4
    }
    \new Voice \relative a { 
      \voiceTwo 
      | s1
      | s1
      | s1
      | a'4. d,8 a'4 s4
      | s1
      %
      | s1
      | s1
      | s4. a8~ a4 s4
      | s1
      | s1 
      %
      | s1
      | s1
      | s1
      | s1
    }
  >>
  
}

partTwoLower = {
  \key c \minor
  \clef bass
  <<
    \new Voice \relative ees, { 
      \voiceTwo 
      | c'
      | f,
      | bes
      | ees,
      | g
      | c
      | b
      | bes
      | a
      | aes
      | des
      \key a \major
      | cis
    }
    \new Voice \relative ees { 
      \voiceOne
      | r2 <g ees'>8 c8~ c4
      | r8 \autoBeamOff f,8 \autoBeamOn aes c <ees aes>2 
      | r4 bes2.
      | r8 \autoBeamOff bes, \autoBeamOn ees f g2
      | r8 \autoBeamOff ees \autoBeamOn g bes~ bes4 s4
      | r8 ees, aes4 c8 f s4
      | r8 \autoBeamOff g, \autoBeamOn aes b~ b d s4
      | r8 \autoBeamOff g, \autoBeamOn bes4 <bes ees> bes
      | r8 \autoBeamOff g \autoBeamOn s2.
      | r8 \autoBeamOff ees \autoBeamOn g4 s2
      | r8 \autoBeamOff f~ \autoBeamOn f aes~ aes4. aes8
      \key a \major
      | r8 \autoBeamOff gis \autoBeamOn b4 s2



    }
  >>
}

partOneLower = {
  \clef bass
  \key a \major
  \time 4/4

  <<
    \new Voice \relative a { 
      \voiceTwo  
      | r8 <a c>8~ <a c>2 r4 
      | r8 <a c>8~ <a c>2 <gis b>4
      | fis,1 
      | b 
      | e,
      | a
      | cis
      | d
      | e
      | a,
      | cis
      | d 
      | g,
      | g

    }
    \new Voice \relative a,, { 
      \voiceOne 
      | s1
      | s1
      \bar "||"
      | r8 \autoBeamOff cis' \autoBeamOn e fis a2 
      | r8 fis a2.
      | r8 \autoBeamOff b,   \autoBeamOn e d' a4 gis
      % 
      | r8 \autoBeamOff e    \autoBeamOn a d e2
      | r8 \autoBeamOff a,   \autoBeamOn b e~ e2
      | r8 a, d2 s4 
      | r8 \autoBeamOff b~   \autoBeamOn b b~ b4 s
      | r8 \autoBeamOff e,   \autoBeamOn a4 b s
      % 
      | r8 \autoBeamOff a    \autoBeamOn b2.
      | r8 \autoBeamOff a    \autoBeamOn cis d~ d2
      | r8 \autoBeamOff d,   \autoBeamOn fis g d'2
      \key c \minor
      | r4 d, f g
      \bar "||"
    }
  >>
}


\score{

  \header {
    opus = \markup {\italic "À Kitty Lam."}
  }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "RH"  {
      \tempo 4 = 90
      \partOneUpper
      \partTwoUpper
    }
    \new Staff = "LH" {
      \partOneLower
      \partTwoLower
    }
  >>
  \layout{

    \accidentalStyle modern-voice-cautionary
  }
  \midi{
    \tempo 4 = 90
  }
}

