\version "2.22.0"

#(set-global-staff-size 16)

%{
\paper {
  page-count = #4
}
%}

textOne = \lyricmode {
  "Comme je descendais des Fleuves impassibles, " " "
  "Je ne me sentis plus guidé par les haleurs : " " "
} textOneAndAHalf = \lyricmode {
  "Des Peaux-Rouges criards les avaient pris pour cibles, " " "
  "Les ayant cloués nus aux poteaux de couleurs " " "
} textTwo = \lyricmode {
  "J’étais insoucieux de tous les équipages, " " "
  "Porteur de blés flamands ou de cotons anglais. " " "
} textTwoAndAHalf = \lyricmode {
  "Quand avec mes haleurs ont fini ces tapages, " " "
  "Les Fleuves m’ont laissé descendre où je voulais. " " "
}

textThreeFourFiveSix = \lyricmode {
  "Dans les clapotements furieux des marées, " " "
  "Moi, l’autre hiver, plus sourd que les cerveaux d’enfants,  " " "
  "Je courus ! Et les Péninsules démarrées " " "
  "N’ont pas subi tohu-bohus plus triomphants. " " "

  "La tempête a béni mes éveils maritimes. " " "
  "Plus léger qu’un bouchon j’ai dansé sur les flots " " "
  "Qu’on appelle rouleurs éternels de victimes, " " "
  "Dix nuits, sans regretter l’œil niais des falots ! " " "

  "Plus douce qu’aux enfants la chair des pommes sures, " " "
  "L’eau verte pénétra ma coque de sapin " " "
  "Et des taches de vins bleus et des vomissures " " "
  "Me lava, dispersant gouvernail et grappin. " " "

  "Et dès lors, je me suis baigné dans le Poème " " "
  "De la Mer, infusé d’astres, et lactescent, " " "
  "Dévorant les azurs verts ; où, flottaison blême " " "
  "Et ravie, un noyé pensif parfois descend ; " " "
}

textSeven=  \lyricmode {
  "Où, teignant tout à coup les bleuités, délires " " "
  "Et rythmes lents sous les rutilements du jour, " " "
} textSevenAndAHalf =  \lyricmode {
  "Plus fortes que l’alcool, plus vastes que nos lyres, " " "
  "Fermentent les rousseurs amères de l’amour ! " " "
}

textSilent =  \lyricmode {
  % https://www.compart.com/fr/unicode/U+00A0
  " " " " 
  " " " " 
}

textHeight =  \lyricmode {
  "Je sais les cieux crevant en éclairs, et les trombes " " "
  "Et les ressacs, et les courants : je sais le soir, " " "
} textHeightndAHalf = \lyricmode {
  "L’Aube exaltée ainsi qu’un peuple de colombes, " " "
  "Et j’ai vu quelquefois ce que l’homme a cru voir ! " " "
} textNine = \lyricmode {
  "J’ai vu le soleil bas, taché d’horreurs mystiques, " " "
  "Illuminant de longs figements violets, " " "
} textNineAndAHalf = \lyricmode {
  "Pareils à des acteurs de drames très antiques " " "
  "Les flots roulant au loin leurs frissons de volets ! " " "
} textTen = \lyricmode {
  "J’ai rêvé la nuit verte aux neiges éblouies, " " "
  "Baisers montant aux yeux des mers avec lenteurs, " " "
} textTenAndAHalf = \lyricmode {
  "La circulation des sèves inouïes, " " "
  "Et l’éveil jaune et bleu des phosphores chanteurs ! " " "
} textEleven = \lyricmode {
  "J’ai suivi, des mois pleins, pareille aux vacheries " " "
  "Hystériques, la houle à l’assaut des récifs, " " "
} textElevenAndAHalf = \lyricmode {
  "Sans songer que les pieds lumineux des Maries " " "
  "Pussent forcer le mufle aux Océans poussifs ! " " "
} textTwelve = \lyricmode {
  "J’ai heurté, savez-vous, d’incroyables Florides " " "
  "Mêlant aux fleurs des yeux de panthères à peaux " " "
} textTwelveAndAHalf = \lyricmode {
  "D’hommes ! Des arcs-en-ciel tendus comme des brides " " "
  "Sous l’horizon des mers, à de glauques troupeaux ! " " "
} textThirteen = \lyricmode {
  "J’ai vu fermenter les marais énormes, nasses " " "
  "Où pourrit dans les joncs tout un Léviathan ! " " "
} textThirteenAndAHalf = \lyricmode {
  "Des écroulements d’eaux au milieu des bonaces, " " "
  "Et les lointains vers les gouffres cataractant ! " " "
}

