\version "2.22"


%{
\paper {
  page-count = #2
}
%}

% #(set-global-staff-size 16)

\header {
  title = #"Après “Les filles du botaniste”"
  composer = #"Musique de Christophe Thiebaud"
  poet = #"Arrangement de Benoît Urbain"
}

\markup {
  \vspace #1
}

% UPPER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

reexpositionPartOneUpper = {
  \key a \major
  <<
    \new Voice \relative a'' { 
      
      | \voiceTwo
      \tupletUp 
      \tuplet 3/2 { <e b'>8\mf b  <e b'>}  \tuplet 3/2 { b  <e  b'> b  }
      \voiceOne
      \tupletUp 
      \tuplet 3/2 { <e a>     a, <e' a>}  \tuplet 3/2 { a, <e' a>  a, }
      | \voiceTwo
      \tupletUp 
      \tuplet 3/2 { <fis'  cis'>  cis  <fis cis'>}  \tuplet 3/2 { cis  <fis  cis'> cis   }
      \tuplet 3/2 { <fis   cis'>  cis  <fis cis'>}  \tuplet 3/2 { b,   <fis' b   > b,    }
      | \tuplet 3/2 { <d     a'  >  a    <d   a'  >}  \tuplet 3/2 { a    <d    a'  > a     }
      \tuplet 3/2 { <d     gis >  gis, <d'  gis >}  \tuplet 3/2 { gis, <d'   gis > gis,  }
      | \tuplet 3/2 { <a'    d   >  d,   <a'  d   >}  \tuplet 3/2 { d,    <a'   d   > d,   }
      \tuplet 3/2 { <a'    d   >  d,   <a'  d   >}  \tuplet 3/2 { cis,  <a'   cis > cis, }
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      \bar "||"
    }
  >>
}

reexpositionPartTwoUpper = {
  \key c \minor
  <<
    \new Voice \relative c { 
      \voiceOne
      | <f' f,>4 <f' c' f>2 <ees c' ees>4
      | <g c g'>2~ <g c g'>4. <f c' f>8
      | <ees aes ees'>2 <d aes' d>2
      | <aes' bes ees aes>2 <g bes ees g>4 <g bes ees g>4
      | <aes  ees' aes>2 <bes ees bes'>4 \tupletUp \tuplet 3/2 { g,16 bes ees g bes ees }
      | <bes ees bes'>2 <bes, ees bes'>4 <aes' ees' aes>4
      | <g ees' g>2 <f d' f>4 \tupletUp \tuplet 3/2 { d16 f aes b d f }
      | <aes, ees' aes>2 <aes, ees' aes>4. <g' ees' g>8
      | <f c' f>2 <g c g'>4 \tupletUp \tuplet 3/2 { g,16 c g' g c g' }
      | <g, c g'>2 <g, c g'>4. <f' c' f >8 
      | <ees aes ees'>2 <ees, aes ees'>4. <d' d'>8
      | <des g des'>2 <aes aes'>2
      | <bes f' bes>2 <b f' b>2 
      \bar "||"
    }
    \new Voice \relative c { 
      \voiceTwo 
      | s4 <f' g c>2 <ees g bes>4
      | r4 <bes c ees g>2 <aes c ees f>4
      | r4 <bes ees aes>4 <bes d aes'>2
      | r4 <bes ees aes>4 <bes ees g>4 s4
      | r4 <bes ees f aes>4 <bes ees g>4 s4
      | r4 <ees bes' c>2 <ees aes c>4
      | r4 <aes, ees' g>4 <aes d f>4 s4
      | r4 <bes ees aes>4 <bes ees aes>4 <bes ees g>4 
      | r4 <g c f>4 <g c g'>4 s4
      | r4 <bes c ees g>4 <aes bes c ees>4 <bes c ees f>4 
      | r4 <aes c ees>4 <f aes c>4 <aes c ees>4 
      | r4 <g des f>4 <aes des f>2
      | r4 <bes des f>4 <b des f>2
    }
  >>
}

developmentUpper = {
  % \key a \minor
  <<  %{%}
    \new Voice \relative a'' { 
      \voiceOne
      | a8\p a,4 a8~ a a4 a8 
      | a'8  a,4 a8~ a a4 a8 
      \repeat unfold #2 s1 
    
      \clef bass
      | a,,,8 a'            r4 r \clef treble r8             a'''16      c,
      | d8   f              r4 r              r8             f16         gis,
      | b'8  e,,            r4 r              r8             b''16       e,
      | e'8  a,,            r4 r \clef bass   r8             e,16        a,
      | a'8  a,,            r4 r \clef treble r8             fis'''''16  dis
      | a'8  b,,            r4 r              r8             fis''16     b,
      | b'8  e,,,           r4 r              r8             gis''16     e
      | g8   a,,            r4 r \clef bass   r8 \ottava #-1 e,,16       a,
      | a'8  d,, \ottava #0 r4 r \clef treble r8 \ottava #1  f'''''16    d
      | d'8  d,             r4 r              r8             f16         gis,
      | b'8  e,, \ottava #0 r4 r \clef bass   r8             b,,16       e,
      | e'8  a,,            r4 r2
    
      % \bar "||"
    }  
    \new Voice \transpose g a \relative g { 
      \voiceTwo 
      \key g \minor
      \repeat unfold #14 {| s1} 
      % VERBATIM FROM MOZART SCORE ; JUST FOR CONTROL ; UNCOMMENT ONLY IF YOU KNOW WHAT YOU ARE DOING
      %{ 
      | g8  g'  r4 r r8 g'16   bes, | c8  ees  r4 r r8 ees16 fis, 
      | a'8 d,, r4 r r8 a'16   d,   | d'8 g,,  r4 r r8 d''16 g,  
      | g'8 g,, r4 r r8 e''16  cis  | g'8 a,,  r4 r r8 e''16 a,    
      | a'8 d,, r4 r r8 fis'16 d    | f8  g,,  r4 r r8 d''16 g,   
      | g'8 c,, r4 r r8 ees'16 c    | c'8  c,  r4 r r8 ees16 fis,
      | a'8 d,, r4 r r8 a''16  d,   | d'8  g,, r4 r2
      %}

    }
  >>
}

expositionBisPartThreeUpper = {
  \key a \major
  <<
    \new Voice \relative a'' { 
      \voiceOne
      | b2 a
      | <a cis>4. d,8 gis cis4 b8
      | <a, d a'>2 <gis d' gis>4 r16 e'32 fis gis a b cis
      | <b d>2 a4. cis8
      | <b e>2 a4 r16 fis32 gis a b cis d
      | <e, e'>2~ <e e'>8 <e e'>4 <d d'>8
      | <d fis cis'>2 <d gis b>4 r16 e32 fis gis a b cis
      | <b, d>2~ <b d>4. cis8
      | <e b' e>2 <a, e' a>4 r16 d32 e fis gis a b 
      | <cis, cis'>2. b8 b'
      | <d, a'>8 a~ a4 <gis d' gis>4 gis8 d' 
      | \bar "||"
    }
    \new Voice \relative a' { 
      \voiceTwo 
      | s2 s8 a cis e
      | s1
      | s1
      | s1
      | s1
      | s2 a,4 b
      | s1
      | s2 <cis a'>4 s4
      | s1
      | s4 fis2 s4
      | s1
    }
  >>
}

expositionBisPartTwoUpper = {
  \key c \minor
  <<
    \new Voice \relative c'' { 
      \voiceOne
      | <d g d'>2\f       <c c'>
      | <bes ees g bes>   < aes aes'>
      | <c g' c>          < bes bes'>
      | <aes bes ees aes> <g g'>
      | <f bes f'>        <ees bes' ees>
      | <bes' ees bes'>   <aes aes'>
      | <aes d f aes>     <g ees' g>
      | <aes ees' aes>~   <aes ees' aes>4. <g ees' g>8
      | <f g c f>2        <ees g c ees>
      | <g c g'>~         <g c g'>4. <f f'>8
      | <ees aes c ees>2~ <ees aes c ees>4. <des aes' des>8
      | <des g des'>2     aes'
      | <des, g bes des>  <aes' b>4 r16 d32 ees f g aes bes
      |
      \bar "||"
    }
    \new Voice \relative c' { 
      \voiceTwo 
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
    }
  >>
}

expositionBisPartOneUpper = {
  \key a \major
  <<
    \new Voice \relative a' { 
      \voiceOne
      | cis1\mf
      | cis2.. b8
      | <d, a' b>2 gis4 d8 b'
      | d2 cis 
      | b4 e, a e' 
      | <e fis>2. d4
      | <d, fis cis'>2 <b d fis b>
      | <e d' e>2 s4 d'8 cis
      | <b e>4 e,8 gis <e a e'>4 e8 a
      | cis2~ cis8 fis, cis' b 
      | a2~ a8 d, a' aes 
      \key c \minor
      | g2 b,8 d g4
      \bar "||"
    }
    \new Voice \relative a { 
      \voiceTwo 
      | r4 r8 cis~ <cis gis'>4 a'      
      | <d, a'>4. d8~ d4 d
      | s1
      | <a' e'>2 e4 e
      | <a e'>2 s2
      | fis  fis
      | s1
      | s2 e8 gis s4
      | s1
      | s1
      | s1
    }
  >>
}

expositionPartTwoUpper = {
  \key c \minor
  <<
    \new Voice \relative ees' { 
      \voiceOne
      | <f g ees'>2.\mp g'4
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

expositionPartOneUpper = {
  \key a \major


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

% LOWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

reexpositionPartOneLower = {
  \clef bass
  \key a \major


  <<
    \new Voice \relative a, { 
      \voiceTwo  
      | fis8 e' fis a e' a, fis e
      | b, d' fis a d a fis d
      | e, d' fis b d b gis e
      | a, e' b' d e d b e,
      | cis, e' a b e b a e
      | d, fis' a d e d a fis
      | e, fis' a b d b a fis
      | a, e' a b e b a e
      | fis, e' fis a e' a, fis e
      | b, d' fis a d a fis d
      | e, d' fis b d2 
      | e,,8 d' gis b d2
      | a,8 e' a4 a,2 
      \bar "|."
    }
  >>
}

reexpositionPartTwoLower = {
  \clef bass
  \key c \minor


  <<
    \new Voice \relative c' { 
      \voiceTwo  
      | <c,,  c,  >2. c'8 c,
      | <f    f,  >2. f'8 f,
      | <bes  bes,>2. \tupletUp \tuplet 3/2 { bes8  f   bes, }
      | <ees  ees,>2. \tupletUp \tuplet 3/2 { ees'8 bes ees, }
      | <g    g,  >2. \tupletUp \tuplet 3/2 { g'8   ees g,   }
      | <c    c,  >2  <ees bes' c>
      | <b    b,  >2. \tupletUp \tuplet 3/2 { b'8   f   b,   }
      | <bes  bes,>1
      | <a    a,  >2. \tupletUp \tuplet 3/2 { a'8   c,  a    }
      | <aes  aes,>1
      | <des, des,>1
      | <des  des,>1
      | <des  des,>1
      \bar "||"
    }
  >>
}

developmentLower = {
  \clef bass
  \key a \minor
  <<
    \new Voice \relative a' { 
      \voiceOne
      \repeat unfold 8 {| s1}
      | e2 e2
      | <dis fis>2 <dis fis>2
      | <d f>2 <d f>2
      | <c e>2 <c e>2
      | <b dis>2 <b dis>2
      | <bes d>2 <bes d>2
      | c2 c2
      | s1
      % \bar "||"
    }
    \new Voice \relative a { 
      \voiceTwo 
      \repeat unfold 2 {| a4 a2 a4}
      \repeat unfold 14 {| a8 a4 a8~ a8 a4 a8 }
      
    }
  >>
}

expositionBisPartThreeLower = {
  \clef bass
  \key a \major


  <<
    \new Voice \relative a { 
      \voiceTwo  
      | fis8 cis' e fis~ fis2
      | b,8 fis' a2 a4
      | e,8 b' d fis e, b' d4
      \clef treble
      | a8 e' gis b cis a e4
      | cis8 e b' e~ e a, e4
      \clef bass
      | d,8 a' d fis r2
      | e,8 b' d fis e, b' d4
      \clef treble
      | a8 e' gis b~ b a e4
      | fis,8 b cis e fis e cis4
      \clef bass
      | b,8 fis' a b d fis~ fis4
      | e,4 b'8 d~ d e~ e4 
    }
    \new Voice \relative a,, { 
      \voiceOne 
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      \bar "||"
    }
  >>
}

expositionBisPartTwoLower = {
  \clef bass
  \key c \minor


  <<
    \new Voice \relative c { 
      \voiceOne
      | r4 <bes' ees g>2 <bes ees g>4
      | r4 <aes bes c ees>2 <aes bes c ees>4
      | r4 <f bes ees>2 <f bes d>4
      | r4 <aes bes ees>2 <g bes ees>4
      | r4 <aes bes ees>2 <g bes ees>4
      | r4 <bes c ees>2 <aes c ees>4
      | r4 <f aes d>2 <f aes ees'>4
      | r4 <g c f>2 <g c ees>4
      | r4 <g c f>2 <g c ees>4
      | r4 <g c f>2 <g c ees>4
      | r4 <f aes c>2 <f aes des>4
      | r4 <f  g  b>2 <f  aes  b>4
      | r4 <f  g  bes>2 <f  aes  b>4
    }
    \new Voice \relative c,, { 
      \voiceTwo 
      | <c' c'>1
      | <f, f'>1
      | <bes bes'>1
      | <ees ees'>1
      | <g, g'>1
      | <c c'>1
      | <b b'>1
      | <bes bes'>1
      | <a a'>1
      | <aes aes'>1
      | <des des'>1
      | <des des'>1
      | <des des'>1
      \bar "||"
    }
  >>
}

expositionBisPartOneLower = {
  \key a \major
  \clef bass
  <<
    \new Voice \relative a, { 
      \voiceTwo 
      | fis8 cis' e4 fis8 a4 a8
      | b,8 fis' a4 a8 b r4
      | e,,8 b' e a gis b~ b4
      | a,8 e' a d cis2
      | r8 cis,4 a' b8~ b4
      | r8 \autoBeamOff d, \autoBeamOn fis <a d>4 d4 d8 
      | a8 e, b' e a2
      | a,8 e' b' d~ d2
      | cis,8 e b'4 cis,8 a'~ a4
      | d,8 a' b cis d2
      | g,,8 d' fis a b2
      | g,8 d' f a~ a2
    }
    \new Voice \relative a { 
      \voiceOne
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      | s1
      \key c \minor
      | s1
      \bar "||"

    }
  >>
}

expositionPartTwoLower = {
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

expositionPartOneLower = {
  \clef bass
  \key a \major


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
    opus = \markup {\italic "A Kitty Lam."}
  }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "RH"  {
      \tempo 4 = 90
      \expositionPartOneUpper
      \expositionPartTwoUpper
      \expositionBisPartOneUpper
      \expositionBisPartTwoUpper
      \expositionBisPartThreeUpper
      \developmentUpper
      \reexpositionPartTwoUpper
      \reexpositionPartOneUpper
    }
    \new Staff = "LH" {
      \expositionPartOneLower
      \expositionPartTwoLower
      \expositionBisPartOneLower
      \expositionBisPartTwoLower
      \expositionBisPartThreeLower
      \developmentLower
      \reexpositionPartTwoLower
      \reexpositionPartOneLower
    }
  >>
  \layout{

    \accidentalStyle modern-voice-cautionary
  }
  \midi{
    \tempo 4 = 90
  }
}

