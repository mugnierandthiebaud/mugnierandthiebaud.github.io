\version "2.22.1"

% #(set-global-staff-size 16)

%{
\paper {
  page-count = #4
}
%}

textOne = \lyricmode {
  "① Par les soirs bleus d’été, j’irai dans les sentiers, " " "
  "Picoté par les blés, fouler l’herbe menue: " " "
} textOneAndAHalf = \lyricmode {
  "Rêveur, j’en sentirai la fraîcheur à mes pieds. " " "
  "Je laisserai le vent baigner ma tête nue. " " "
} textTwo = \lyricmode {
  "② Je ne parlerai pas, je ne penserai rien: " " "
  "Mais l’amour infini me montera dans l’âme, " " "
} textTwoAndAHalf = \lyricmode {
  "Et j’irai loin, bien loin, comme un bohémien, " " "
  "Par la Nature, – heureux comme avec une femme. " " "
}

#(define-markup-command
  (fret-diag layout props chord)
  (markup?) (
    interpret-markup layout props #{
      \markup {
        \hspace #13
        \override #'(fret-diagram-details . ((number-type . roman-lower) (finger-code . in-dot) (barre-type . straight))) {
          \fret-diagram-terse #chord
        }
      }
    #}
  )
)

reSept                      = \markup \fret-diag "o;o;4-2;5-4;3-1;x;"
solSeptReBasse              = \markup \fret-diag "o;o;3-1;4-4;3-2;x;"
doNeufReBasse               = \markup \fret-diag "o;o;2-1;3-3;3-4;x;"
solMineurSept               = \markup \fret-diag "5-3;x;3-1-(;3-1;3-1-);x;"

%% http://lsr.di.unimi.it/LSR/Item?id=465

rhythmTemplate =
#(define-scheme-function (parser location pattern) (ly:music?)
   (define-music-function (parser location chord) (ly:music?)
     (make-relative (chord) chord
                    (map-some-music
                     (lambda (m)
                       (and (music-is-of-type? m 'skip-event)
                            (let ((dur (ly:music-property m 'duration))
                                  (art (ly:music-property m 'articulations))
                                  (res (ly:music-deep-copy chord)))
                              ;; transfer duration of skip to all elements with duration
                              (for-some-music
                               (lambda (c)
                                 (and (ly:duration? (ly:music-property c 'duration))
                                      (begin
                                       (set! (ly:music-property c 'duration) dur)
                                       #t)))
                               res)
                              ;; transfer articulations of skip to all relevant targets
                              (for-some-music
                               (lambda (c)
                                 (let ((prop
                                        (cond ((music-is-of-type? c 'event-chord) 'elements)
                                              ((music-is-of-type? c 'rhythmic-event) 'articulations)
                                              (else #f))))
                                   (and prop
                                        (begin
                                         (set! (ly:music-property c prop)
                                               (append (ly:music-property c prop)
                                                       art))
                                         #t))))
                               res)
                              res)))
                     (ly:music-deep-copy pattern)))))

%%%%%%%%%%%%%%%%%%%%%%%

strumOne     = \rhythmTemplate { | s8 s8 s8 s8 s8 s8 s8 s8 | s8 s8 s8 s8 s8 s8 s8 s8  }
strumOneHalf = \rhythmTemplate { | s8 s8 s8 s8 s8 s8 s8 s8 }

% couplet

coupletBasseSimple = \relative c {
  \voiceTwo
  | bes1 | bes1
  | c    | c
  | a    | a
  | d,   | d
   
}

coupletBasseWithFretDiagnams = \relative c {
  \voiceTwo
  | bes1^\reSept | bes1^\reSept 
  | c^\reSept    | c^\reSept 
  | a^\reSept    | a^\reSept 
  | d,^\reSept   | d,^\reSept 
   
}

coupletStrum = \relative c {
  \voiceOne
  | \strumOne     { <f g bes c> }                                
  | \strumOneHalf { <f g bes c> } \strumOneHalf { <e g bes c> } 
  | \strumOne     { <g a c   e> }                                
  | \strumOneHalf { <g a c   e> } \strumOneHalf { <f a c   f> } 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header {
  title = "Sensation"
  poet = "Poème de Arthur Rimbaud"
  composer = "Musique de Christophe Thiebaud"
}

\markup {
  \vspace #1
}

\score {

  \new Staff = "main" {

    %{
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \set Voice.midiInstrument = "acoustic guitar (nylon)"
    \set ChordNames.midiInstrument = "acoustic guitar (nylon)"
    %}
    \tempo 4 = 108

    % { part I
    <<
      %{
      \new ChordNames {
        \chordmode {
          | bes1:6   | bes:6         
          | c:sus4   | c:7
          | a:m7     | a:m7        
          | d:m7sus4 | d:m7 
        }
      }
      %}
      \new Voice = "basseI" {
        \set midiInstrument = "synth bass 2"
        \voiceTwo

        \key d \minor
        \repeat volta 4 \coupletBasseSimple
        \break
      }
      \new Voice = "accordsI" {
        \set midiInstrument = "honky-tonk"
        \voiceOne

        \repeat volta 4 \coupletStrum
      }
      \new Lyrics \lyricsto "basseI" {
        <<
          \textOne
          \new Lyrics {
            \set associatedVoice = "basseI"
            \textOneAndAHalf
          }
          \new Lyrics {
            \set associatedVoice = "basseI"
            \textTwo
          }
          \new Lyrics {
            \set associatedVoice = "basseI"
            \textTwoAndAHalf
          }
        >>
      }
    >>
    % end of part I
    %}


  }

  \layout {
    \clef "treble_8"
    \time 2/2
    indent = #0
    \override LyricText.self-alignment-X = #LEFT
    \accidentalStyle modern-voice-cautionary
    % \override Lyrics.LyricText.font-size = #-1
  }

  \midi {
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
  }
}

