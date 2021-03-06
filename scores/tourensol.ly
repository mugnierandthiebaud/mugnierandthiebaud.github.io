\version "2.22.1"

%{
\paper {
  page-count = #2
}
%}

#(set-global-staff-size 16)

\header {
  title = #"Chanson de la plus haute tour"
  composer = #"Musique de Christophe Thiebaud"
  poet = #"Poème de Arthur Rimbaud"
}

%{
%}
\markup {
  \vspace #1
}

% couplet (16 bars) %%%%%%%%%%%%%%%%%%
melodyCouplet = \relative b {
  \repeat unfold 7 { | R2. }
  | r2  b4
  | b2.
  | r2  b4
  | b2.
  | r2  b4
  | b2  b4~
  | b4  b b
  | b2.
  | R2.
}
acuteCouplet = \relative e' {
  \repeat unfold 2  {
    \repeat unfold 2 { | r8 e   <g  b>  e    <g  b>  e    }
    \repeat unfold 2 { | r8 e   <a  b>  e    <a  b>  e    }
    \repeat unfold 2 { | r8 dis <a' b>  dis, <a' b>  dis, }
    \repeat unfold 2 { | r8 e   <g  b>  e    <g  b>  e    }
  }
}
bassCouplet = \relative e {
  \repeat unfold 2  {
    | e2.
    | e
    | f
    | f
    | fis
    | fis
    | e
    | e
  }
}

% refrain (33 bars) %%%%%%%%%%%%%%%%%%
melodyRefrain = \relative b {
  % 8 bars
  | e4. e
  | d2.
  | e4. e
  | b2.
  | d4. d
  | c c
  | b2.
  | R2.
  % 9 bars
  | e
  | b'
  | fis4. fis
  | a2.~
  | a
  | g4.   g
  | g     g
  | fis2.
  | R2.
  % 8 bars
  | e4. e
  | b2.
  | e
  | b
  | e4. e
  | g g
  | b2.
  | R2.
  % 8 bars
  | b4.   a
  | gis   fis
  | a     g
  | fis   e
  | g2.~
  | g
  | g~
  | g4  g  g
}
melodyRefrainZwei = \relative b {
  % 8 bars
  | e4. e
  | d2.
  | e2.  % <= diff !
  | b2.
  | d4. d
  | c c
  | b2.
  | R2.
  % 9 bars
  | e
  | b'
  | fis4. fis
  | a2.~
  | a
  | g4.   g
  | g     g
  | fis2.
  | R2.
  % 8 bars
  | e4. e
  | b2.
  | e
  | b
  | e2.  % <= diff !
  | g    % <= diff !
  | b2.
  | R2.
  % 8 bars
  | b4.   a
  | gis   fis
  | a     g
  | fis e4 e8  % <= diff !
  | g2.~
  | g
  | g~
  | g4  g  g
}

acuteRefrain = \relative e' {
  % 8 bars
  { | r8 g   <c    e        >  g    <c    e        >  g    }
  { | r8 fis <c'   d        >  fis, <c'   d        >  fis, }
  { | r8 fis <b    e        >  fis  <b    e        >  fis  }
  { | r8 e   <g    b        >  e    <g    b        >  e    }
  { | r8 g   <c    d        >  g    <c    d        >  g    }
  { | r8 fis <b    c        >  fis  <b    c        >  fis  }
  { | r8 fis <a    b        >  fis  <a    b        >  fis  }
  { | r8 e   <g    b        >  e    <g    b        >  e    }
  % 9 bars
  { | r8 g   <c    e        >  g    <c    e        >  g    }
  { | r8 c   <ees  fis   b  >  c    <ees  fis   b  >  c    }
  { | r8 e,  <bes' cis   fis>  e,   <bes' cis   fis>  e,   } \repeat unfold 2 {
    | r8 b'  <e    a        >  b    <e    a        >  b    } \repeat unfold 2 {
    | r8 bes <d    g        >  bes  <d    g        >  bes  }
  { | r8 a   <cis  fis      >  a    <cis  fis      >  a    }
  { | r8 a   <cis  fis      >  a    <dis  fis      >  a    }
  % 8 bars
  \repeat unfold 2 {
    | r8 e   <b'   e        >  e,   <b'   e        >  e,
    | r8 e   <b'   b        >  e,   <b'   b        >  e,   }
  { | r8 e   <ais  b     e  >  e    <ais  b     e  >  e    }
  { | r8 ees <a    b     g' >  ees  <a    b     g' >  ees  }
  { | \tuplet 8/6 { r4 gis8 d c' gis f' c } | <d, gis c f b>2. }
  % 8 bars
  { | r8 c'  <gis  b'       >  c    <g    a'       >  c    }
  { | r8 c   <f    aes      >  c    <e    fis      >  c    }
  { | r8 b   <fis  a'       >  b    <f    g'       >  b    }
  { | r8 b   <dis  fis      >  b    <d    e        >  b    } \repeat unfold 2 {
    | r8 e,  <ais  dis   g  >  e    <ais  dis   g  >  e    } \repeat unfold 2 {
    | r8 dis <a'   cisis g' >  dis, <a'   cisis g' >  dis, }
}
bassRefrain = \relative e {
  % 8 bars
  | a2.
  | d
  | g,
  | g
  | a
  | d
  | g,
  | g
  % 9 bars
  | a
  | d
  | g,
  | cis
  | cis
  | c
  | c
  | b
  | b
  % 8 bars
  | e,
  | e
  | f
  | f
  | fis
  | f
  | e
  | e
  % 8 bars
  | a
  | d
  | g,
  | c
  | fis,
  | fis
  | b
  | b
}

