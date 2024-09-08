bigBreathe = {
  \once
  \override BreathingSign.font-size = #-2
  \once
  \override BreathingSign.text=\markup { \musicglyph "scripts.upbow" }
  \breathe
}


sem = \markup { \halign #-1 \italic "sempre" }
pesante = \markup { \translate #'(3 . 1) \halign #-1 \italic "pesante" }
rall = \markup { \halign #-1 \italic "rall." }

semmfMarkup = \markup { \halign #-1 \italic "sempre" \dynamic "mf" }
semfMarkup = \markup { \halign #-1 \italic "sempre" \dynamic "f" }
moltoCresc = \markup {\italic "molto cresc." }
pesanteF = \markup {\italic "pesante" \dynamic "f"}
port =\markup { \italic "port." }

lyric_transcription = {
\override LyricText.font-shape = #'italic
\override LyricText.font-size = #'0.3
}

global = {
  \time 4/4
  \key g \major
  % \tempo 4=72
  \autoBeamOff
   #(set-accidental-style 'modern-cautionary)
  % \set Staff.printKeyCancellation = ##f
  % \set Staff. explicitKeySignatureVisibility = ##(#f #t #t)
  \override Score.BreakAlignment.break-align-orders=
  #(vector '(
             left-edge
             staff-ellipsis
             cue-end-clef
             ambitus
             breathing-sign
             signum-repetitionis
             clef
             cue-clef
             key-cancellation
             staff-bar
             key-signature
             time-signature
             custos)
           '(left-edge
                  staff-ellipsis
                  cue-end-clef
                  ambitus
                  breathing-sign
                  signum-repetitionis
                  clef
                  cue-clef
                  key-cancellation
                  staff-bar
                  key-signature
                  time-signature
                  custos)
           '(
             left-edge
             staff-ellipsis
             ambitus
             breathing-sign
             signum-repetitionis
             clef
             key-cancellation
             key-signature
             time-signature
             staff-bar
             cue-clef
             custos))
  
}
