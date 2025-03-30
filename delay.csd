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
    iFdback = 0.9                   ; feedback ratio
    aDelay1  init 0                  ; initialize delayed signal
    aDelay2  init 0                  ; initialize delayed signal
    aDelay1  delay aSig + (aDelay1 * iFdback), 10 ; delay 10 seconds
    aDelay2  delay aSig + (aDelay2 * iFdback), 10.5 ; delay 10.5 seconds
    aRing = aDelay1 * aDelay2 ; multiply delayed signals
    out aRing, aRing             ; output to both channels
endin

</CsInstruments>
<CsScore>
i "Loop" 0 1200
</CsScore>
</CsoundSynthesizer>