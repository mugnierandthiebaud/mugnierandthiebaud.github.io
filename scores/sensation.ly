\version "2.22.1"


% #(set-global-staff-size 16)

%{
\paper {
  page-count = #4
}
%}

textOne = \lyricmode {
  "① Par" "les soirs" bleus d’é -- té, j’i -- rai dans les sen -- tiers, 
  Pi -- coté par les blés, fou -- ler l’her -- be me -- nue:
  Rêveur, j’en sen -- ti -- rai la fraî -- cheur à mes pieds. 
  Je laisse -- rai le vent bai -- gner ma tête nue.
} textTwo = \lyricmode {
  "② Je" "ne par" -- le -- rai pas, je ne pen -- se -- rai rien:
  "Mais l’a" -- mour in -- fi -- ni me mon -- te -- ra dans l’âme,
  "Et j’i" -- rai loin, bien loin, comme un bo -- hé -- mi -- en,
  "Par la" Nature, "- heu" -- reux comme a -- vec un -- e femme.
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
  | d    | d
  
}

coupletBasseWithFretDiagnams = \relative c {
  \voiceTwo
  | bes1^\reSept | bes1^\reSept 
  | c^\reSept    | c^\reSept 
  | a^\reSept    | a^\reSept 
  | d^\reSept    | d^\reSept 
  
}

coupletStrum = \relative c {
  \voiceOne
  | \strumOne     { <f g bes c> }                                
  | \strumOneHalf { <f g bes c> } \strumOneHalf { <e g bes c> } 
  | \strumOne     { <e g a   c > }                                
  | \strumOneHalf { <e g a   c > } \strumOneHalf { <f g a c> } 
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
  <<
    \new Staff = "melodie" \relative bes''{
    \time 2/2
    \tempo 4 = 104

        \new Voice = "melodie" {
          | f2      e4   d8 e8~ | e8 d4. bes4 bes  
          | f'2     e4   d8 e8~ | e1
          | f 2     e4   d8 e8~ | e8 d4. a4   a   
          | f'2     e4   d8 a8~ | a1
          | f'2     e4   d8 e8~ | e8 d4. bes4 bes  
          | f'2     e4   d8 e8~ | e1 
          | f 2     e4   d8 e8~ | e8 d4. a4   c  
          | f2      e4   d8 d8~ | d1
        }
    }
    \new Lyrics \lyricsto "melodie" {
      <<
        \textOne 
        \new Lyrics {
          \set associatedVoice = "melodie"
          \textTwo
        }
      >>
    }

    \new PianoStaff <<
      \set PianoStaff.instrumentName = #"Piano  "
      \new Staff = "RightHand"  {
        \key d \minor
        \new Voice = "accords" {
          \set midiInstrument = "honky-tonk"
          \voiceOne

          \repeat unfold 4 \coupletStrum
        }
      }
      \new Staff = "LeftHand"  {
        \clef bass
        \key d \minor
        \new Voice = "basse" {
          \set midiInstrument = "synth bass 2"
          \voiceTwo

          \repeat unfold 4 \coupletBasseSimple
          \break
        }
      }
    >>

  >>

  \layout {
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

