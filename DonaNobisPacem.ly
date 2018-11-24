\header {
  title = "Dona Nobis Pacem"
  subtitle = "3-part"
  composer = "Anonymous"
  % Do not display the default LilyPond footer for this book
  tagline = ##f  
}

\paper {
  #(set-paper-size "letter")
  ragged-bottom = ##t
}

flute = \relative \repeat volta 2 {
    g'8(^"1." d) b'2
    a8( d,) c'2
    b4( a) g
    g fis2
    e'4 d8( c) b( a)
    d4.( c8) b4
    \break
    b8( a) g4 fis
    g2.\fermata
    d'2.^"2."
    d2.
    d4( c) b
    b a2
    \break
    e'4 e2
    d4 e2
    d8( c) b4( a--)
    b2.\fermata
    g2.^"3."
    fis2.
    \break
    g4. a8( b c)
    d4 d,2
    c'4 c2
    b4 b2
    fis8( a) d4\upbow d,4--\upbow
    g2.\fermata
}

cello = \relative {
    { \transpose c c,, \flute }
 }

\bookpart {

\score {
\new StaffGroup <<
  \new Staff
  \with {
    instrumentName = #"Flute"
  }
  {
    \tempo Adagio
    \clef treble
    \key g \major
    \time 3/4
    \flute
  }
  \new Staff
  \with {
    instrumentName = #"Cello"
  }
  {
    \clef bass
    \key g \major  
    \cello
  }
>>
  \layout {}
  \midi {}
}

}

\bookpart {

\header {
  title = "Dona Nobis Pacem"
  subtitle = "3-part (Flute)"
}

\score {
  \new Staff
  \with {
    instrumentName = #"Flute"
  }
  {
    \tempo Adagio
    \clef treble
    \key g \major
    \time 3/4
    \flute
  }
}

}

\bookpart {

\header {
  title = "Dona Nobis Pacem"
  subtitle = "3-part (Cello)"
}

\score {
\new Staff
  \with {
    instrumentName = #"Cello"
  }
  {
    \tempo Adagio
    \clef bass
    \key g \major
    \time 3/4
    \cello
  }
}

}