textFourteenFifteenSixteenSeventeen = \lyricmode {
  "Glaciers, soleils d’argent, flots nacreux, cieux de braises ! " " "
  "Échouages hideux au fond des golfes bruns " " "
  "Où les serpents géants dévorés des punaises " " "
  "Choient, des arbres tordus, avec de noirs parfums ! " " "

  "J’aurais voulu montrer aux enfants ces dorades " " "
  "Du flot bleu, ces poissons d’or, ces poissons chantants. " " "
  "— Des écumes de fleurs ont bercé mes dérades " " "
  "Et d’ineffables vents m’ont ailé par instants. " " "

  "Parfois, martyr lassé des pôles et des zones, " " "
  "La mer dont le sanglot faisait mon roulis doux " " "
  "Montait vers moi ses fleurs d’ombre aux ventouses jaunes " " "
  "Et je restais, ainsi qu’une femme à genoux… " " "

  "Presque île, ballottant sur mes bords les querelles " " "
  "Et les fientes d’oiseaux clabaudeurs aux yeux blonds. " " "
  "Et je voguais, lorsqu’à travers mes liens frêles " " "
  "Des noyés descendaient dormir, à reculons ! " " "
}

textEighteen = \lyricmode {
  "Or moi, bateau perdu sous les cheveux des anses, " " "
  "Jeté par l’ouragan dans l’éther sans oiseau, " " "
} textEighteenAndAHalf = \lyricmode {
  "Moi dont les Monitors et les voiliers des Hanses " " "
  "N’auraient pas repêché la carcasse ivre d’eau ; " " "
} textNineteen = \lyricmode {
  "Libre, fumant, monté de brumes violettes, " " "
  "Moi qui trouais le ciel rougeoyant comme un mur " " "
} textNineteenAndAHalf = \lyricmode {
  "Qui porte, confiture exquise aux bons poètes, " " "
  "Des lichens de soleil et des morves d’azur ; " " "
} textTwenty = \lyricmode {
  "Qui courais, taché de lunules électriques, " " "
  "Planche folle, escorté des hippocampes noirs, " " "
} textTwentyAndAHalf = \lyricmode {
  "Quand les Juillets faisaient crouler à coups de triques " " "
  "Les cieux ultramarins aux ardents entonnoirs ; " " "
} textTwentyOne = \lyricmode {
  "Moi qui tremblais, sentant geindre à cinquante lieues " " "
  "Le rut des Béhémots et les Maelstroms épais, " " "
} textTwentyOneAndAHalf = \lyricmode {
  "Fileur éternel des immobilités bleues, " " "
  "Je regrette l’Europe aux anciens parapets ! " " "
}

textTwentyTwoTwentyThreeTwentyFourTwentyFive = \lyricmode {
  "J’ai vu des archipels sidéraux ! Et des îles " " "
  "Dont les cieux délirants sont ouverts au vogueur : " " "
  "— Est-ce en ces nuits sans fonds que tu dors et t’exiles, " " "
  "Million d’oiseaux d’or, ô future Vigueur ? " " "

  "Mais, vrai, j’ai trop pleuré ! Les Aubes sont navrantes. " " "
  "Toute lune est atroce et tout soleil amer : " " "
  "L’âcre amour m’a gonflé de torpeurs enivrantes. " " "
  "Ô que ma quille éclate ! Ô que j’aille à la mer ! " " "

  "Si je désire une eau d’Europe, c’est la flache " " "
  "Noire et froide où vers le crépuscule embaumé " " "
  "Un enfant accroupi, plein de tristesse, lâche " " "
  "Un bateau frêle comme un papillon de mai. " " "

  "Je ne puis plus, baigné de vos langueurs, ô lames, " " "
  "Enlever leur sillage aux porteurs de cotons, " " "
  "Ni traverser l’orgueil des drapeaux et des flammes, " " "
  "Ni nager sous les yeux horribles des pontons " " "
}