\score {

  <<

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    \new Staff \with { midiInstrument = #"clarinet" instrumentName = #"Chant" } \relative b {

      \transpose e g {
        \key e \minor
        \clef #"treble"

        \new Voice = "first_part" {
          \tempo 4 = 140
          \time 3/4

          % { - first part
          \melodyCouplet
          \melodyRefrain
          \relative b {
            | e2.
            | R2.
            | R2.
            | R2.
          }
          % - }
        }
      }

      \pageBreak

      \transpose e gis {
        \key e \minor
        \clef #"treble"

        \new Voice = "second_part" {
          \tempo 4 = 140
          \time 3/4

          % { - second part
          \relative b {
            \repeat unfold #8 { | R2. }
            | b2.~ | b2.
            | b2.~ | b2.
            | b2.~ | b2.~ | b2.
            | R2.
            \melodyRefrainZwei
          }
          % - }
          % { - coda part
          \relative b {
            | e2.
            | R2.
            | R2.
            | r2
            \repeat unfold #2 {
              e4
              | g2.~
              | g
              | g~
              | g4 g g
              | e2.
              | R2.
              | R2.
            }
            \alternative {
              { | r2  }
              { | R2. }
            }
            | R2.
          }
          % - }
        }
      }
    }
    \new Lyrics  \lyricsto "first_part" {
      \lyricmode {
        Qu’il vienne, qu’il vienne,
        Le temps dont on s’é -- prenne.

        J’ai tant fait pa -- ti -- ence
        Qu’à ja -- mais j’ou -- blie.
        Crain -- tes et souf -- frances
        Aux cieux sont par -- ties.
        Et la soif mal -- saine
        Ob -- scur -- cit mes veines.

        Qu’i -- il vien -- ne, qu’i -- il vien -- \override LyricText.self-alignment-X = #LEFT ne,_Le
        temps dont on s’é -- prenne.
      }
    }
    \new Lyrics  \lyricsto "second_part" {
      \lyricmode {
        mm -- mm -- mm

        Tel -- le la prai -- -- rie
        À l’ou -- bli li -- vrée,
        Gran -- die, et fleu -- rie
        D’en -- cens et d’i -- vraies,
        Au bour -- don fa -- rouche
        Des sales mouches.

        Qu’i -- il vien -- ne, qu’i -- il vien -- ne,
        Le temps dont on s'é -- prenne.
        Le temps dont on s'é -- prenne.
        Le temps dont on s'é -- prenne.
      }
    }
    \new Staff \with { midiInstrument = #"acoustic guitar (nylon)" instrumentName = #"Guitare" } {

      \transpose e' g %{ e %} {

        \key e \minor
        \clef #"treble_8"

        <<
          \new Voice = "aigu" {
            \voiceOne
            % { - first part
            \acuteCouplet
            \bar "||"
            \acuteRefrain
            \relative e' {
              | <b f' a b e>2.~ % | \tuplet 8/6 { r4 f8 b, a' f b a }
              | <b f' a b e>2.
              | <b f' a b e>2.~
              | <b f' a b e>2.
              \bar "||"
            }
            % - }
          }
          \new Voice = "basse" %{\relative e %} {
            \voiceTwo
            % { - first part
            \bassCouplet
            \bassRefrain
            \relative e { | e | e | e~ | e }
            % - }
          }
        >>
      }

      \pageBreak

      \transpose e' gis %{ e %} {
        \key e \minor
        \clef #"treble_8"

        <<
          \new Voice = "aiguDeux" %{ \relative e' %} {
            \voiceOne
            % { - second part
            \acuteCouplet
            \bar "||"
            \acuteRefrain
            % - }
            % { - coda part
            \relative e' {
              |  <fis aisis bis   e     >2.~  | <fis aisis bis   e     >2. % \tuplet 8/6 { r4 bis'8 fis  aisis bis e  bis  }
              |  <eis a     b     disis >2.~  | <eis a     b     disis >2.
              |  <e   bes'  dis   g     >2.~  | <e   bes'  dis   g     >2. % \tuplet 8/6 { r4 bes'8 e,   dis'  bes g' bes, }
              |  <ees a     d     g     >2.~  | <ees a     d     g     >2.
              |  <fis b     c     e     >2.~  | <fis b     c     e     >2.
              |  <f   a     b     e     >2.~  | <f   a     b     e     >2.
              |  <e   ais   dis   g     >2.~  | <e   ais   dis   g     >2. % \tuplet 8/6 { r4 ais8  e    dis'  ais g' dis  }
              |  <dis a'    cisis g'    >2.~  | <dis a'    cisis g'    >2.

              \tuplet 8/6 { r8 e  b a' e  b' a e' }
              \tuplet 8/6 { b e  a, b e, a  b, e  }

              \repeat unfold 1 { | <b e a b e>2.~
                                 | <b e a b e>2. }
              | <b e a b e>2.\fermata
              |
            }
            % - }
          }
          \new Voice = "basseDeux" %{\relative e %} {
            \voiceTwo
            % { - second part
            \bassCouplet
            \bassRefrain
            % - }
            % { - coda part
            \relative e {
              | gis  | gis
              | cis~ | cis
              | c    | c
              | f,~  | f
              | d'   | d
              | g,~  | g
              | fis  | fis
              | b~   | b
              | e,~  | e
              | e    | e
              | e
              |
            }
            % - }
          }
        >>
      }
    }
  >>

  \layout {
    \time 3/4
    \accidentalStyle modern-voice-cautionary
    \context {
      \Staff \RemoveEmptyStaves
    }
    \context {
      \Score
      % Remove all-rest staves also in the first system
      \override VerticalAxisGroup.remove-first = ##t
    }
  }

  \midi {
  }

}

