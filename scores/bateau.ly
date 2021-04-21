\version "2.22"
#(set-global-staff-size 16)
\paper {
  page-count = #3
}
\header
{
  title = "Le Bateau ivre"
  subtitle = \markup { \abs-fontsize #10 "Lundi 11 juin 2018, 8 h 20 du matin"}
  poet = "Poème de Arthur Rimbaud"
  composer = "Musique de Christophe Thiebaud"
}

textOne = \lyricmode {
  "Comme je descendais des Fleuves impassibles, "
  "Je ne me sentis plus guidé par les haleurs ; "
} textOneAndAHalf = \lyricmode {
  "Des Peaux-Rouges criards les avaient pris pour cibles, "
  "Les ayant cloués nus aux poteaux de couleurs "
} textTwo = \lyricmode {
  "J’étais insoucieux de tous les équipages, "
  "Porteur de blés flamands ou de cotons anglais. "
} textTwoAndAHalf = \lyricmode {
  "Quand avec mes haleurs ont fini ces tapages, "
  "Les Fleuves m’ont laissé descendre où je voulais. " " "
}

textThreeFourFiveSix = \lyricmode {
  "Dans les clapotements furieux des marées,"
  "Moi, l’autre hiver, plus sourd que les cerveaux d’enfants,"
  "Je courus ! Et les Péninsules démarrées,"
  "N’ont pas subi tohu-bohus plus triomphants."

  "La tempête a béni mes éveils maritimes."
  "Plus léger qu’un bouchon j’ai dansé sur les flots"
  "Qu’on appelle rouleurs éternels de victimes,"
  "Dix nuits, sans regretter l’œil niais des falots."

  "Plus douce qu’aux enfants la chair des pommes sures,"
  "L’eau verte pénétra ma coque de sapin"
  "Et des taches de vins bleus et des vomissures"
  "Me lava, dispersant gouvernail et grappin."

  "Et dès lors, je me suis baigné dans le poème"
  "De la mer, infusé d’astres, et lactescent," " "
  "Dévorant les azurs verts où, flottaison blême"
  "Et ravie, un noyé pensif parfois descend," " "
}

textSeven=  \lyricmode {
  "Où, teignant tout à coup les bleuités, délires"
  "Et rythmes lents sous les rutilements du jour,"
} textSevenAndAHalf =  \lyricmode {
  "Plus fortes que l’alcool, plus vastes que nos lyres,"
  "Fermentent les rousseurs amères de l’amour." " "
}

textSilent =  \lyricmode {
  % https://www.compart.com/fr/unicode/U+00A0
  " "
  " "
  " "
}

textHeight =  \lyricmode {
  "Je sais les cieux crevant en éclairs, et les trombes,"
  "Et les ressacs, et les courants, je sais le soir,"
} textHeightndAHalf = \lyricmode {
  "L’aube exaltée ainsi qu’un peuple de colombes,"
  "Et j’ai vu quelquefois ce que l’homme a cru voir."
} textNine = \lyricmode {
  "J’ai vu le soleil bas taché d’horreurs mystiques"
  "Illuminant de longs figements violets,"
} textNineAndAHalf = \lyricmode {
  "Pareils à des acteurs de drames très antiques,"
  "Les flots roulant au loin leurs frissons de volets ;"
} textTen = \lyricmode {
  "J’ai rêvé la nuit verte aux neiges éblouies,"
  "Baisers montant aux yeux des mers avec lenteur,"
} textTenAndAHalf = \lyricmode {
  "La circulation des sèves inouïes"
  "Et l’éveil jaune et bleu des phosphores chanteurs."
} textEleven = \lyricmode {
  "J’ai suivi des mois pleins, pareille aux vacheries"
  "Hystériques, la houle à l’assaut des récifs,"
} textElevenAndAHalf = \lyricmode {
  "Sans songer que les pieds lumineux des Maries"
  "Pussent forcer le muffle aux Océans poussifs ;"
} textTwelve = \lyricmode {
  "J’ai heurté, savez-vous ? d’incroyables Florides,"
  "Mêlant aux fleurs des yeux de panthères, aux peaux"
} textTwelveAndAHalf = \lyricmode {
  "D’hommes, des arcs-en-ciel tendus comme des brides,"
  "Sous l’horizon des mers, à de glauques troupeaux ;"
} textThirteen = \lyricmode {
  "J’ai vu fermenter les marais énormes, nasses"
  "Où pourrit dans les joncs tout un Léviathan,"
} textThirteenAndAHalf = \lyricmode {
  "Des écroulements d’eaux au milieu des bonaces,"
  "Et les lointains vers les gouffres cataractant !" " "
}

textFourteenFifteenSixteenSeventeen = \lyricmode {
  "Glaciers, soleils d’argent, flots nacreux, cieux de braises."
  "Echouages hideux au fond des golfes bruns"
  "Où les serpents géants dévorés des punaises"
  "Choient des arbres tordus, avec de noirs parfums."

  "J’aurais voulu montrer aux enfants ces dorades"
  "Du flot bleu, ces poissons d’or, ces poissons chantants."
  "Des écumes de fleurs ont béni mes dérades"
  "Et d’ineffables vents m’ont ailé par instants."

  "Parfois, martyr lassé des pôles et des zones,"
  "La mer dont le sanglot faisait mon roulis doux"
  "Montait vers moi ses fleurs d’ombre aux ventouses jaunes"
  "Et je restais, ainsi qu’une femme à genoux,"

  "Presqu’île, ballottant sur mes bords les querelles"
  "Et les fientes d’oiseaux clabaudeurs aux yeux blonds," " "
  "Et je voguais, lorsqu’à travers mes liens frêles"
  "Des noyés descendaient dormir, à reculons." " "
}

textEighteen = \lyricmode {
  "Or moi, bateau perdu sous les cheveux des anses,"
  "Jeté par l’ouragan dans l’éther sans oiseau,"
} textEighteenAndAHalf = \lyricmode {
  "Moi dont les Monitors et les voiliers des Hanses"
  "N’auraient pas repêché la carcasse ivre d’eau,"
} textNineteen = \lyricmode {
  "Libre, fumant, monté de brumes violettes,"
  "Moi qui trouais le ciel rougeoyant comme un mur"
} textNineteenAndAHalf = \lyricmode {
  "Qui porte, confiture exquise aux bons poètes,"
  "Des lichens de soleil et des morves d’azur,"
} textTwenty = \lyricmode {
  "Qui courais taché de lunules électriques,"
  "Plante folle, escorté des hippocampes noirs,"
} textTwentyAndAHalf = \lyricmode {
  "Quand les Juillets faisaient crouler à coups de triques"
  "Les cieux ultramarins aux ardents entonnoirs,"
} textTwentyOne = \lyricmode {
  "Moi qui tremblais, sentant geindre à cinquante lieues"
  "Le rut des Béhémots et les Maelstroms épais,"
} textTwentyOneAndAHalf = \lyricmode {
  "Fileur éternel des immobilités bleues,"
  "Je regrette l’Europe aux anciens parapets." " "
}

textTwentyTwoTwentyThreeTwentyFourTwentyFive = \lyricmode {
  "J’ai vu des archipels sidéraux ! Et des îles"
  "Dont les cieux délirants sont ouverts au vogueur :"
  "— Est-ce en ces nuits sans fonds que tu dors et t’exiles,"
  "Million d’oiseaux d’or, ô future Vigueur ?"

  "Mais, vrai, j’ai trop pleuré ! Les aubes sont navrantes,"
  "Toute lune est atroce et tout soleil amer."
  "L’âcre amour m’a gonflé de torpeurs enivrantes."
  "Oh ! que ma quille éclate ! Oh ! que j’aille à la mer !"

  "Si je désire une eau d’Europe, c’est la flache"
  "Noire et froide où, vers le crépuscule embaumé,"
  "Un enfant accroupi, plein de tristesse, lâche"
  "Un bateau frêle comme un papillon de mai."

  "Je ne puis plus, baigné de vos langueurs, ô lames,"
  "Enlever leur sillage aux porteurs de cotons," " "
  "Ni traverser l’orgueil des drapeaux et des flammes,"
  "Ni nager sous les yeux horribles des pontons !" " "
}

reSept                      = \markup {\hspace #6 {\fret-diagram-terse "o;o;4;5;3;x;"}}
solSeptReBasse              = \markup {\hspace #6 {\fret-diagram-terse "o;x;3;4;3;x;"}}
doNeufReBasse               = \markup {\hspace #6 {\fret-diagram-terse "o;x;2;3;3;x;"}}

solMineurSept               = \markup {\hspace #6 {\fret-diagram-terse "5;x;3-(;3;3-);x;"}}
doSeptNeufDieze             = \markup {\hspace #6 {\fret-diagram-terse "x;3;2;3;4;x;"}}
faQuinteAugm                = \markup {\hspace #6 {\fret-diagram-terse "3;x;x;2;2;o;"}}
siSeptMaj                   = \markup {\hspace #6 {\fret-diagram-terse "x;1;x;2;3;1;"}}
miMinSeptQuinteDimNeufDieze = \markup {\hspace #6 {\fret-diagram-terse "2;x;x;3;3;2;"}}
laSeptNeufBemol             = \markup {\hspace #6 {\fret-diagram-terse "x;o;2;3;2;3;"}}
laBemolSeptQuinteDim        = \markup {\hspace #8 {\fret-diagram-terse "6;x;o;5;7;4;"}}
solNeuf                     = \markup {\hspace #6 {\fret-diagram-terse "5;x;o;4;6;5;"}}

solMinNeuf                  = \markup {\hspace #6 {\fret-diagram-terse "5;x;3-(;3;3-);5;"}}
doSeptNeufDiezeQuinteAugm   = \markup {\hspace #6 {\fret-diagram-terse "x;3;2;3;4-(;4-);"}}
faQuinteAugmBis             = \markup {\hspace #6 {\fret-diagram-terse "3;x;2-(;2;2-);3;"}}
siSeptMajQuinteAugm         = \markup {\hspace #6 {\fret-diagram-terse "x;1;x;2;3;2;"}}
miMinSeptQuinteDimNeufBemol = \markup {\hspace #6 {\fret-diagram-terse "2;1;o;o;3;1;"}}
laSeptSusQuatre             = \markup {\hspace #6 {\fret-diagram-terse "x;o;2;o;3;o;"}}
laSept                      = \markup {\hspace #6 {\fret-diagram-terse "x;o;2;o;2;o;"}}
laBemolSeptQuinteDimNeuf    = \markup {\hspace #8 {\fret-diagram-terse "6;3;4;3;3;x;"}}
solSept                     = \markup {\hspace #6 {\fret-diagram-terse "5;5;3-(;4;3-);x;"}}
doNeuf                      = \markup {\hspace #6 {\fret-diagram-terse "x;3;2;3;3;x;"}}

couplet = \relative d {

  <d a' fis' c' d>1^\reSept
  <d f' b d>2^\solSeptReBasse
  <d e' bes' d>2^\doNeufReBasse
}

refrain = \relative g {

  <g f' bes d>1^\solMineurSept
  <c e bes' dis>1^\doSeptNeufDieze
  <f, a' cis e>1^\faQuinteAugm
  <bes a' d f>1^\siSeptMaj
  <e, bes'' d fis>1^\miMinSeptQuinteDimNeufDieze
  <a e' bes' cis g'>1^\laSeptNeufBemol
  <aes d c'ges'aes>1^\laBemolSeptQuinteDim
  <g d'b'f'a>1^\solNeuf

  <g f' bes d a'>1^\solMinNeuf
  <c e bes' dis aes'>1^\doSeptNeufDiezeQuinteAugm
  <f, e' a cis g' >1^\faQuinteAugmBis
  <bes a' d fis>1^\siSeptMajQuinteAugm
  <e, bes' d g  d' f>1^\miMinSeptQuinteDimNeufBemol
  <a g' d' e>2^\laSeptSusQuatre
  <a g' cis e>2^\laSept
  <aes c ges' bes d >1^\laBemolSeptQuinteDimNeuf
  <g d' f b d >2^\solSept
  <c e bes' d >2^\doNeuf
}

\score {

  \new Staff {
    \set Staff.instrumentName = \markup \center-column {
        "Guitarre"
        { \abs-fontsize #8 \italic "(6ème corde en ré)" }
    }
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    
    <<
      \tempo 4 = 70
      \new Voice = "one" {
        \override Score.RehearsalMark.break-visibility = #end-of-line-visible
        \override Score.RehearsalMark.self-alignment-X = #RIGHT
        \key g \major
        \bar ".|:" 
        \repeat volta 4 \couplet 
        \mark \markup {\tiny  "4x"} 
        \break
        \key d \minor
        \refrain
        \break
        \key g \major
        \bar ".|:" 
        \repeat volta 2 \couplet
        \mark \markup {\tiny  "2x"} 
        \break
        \couplet
        \break
        \bar ".|:" 
        \repeat volta 12 \couplet
        \mark \markup {\tiny  "12x"} 
        \break
        \key d \minor
        \refrain
        \break
        \key g \major
        \pageBreak
        \couplet
        \break
        \bar ".|:" 
        \repeat volta 8 \couplet
        \mark \markup {\tiny  "8x"} 
        \break
        \key d \minor
        \refrain
        \break
        \key g \major
        \repeat unfold 4 < d a d' gis' d'' gis'' >1
      }

      \new Lyrics \lyricsto "one" {
        <<
          \textOne
          \new Lyrics {
            \set associatedVoice = "one"
            \textOneAndAHalf
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textTwo
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textTwoAndAHalf
          }
        >>
        \textThreeFourFiveSix
        <<
          \textSeven

          \new Lyrics {
            \set associatedVoice = "one"
            \textSevenAndAHalf
          }
        >>
        \textSilent
        <<
          \textHeight

          \new Lyrics {
            \set associatedVoice = "one"
            \textHeightndAHalf
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textNine
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textNineAndAHalf
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textTen
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textTenAndAHalf
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textEleven
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textElevenAndAHalf
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textTwelve
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textTwelveAndAHalf
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textThirteen
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textThirteenAndAHalf
          }
        >>
        \textFourteenFifteenSixteenSeventeen
        \textSilent
        <<
          \textEighteen

          \new Lyrics {
            \set associatedVoice = "one"
            \textEighteenAndAHalf
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textNineteen
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textNineteenAndAHalf
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textTwenty
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textTwentyAndAHalf
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textTwentyOne
          }
          \new Lyrics {
            \set associatedVoice = "one"
            \textTwentyOneAndAHalf
          }
        >>
        \textTwentyTwoTwentyThreeTwentyFourTwentyFive
      }

    >>
  }
  \layout {
    \clef treble
    \time 4/4
    \override LyricText.self-alignment-X = #LEFT
    \override Lyrics.LyricText.font-size = #-2
  }
  %{
  \midi {
    \tempo 4 = 70
  }
  %}
}
