<CsoundSynthesizer>
<CsOptions>
-o dac
-i adc
-B 512
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 64
nchnls = 2
0dbfs = 1

instr Distortion
    aSig    inch 1             ; read audio input from channel 1
    aClip = clip(aSig*100, -0.5, 0.5); clip the signal
    out aClip, aClip           ; output the clipped signal to both channels
endin

</CsInstruments>
<CsScore>
i "Distortion" 0 1200
</CsScore>
</CsoundSynthesizer>