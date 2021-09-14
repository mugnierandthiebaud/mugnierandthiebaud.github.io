\version "2.22.1"

% RIGHT HAND %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

reexpositionPartOneRightHand = {
  \key a \major
  \new Voice {
    \key a \major

    \voiceTwo     |
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override TupletBracket.bracket-visibility = ##f
    \mark "Legato"
    \tuplet 3/2 { <e''    b''    >8 b'    <e''   b''   >} \tuplet 3/2 { b'     <e''   b''    > b'     } \voiceOne
    \tuplet 3/2 { <e''    a''    >  a'    <e''   a''   >} \tuplet 3/2 { a'     <e''   a''    >  a'    } \voiceTwo  |
    \tuplet 3/2 { <fis''  cis''' >  cis'' <fis'' cis'''>} \tuplet 3/2 { cis''  <fis'' cis''' > cis''  }            %
    \tuplet 3/2 { <fis''  cis''' >  cis'' <fis'' cis'''>} \tuplet 3/2 { b'     <fis'' b''    > b'     }            |
    \tuplet 3/2 { <d''    a''    >  a'    <d''   a''   >} \tuplet 3/2 { a'     <d''   a''    > a'     } \voiceOne  %
    \tuplet 3/2 { <d''    gis''  >  gis'  <d''   gis'' >} \tuplet 3/2 { gis'   <d''   gis''  > gis'   } \voiceTwo  |
    \tuplet 3/2 { <a''    d'''   >  d''   <a''   d'''  >} \tuplet 3/2 { d''    <a''   d'''   > d''    }            %
    \tuplet 3/2 { <a''    d'''   >  d''   <a''   d'''  >} \tuplet 3/2 { cis''  <a''   cis''' > cis''  }            |
    \tuplet 3/2 { <e''    b''    >  b'    <e''   b''   >} \tuplet 3/2 { b'     <b''   e''    > b'     }            %
    \tuplet 3/2 { <e''    a''    >  a'    <e''   a''   >} \tuplet 3/2 { a'     <a''   e''    > a'     }            |
    \tuplet 3/2 { <a''    e'''   >  e''   <a''   e'''  >} \tuplet 3/2 { e''    <a''   e'''   > e''    }            %
    \tuplet 3/2 { <a''    e'''   >  e''   <a''   e'''  >} \tuplet 3/2 { d''    <a''   d'''   > d''    }            |
    \tuplet 3/2 { <fis''  cis''' >  cis'' <fis'' cis'''>} \tuplet 3/2 { cis''  <fis'' cis''' > cis''  }            %
    \tuplet 3/2 { <fis''  b''    >  b'    <fis'' b''   >} \tuplet 3/2 { b'     <fis'' b''    > b'     }            |
    \tuplet 3/2 { <a''    d'''   >  d''   <a''   d'''  >} \tuplet 3/2 { d''    <a''   d'''   > d''    }            %
    \tuplet 3/2 { <a''    d'''   >  d''   <a''   d'''  >} \tuplet 3/2 { cis''  <a''   cis''' > cis''  }            |
    \tuplet 3/2 { <e''    b''    >  b'    <e''   b''   >} \tuplet 3/2 { b'     <b''   e''    > b'     }            %
    \tuplet 3/2 { <e''    a''    >  a'    <e''   a''   >} \tuplet 3/2 { a'     <a''   e''    > a'     }            |
	  <cis''' cis''>4 dis'16 fis' a' cis'' fis''2  |
	  <cis'''' cis'''>4 dis''16 fis'' a'' cis''' fis'''2  |
	  <fis''' fis''>4 e'16 fis' a' cis'' e''2  |
	  <fis'''' fis'''>4 e''16 fis'' a'' cis''' e'''2  |
    \voiceOne
    \dimTextDecresc
    \override TextSpanner.bound-details.left.text = "rallentando"
    \tuplet 3/2 { a''8\>  dis'' a'   } \tuplet 3/2 { dis' a                 dis'           } \tuplet 3/2 { a'   dis'' a'   }  a''4       |
    \tuplet 3/2 { a''8  d''   a' } \tuplet 3/2 { d'   a\startTextSpan d'             } \tuplet 3/2 { gis' d''   gis' }  gis''4\p\! |
    \tuplet 3/2 { a''8    e''   a'   } \tuplet 3/2 { a'   e'                a\stopTextSpan } s2                                        |
  }
}


% LEFT HAND %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

reexpositionPartOneLeftHand = {
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
      | cis, e' fis a e' a, fis e
      | dis,16 cis' a' cis~ cis4~ cis2
      | dis,16 cis' a' cis~ cis4~ cis2
      | d,,,16   cis' a' cis~ cis4~ cis2
      | d,16   cis' a' cis~ cis4~ cis2
      | dis,,,8  cis' fis a cis2
      | e,,8 d' fis a d2
      | a,8 e' a4 a,2
      \bar "|."
    }
  >>
}


% SCORE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{
%}

myPageBreak = { %{ \pageBreak %} }

theMusic = {
    \new PianoStaff <<
      % \set PianoStaff.instrumentName = #"Piano  "
      \new Staff = "RightHand"  {
        \tempo "Moderato Cantabile" 4 = 86

        % enforce creation of all contexts at this point of time
        % cf . http://lilypond.org/doc/v2.22/Documentation/notation/common-notation-for-keyboards#changing-staff-manually
        <>
        %{ 
        %}
        \reexpositionPartOneRightHand   \bar "|."
      }
      \new Dynamics {
        %{ 
        %}
        s1-\mf                 % reexpositionPartOne
        \repeat unfold #8 s1  %
        s1-\mf                 
        s1-\pp
        s1-\mf                  
        s1-\pp
        s1-\mp
        % s1-\markup { \center-column { "The" "End" } } % hurlement de joie
      }
      \new Staff = "LeftHand" {
        %{ 
        %}
        \reexpositionPartOneLeftHand   \bar "|."
      }
    >>
}

\book {

  \header {
    title = \markup {#"Après" \italic "Les filles du botaniste" }
    subtitle = \markup { \normal-text "(fin différente)"}
  }

  \score {
    \theMusic

    \layout{
      indent = #0
      \accidentalStyle modern-voice-cautionary
      \override TupletBracket.bracket-visibility = ##t
      \context {
        \Score
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/10)
      }      
    }
  }

  \score{
    \unfoldRepeats \theMusic

    \midi{
    }
  }

}
