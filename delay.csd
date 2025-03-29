<CsoundSynthesizer>
<CsOptions>
-o dac
-i adc
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 64
nchnls = 2
0dbfs = 1

instr Loop
    aSig    inch 1                  ; read audio input from channel 1
    iFdback = 0.7                   ; feedback ratio
    aDelay  init 0                  ; initialize delayed signal
    aDelay  delay aSig + (aDelay * iFdback), 10 ; delay 10 seconds
    aOut    = aSig + (aDelay * 0.4) ; mix original and delayed signal
    out aOut/2, aOut/2              ; output to both channels
endin

</CsInstruments>
<CsScore>
i "Loop" 0 1200
</CsScore>
</CsoundSynthesizer>