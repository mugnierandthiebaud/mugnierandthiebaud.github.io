\version "2.22.1"

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

upper = \relative c'' {
  \clef "treble"
  \key a \major
  \time 4/4

  | <a c>4 r <a c>2 
  | <a c>4 r <a c> <gis b>
  %
  
  <<
    \new Voice { 
      \voiceOne
      % \override Voice.NoteHead.color = #(x11-color 'red3)
      | cis1
      | cis2~ cis4. b8
      | <d, a' b>2. gis4
      %
      | <d' e>2~ <d e>4. cis8
      | <a b e>2 <cis, a'>2
      | <a' e' fis>2 d4 fis,8 d'8
      | <cis d>4 b <a d>8 d, gis4
      | <gis d' e>2. cis,8 cis'
    }
    \new Voice { 
      \voiceTwo 
      | a1
      | a4. d,8 a'4 s
      | s1
      %
      | s1
      | s1
      | s4. a8~ a4 s4
      | s1
      | s1 
    }
  >>
  
}

lower = \relative c' {
  \clef bass
  \key a \major
  \time 4/4

  | r8 <a c>8~ <a c>2 r4 
  | r8 <a c>8~ <a c>2 <gis b>4
  <<
    \new Voice { 
      \voiceTwo  
      | fis,1 
      | b 
      | e,
      \break 
      | a
      | cis
      | d
      | e
      | a,
    }
    \new Voice \relative a,, { 
      \voiceOne 
      | r8 \autoBeamOff cis' \autoBeamOn e fis a2 
      | r8 fis a2.
      | r8 \autoBeamOff b, \autoBeamOn e d' a4 gis
      %
      | r8 \autoBeamOff e \autoBeamOn a d e2
      | r8 \autoBeamOff a, \autoBeamOn b e~ e2
      | r8 a, d2 s4
      | r8 \autoBeamOff b  \autoBeamOn b~ b b4 s4
      | r8 \autoBeamOff e, \autoBeamOn a4 b

    }
  >>
}


\score{

  \header {
    opus = \markup {\italic "À Kitty Lam."}
  }
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "RH"  <<
      \tempo 4 = 90
      \upper
    >>
    \new Staff = "LH" <<
      \lower
    >>
  >>
  \layout{

    \accidentalStyle modern-voice-cautionary
  }
  \midi{
    \tempo 4 = 90
  }
}