% \override #'(fret-diagram-details . ((orientation . landscape))) 
qwe = #'(fret-diagram-details . ((number-type . roman-lower) (finger-code . in-dot) (barre-type . straight)))

reSept                      = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "o;o;4-2;5-4;3-1;x;"}}
solSeptReBasse              = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "o;o;3-1;4-4;3-2;x;"}}
doNeufReBasse               = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "o;o;2-1;3-3;3-4;x;"}}


solMineurSept               = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "5-3;x;3-1-(;3-1;3-1-);x;"}}
doSeptNeufDieze             = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "x;3-2;2-1;3-3;4-4;x;"}}
faQuinteAugm                = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "3-3;x;x;2-1;2-2;o;"}}
siSeptMaj                   = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "x;1-1;x;2-3;3-4;1-2;"}}
miMinSeptQuinteDimNeufDieze = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "2-1;x;x;3-3;3-4;2-2;"}}
laSeptNeufBemol             = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "x;o;2-1;3-2;2-3;3-4;"}}
laBemolSeptQuinteDim        = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "6-3;x;o;5-2;7-4;4-1;"}}
solSept                     = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "5-2;x;o;4-1;6-4;5-3;"}}

solMinNeuf                  = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "5-2;x;3-1-(;3-1;3-1-);5-3;"}}
doSeptNeufDiezeQuinteAugm   = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "x;3-2;2-1;3-3;4-4-(;4-4-);"}}
faQuinteAugmBis             = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "3-2;x;2-1-(;2-1;2-1-);3-3;"}}
siSeptMajQuinteAugm         = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "x;1-1;x;2-2;3-4;2-3;"}}
miMinSeptQuinteDimNeufBemol = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "2-3;1-2;o;o;3-4;1-1;"}}
laSeptSusQuatre             = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "x;o;2-1;o;3-4;o;"}}
laSept                      = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "x;o;2-1;o;2-2;o;"}}
laBemolNeufOnze             = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "6-4;3-1-(;4-2;3-1;3-1-);x;"}}
solNeuf                     = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "5-4;2-1-(;3-2;2-1-);3-3;x;"}}
doNeuf                      = \markup {\hspace #7 \override \qwe {\fret-diagram-terse "x;3-2;2-1;3-3;3-4;x;"}}

tabTablePath = 
\markup
\with-dimensions #'(0 . 0) #'(-4.3 . 2)
\path #0.1 
#'((moveto    0.05   0.00)
   (lineto    1.05   1.00)
   (moveto    1.05   0.00)
   (lineto    0.05   1.00))

tabTable = \once \override NoteHead.stencil = #(lambda (grob) (grob-interpret-markup grob tabTablePath))

strumOne = #(define-music-function
             (chord)
             (string-or-music?)
             #{
               bes'8.\rest #chord bes'8\rest \once \override Accidental #'stencil = ##f \tabTable a'8
               bes'8.\rest #chord bes'8\rest \once \override Accidental #'stencil = ##f \tabTable a'8
             #})

strumTwo = #(define-music-function
             (chord1 chord2)
             (string-or-music? string-or-music?)
             #{
               bes'8.\rest #chord1 bes'8\rest \once \override Accidental #'stencil = ##f \tabTable a'8
               bes'8.\rest #chord2 bes'8\rest \once \override Accidental #'stencil = ##f \tabTable a'8
             #})

