<CsoundSynthesizer>
<CsOptions>
-odac
-idac
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 64
nchnls = 2
0dbfs = 1

instr Loop
kEnv    loopseg  0.5,0,0,0,0.0005,1,0.1,0,1.9,0,0
kCps    randomh  400, 600, 0.5
aSig    poscil   a(kEnv), kCps

iFdback =        0.7           ; feedback ratio
aDelay  init     0             ; initialize delayed signal
aDelay  delay    aSig+(aDelay*iFdback), 10 ;delay 10 seconds

aOut    =        aSig + (aDelay*0.4)
        out      aOut/2, aOut/2
  endin

</CsInstruments>
<CsScore>
i "Loop" 0 25
</CsScore>
</CsoundSynthesizer>
;example by Iain McCurdy and joachim heintz