strumOneBis = #(define-music-function
                (long short bass next)
                (string-or-music? string-or-music? string-or-music? string-or-music?)
                #{
                  #long #short a'8\rest #bass #short 
                  #long #short a'8.\rest      #next  
                #})

strumTwoBis = #(define-music-function
                (long1 short1 bass long2 short2 short2bis next)
                (string-or-music? string-or-music? string-or-music? string-or-music? string-or-music? string-or-music? string-or-music?)
                #{
                  \arpeggioArrowDown
                  #long1 #short1 a'8\rest #bass #short2
                  #long2 #short2bis a'8.\rest      #next
                #})


% couplet 

coupletBasse = {
  <d a>2-\reSept        <d a>
  <d a>-\solSeptReBasse <d a>-\doNeufReBasse
}

coupletBasseSimple = {
  \voiceTwo
  <d a>2 <d a>
  <d a>  <d a>
}

couplet = {
  \arpeggioArrowUp
  <fis' c'' d''>1\arpeggio
  <f' b' d''>2\arpeggio <e' bes' d''>2\arpeggio
}

coupletStrum = {
  \strumOne { <fis' c'' d''>16 }
  \strumTwo { <f'   b'  d''>16 } { <e' bes' d''>16 }
}

% refrain 

refrain = {
  <f' bes' d''>1\arpeggio
  <e' bes' dis''>1\arpeggio
  <a' cis'' e''>1\arpeggio
  <a' d'' f''>1\arpeggio
  <bes' d'' fis''>1\arpeggio
  <e' bes' cis'' g''>1\arpeggio
  <eeses' c'' ges'' aes''>1\arpeggio
  <d' b' f'' a''>1\arpeggio

  <f' bes' d'' a''>1\arpeggio
  <e' bes' dis'' aes''>1\arpeggio
  <e' a' cis'' g'' >1\arpeggio
  <a' d'' fis''>1\arpeggio
  <bes d' g' d'' f''>1\arpeggio
  <<
    {
      \voiceTwo
      <g' e''>1\arpeggio
    }
    \new Voice {
      \voiceOne
      d''2. cis''4
    }
  >>
  <c' ges' bes' d'' >1\arpeggio
  <b f' a' d'' >2\arpeggio <e' bes' d'' >2\arpeggio
}

refrainStrum =  {
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

% refrain 
refrainStrunBis =  {
  \strumOneBis { <f'     bes'  d''         >8.} 
               { <f'     bes'  d''         >16~} 
               { g16 }
               { <e'     bes'  dis''       >16~} 
  \strumOneBis { <e'     bes'  dis''       >8.} 
               { <e'     bes'  dis''       >16~} 
               { c'16 }
               { <a'     cis'' e''         >16~} 
  \strumOneBis { <a'     cis'' e''         >8.} 
               { <a'     cis'' e''         >16~} 
               { f16 }
               { <a'     d''   f''         >16~} 
  \strumOneBis { <a'     d''   f''         >8.}
               { <a'     d''   f''         >16~} 
               { bes16 }
               { <bes'   d''   fis''       >16~} 
  \strumOneBis { <bes'   d''   fis''       >8.} 
               { <bes'   d''   fis''       >16~} 
               { e16 }
               { <e'     bes'  cis'' g''   >16~} 
  \strumOneBis { <e'     bes'  cis'' g''   >8.} 
               { <e'     bes'  cis'' g''   >16~} 
               { a16 }
               { <eeses' c''   ges'' aes'' >16~} 
  \strumOneBis { <eeses' c''   ges'' aes'' >8.} 
               { <eeses' c''   ges'' aes'' >16~} 
               { aes16 }
               { <d'     b'    f''   a''   >16~} 
  \strumOneBis { <d'     b'    f''   a''   >8.} 
               { <d'     b'    f''   a''   >16~} 
               { g16 }
               { <f'     bes'  d''   a''   >16~}
  \strumOneBis { <f'     bes'  d''   a''   >8.}
               { <f'     bes'  d''   a''   >16~} 
               { g16 }
               { <e'     bes'  dis'' aes'' >16~} 
  \strumOneBis { <e'     bes'  dis'' aes'' >8.} 
               { <e'     bes'  dis'' aes'' >16~} 
               { c'16 }
               { <e'     a'    cis'' g''   >16~} 
  \strumOneBis { <e'     a'    cis'' g''   >8.} 
               { <e'     a'    cis'' g''   >16~} 
               { f16 }
               { <a'     d''         fis'' >16~} 
  \strumOneBis { <a'     d''         fis'' >8.} 
               { <a'     d''         fis'' >16~} 
               { bes16 }
               { <bes d'     g'  d'' f''   >16~} 
  \strumOneBis { <bes d'     g'  d'' f''   >8.} 
               { <bes d'     g'  d'' f''   >16~} 
               { e16 }
               { <e' g'  d''   e''         >16~} 
  \strumTwoBis { <e' g'  d''   e''         >8.} 
               { <e' g'  d''   e''         >16~} 
               { a16 }
               { <e' g'  cis'' e''         >8.} 
               { <e' g'  cis'' e''         >16~} 
               { <e' g'  cis'' e''         >16} 
               { <c'     ges'  bes' d''    >16~} 
  \strumOneBis { <c'     ges'  bes' d''    >8.} 
               { <c'     ges'  bes' d''    >16~} 
               { aes16 }
               { <b      f'    a' d''      >16~} 
  \strumTwoBis { <b      f'    a' d''      >8.} 
               { <b      f'    a' d''      >16~}
               { g16 }
               { <e'     bes'  d''         >8.}
               { <e'     bes'  d''         >16~}
               { <e'     bes'  d''         >16}
               { <gis'   d''   gis''       >16~}
}

refrainBasse =  {
  
  g2-\solMineurSept               g
  c'-\doSeptNeufDieze             c'
  f-\faQuinteAugm                 f
  bes-\siSeptMaj                  bes
  e-\miMinSeptQuinteDimNeufDieze  e
  a-\laSeptNeufBemol              a
  aes-\laBemolSeptQuinteDim       aes
  g-\solSept                      g

  g-\solMinNeuf                   g
  c'-\doSeptNeufDiezeQuinteAugm   c'
  f-\faQuinteAugmBis              f
  bes-\siSeptMajQuinteAugm        bes
  e-\miMinSeptQuinteDimNeufBemol  e
  a-\laSeptSusQuatre              a-\laSept
  aes-\laBemolNeufOnze            aes
  g-\solNeuf                      c'-\doNeuf
}

refrainBasseSimple = {
  g2  g
  c'  c'
  f   f
  bes bes
  e   e
  a   a
  as  as
  g   g

  g   g
  c'  c'
  f   f
  bes bes
  e   e
  a   a 
  as  as
  g   c' 
}

% coda

codaStrum = {
  \strumOne { <gis' d'' gis''>16 }
  \strumOne { <gis' d'' gis''>16 }
  <d a d' gis' d'' gis''>1
  \arpeggio 
  \laissezVibrer
}

codaStrumBis = {
  \strumOneBis { <gis' d'' gis''>8. } { <gis' d'' gis''>16~} { d'16 } { <gis' d'' gis''>16~ \arpeggio}
  \strumOneBis { <gis' d'' gis''>8. } { <gis' d'' gis''>16~} { d'16 } { \once \override Accidental #'stencil = ##f \tabTable a'16 }
  <d a d' gis' d'' gis''>1 
  \arpeggio 
  \laissezVibrer
}

codaBasse = {
  \repeat unfold 4 <d a d'>2 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header {
  title = "Le Bateau ivre"
  subtitle = \markup { \abs-fontsize #10 "lundi 11 juin 2018, 8 h 20 du matin"}
  poet = "Poème de Arthur Rimbaud"
  composer = "Musique de Christophe Thiebaud"
}

\markup {
  \vspace #1
}

\markup { "Récitant & Guitarre" { \abs-fontsize #7 \italic "(6ème corde en ré)" } "(& Flute)" }

\score {

    \new Staff = "main" \transpose c' c {
        % \set Staff.instrumentName = \markup \center-column { "Guitarre" { \abs-fontsize #7 \italic "6ème corde en ré" } }
        % \set Staff.midiInstrument = "acoustic guitar (nylon)"

        \tempo 4 = 70
        
        % { part I
        <<
        \new ChordNames {
            \chordmode { 
            d1:7                  |
            g2:7/d        c:9/d   |

            g1:m7                 |
            c:7.9+                |
            f:7+.5+               |
            bes:7+                |
            e:m7.5-.9             |
            a:7.9-                |
            aes:7.5-              |
            g:7.9                 |
            
            g:m7.9                |
            c:7.9+.13-            |
            f:7+.5+.9             |
            bes:7+.5+             |
            e:m7.5-.9-            |
            a2.:7sus4     a4:7    |
            aes1:7.9.11+          |
            g2:9          c:9     |

            d1:7                  |
            g2:7/d        c:9/d   |
            } 
        }
        \new Voice = "basseI" {
            \voiceTwo

            \key g \major
            \bar ".|:" 
            \repeat volta 4 \coupletBasse 
            \mark \markup {\tiny  "4x"} 
            \break
        
            \key d \minor
            \refrainBasse
            \break
        
            \key g \major
            \bar ".|:" 
            \repeat volta 2 \coupletBasse
            \mark \markup { \tiny  "2x"} 
            \break
        }
        \new Voice = "accordsI" {
            \voiceOne

            \repeat volta 4 \couplet 
            \refrain
            \repeat volta 2 \couplet
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
            \textThreeFourFiveSix
            <<
            \textSeven

            \new Lyrics {
                \set associatedVoice = "basseI"
                \textSevenAndAHalf
            }
            >>
        }
        >>
        % end of part I
        %}

        % { part II
        <<
        \new Voice = "basseII" {
            \voiceTwo
            \bar ":|.|:" 
            \mark \markup { \tiny  "2x"} 
            \repeat volta 2 \coupletBasseSimple
            \break
        
            \bar ":|.|:" 
            \mark \markup { \tiny  "8x"} 
            \repeat volta 8 \coupletBasseSimple
            \break
            <<
            \new Staff \with {
                instrumentName = "Flute"
                shortInstrumentName = "Flute"
                midiInstrument = "flute"
                alignAboveContext = #"main"
            } \relative d''' {
                \key g \major
                \clef treble
                f8. d16~ d4  r4        g16 f g a | 
                f8. d16~ d4  r2                  | 
                f8. d16~ d4  r4        g16 f g a | 
                f2           r2                  | 
                f8. d16~ d4  r4        g16 f g a | 
                f8. d16~ d4  r2                  | 
                f8. d16~ d4  r4        g16 f g a | 
                f2           r8 d'16 a g   f d8  | 
            }
            \bar ":|.|:" 
            \repeat unfold 4 \coupletBasseSimple
            \break
            >>
            <<
            \new Staff  \with {
                instrumentName = "Flute"
                shortInstrumentName = "Flute"
                midiInstrument = "flute"
                alignAboveContext = #"main" 
            } \relative d''' {
                \key d \minor
                \clef treble
                f8. d16~ d4  r4        g16 f g a | 
                f8. d16~ d4  r2                  | 
                f2           r4        g16 f g a | 
                f2           r2                  | 
                f8. d16~ d4  r4        g16 f g a | 
                f2           r8 d'16 a g   f d8  | 
                f2           r4        g16 f g a | 
                d,2          r2                  | 
            }

            \key d \minor
            \refrainBasseSimple
            >>

        }
        \new Voice = "accordsII" {
            \voiceOne
            \repeat volta 2 \coupletStrum
            \repeat volta 8 \coupletStrum
            \repeat unfold 4 \coupletStrum
            \refrainStrum
        }
        \new Lyrics \lyricsto "basseII" {
            \textSilent
            <<
            \textHeight

            \new Lyrics {
                \set associatedVoice = "basseII"
                \textHeightndAHalf
            }
            \new Lyrics {
                \set associatedVoice = "basseII"
                \textNine
            }
            \new Lyrics {
                \set associatedVoice = "basseII"
                \textNineAndAHalf
            }
            \new Lyrics {
                \set associatedVoice = "basseII"
                \textTen
            }
            \new Lyrics {
                \set associatedVoice = "basseII"
                \textTenAndAHalf
            }
            \new Lyrics {
                \set associatedVoice = "basseII"
                \textEleven
            }
            \new Lyrics {
                \set associatedVoice = "basseII"
                \textElevenAndAHalf
            }
            >> 
            \textTwelve
            \textTwelveAndAHalf
            \textThirteen
            \textThirteenAndAHalf
            \textFourteenFifteenSixteenSeventeen
        }
        >>
        % end of part II
        %}
        % { part III
        <<
        \new Voice = "basseIII" {
            \voiceTwo
            \break
            \key g \major
            \coupletBasseSimple
            \coupletBasseSimple
            \break
        
            \repeat volta 8 {<d a>2 <d a> | <d a> <d a>4 \hideNotes r8. \unHideNotes } 
            \alternative {
            { \hideNotes r16 \unHideNotes \mark \markup { \tiny  "8x"} } 
            { \hideNotes r16 \unHideNotes } 
            }
            \break
        
            \key d \minor
            \refrainBasseSimple
            \break
        
            \key g \major
            \codaBasse
        }
        \new Voice = "accordsIII" {
            \voiceOne
            \couplet
            {
            \voiceOne
            <fis' c'' d''>1 \arpeggio 
            |
            <f' b' d''>2 \arpeggio
            <e' bes' d''>4.. \arpeggio
            <fis' c''  d''>16~
            |
            }
            \break
            \repeat volta 8 {
            
            {
                \voiceOne
                <fis' c''  d''>8.
                
                <fis' c''  d''>16 
                a'8 \rest
                d16
                <fis' c''  d''>16~
            
                <fis' c''  d''>8.
                <fis' c''  d''>16
                a'8. \rest
                <f'   b'   d''>16~
                |
                <f'   b'   d''>8.
                <f'   b'   d''>16
                a'8 \rest
                d16
                <e'   bes' d''>16~
                
                <e'   bes' d''>8.
                <e'   bes' d''>16
                a'8. \rest 
                % ...
            } 
            }
            \alternative {
            { 
                <fis' c''  d''>16\laissezVibrer
            } 
            { 
                <f'   bes' d''>16~
            } 
            }
            \break
            \refrainStrunBis
            \codaStrumBis
        }
        \new Lyrics \lyricsto "basseIII" {
            \textSilent
            \textSilent
            <<
            \textEighteen

            \new Lyrics {
                \set associatedVoice = "basseIII"
                \textEighteenAndAHalf
            }
            \new Lyrics {
                \set associatedVoice = "basseIII"
                \textNineteen
            }
            \new Lyrics {
                \set associatedVoice = "basseIII"
                \textNineteenAndAHalf
            }
            \new Lyrics {
                \set associatedVoice = "basseIII"
                \textTwenty
            }
            \new Lyrics {
                \set associatedVoice = "basseIII"
                \textTwentyAndAHalf
            }
            \new Lyrics {
                \set associatedVoice = "basseIII"
                \textTwentyOne
            }
            \new Lyrics {
                \set associatedVoice = "basseIII"
                \textTwentyOneAndAHalf
            }
            >>
            \textTwentyTwoTwentyThreeTwentyFourTwentyFive
        }

        >>
        % end of part III
        %}
    }

  \layout {
    \clef "treble_8"
    \time 4/4
    indent = #0
    \override LyricText.self-alignment-X = #LEFT
    % \override Lyrics.LyricText.font-size = #-1
    \override FretBoard.fret-diagram-details.finger-code = #'in-dot
    \override FretBoard.fret-diagram-details.dot-color = #'white  
  }
  %{
  %}
  \midi { 
    \tempo 4 = 70
  }
}

