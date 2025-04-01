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
seed(0)

instr Voice
  iDur = p3 ; Duration (seconds)
  iStartFreq = p4 ; Start frequency
  iAmp = ampdb:i(p5) ; Convert dB to amplitude
  iEndFreq = random:i(20,250) ; Random end frequency (Hz)
  iPan = random:i(0.01,1) ; Random pan
  kGliss = expseg:k(iStartFreq, 240, iStartFreq, (iDur-360), iEndFreq, 120, iEndFreq) ; Pitch envelope
  aOsc = vco2:a(iAmp,kGliss,12) ; Triangle wave oscillator
  aVol = expseg:a(0.01, 20, 1, (iDur-40), .5, 20, 0.01) ; Volume envelope
  aSig = aOsc * aVol
  aFilter = moogladder:a(aSig, 1864.64, 0.2) ; Moog ladder filter
  aSigL = aFilter * sqrt(1-iPan)
  aSigR = aFilter * sqrt(iPan)
  out(aSigL, aSigR)
endin

instr Loop
    iDur = p3 ; Duration (seconds)
    aSig    inch 1                  ; read audio input from channel 1
    iFdback = 0.99                   ; feedback ratio
    aDelay1  init 0                  ; initialize delayed signal
    aDelay2  init 0                  ; initialize delayed signal
    aDelay1  delay aSig + (aDelay1 * iFdback), 10 ; delay 10 seconds
    aDelay2  delay aSig + (aDelay2 * iFdback), 10.13 ; delay 10.13 seconds
    aRing = aDelay1 * aDelay2 ; multiply delayed signals
    aVol = expseg:a(0.01, 20, 1, (iDur-40), 1, 20, 0.01) ; Volume envelope
    aSig = aRing * aVol
    out(aSig, aSig)             ; output to both channels
endin

instr Record ; write to a file (always on in order to record everything)
  aSigL, aSigR monitor                              ; read audio from output bus
  fout "rhizome.wav",4,aSigL,aSigR   ; write audio to file (16bit stereo)
endin

</CsInstruments>
<CsScore>
// Score parameter fields
//p1      p2   p3   p4      p5
; Record performance
i "Record" 0 1200

; Loop instrument
i "Loop" 0 1200

; Synthesizer instrument
i	"Voice"	0	  1200	116.54	-24
i	"Voice"	10	1190	130.81	-24
i	"Voice"	20	1180	233.08	-24
i	"Voice"	30	1170	261.62	-24
i	"Voice"	40	1160	349.62	-24
i	"Voice"	50	1150	392.43	-24
i	"Voice"	60	1140	466.16	-24
i	"Voice"	70	1130	523.24	-24
i	"Voice"	80	1120	699.24	-24
i	"Voice"	90	1110	784.86	-24
i	"Voice"	100	1100	815.78	-24
i	"Voice"	110	1090	915.67	-24
i	"Voice"	120	1080	116.54	-24
i	"Voice"	130	1070	130.81	-24
i	"Voice"	140	1060	233.08	-24
i	"Voice"	150	1050	261.62	-24
i	"Voice"	160	1040	349.62	-24
i	"Voice"	170	1030	392.43	-24
i	"Voice"	180	1020	466.16	-24
i	"Voice"	190	1010	523.24	-24
i	"Voice"	200	1000	699.24	-24
i	"Voice"	210	990	784.86	-24
i	"Voice"	220	980	815.78	-24
i	"Voice"	230	970	915.67	-24
i	"Voice"	240	960	116.54	-24
i	"Voice"	250	950	130.81	-24
i	"Voice"	260	940	233.08	-24
i	"Voice"	270	930	261.62	-24
i	"Voice"	280	920	349.62	-24
i	"Voice"	290	910	392.43	-24
i	"Voice"	300	900	466.16	-24
i	"Voice"	310	890	523.24	-24
i	"Voice"	320	880	699.24	-24
i	"Voice"	330	870	784.86	-24
i	"Voice"	340	860	815.78	-24
i	"Voice"	350	850	915.67	-24
i	"Voice"	360	840	116.54	-24
i	"Voice"	370	830	130.81	-24
i	"Voice"	380	820	233.08	-24
i	"Voice"	390	810	261.62	-24
i	"Voice"	400	800	349.62	-24
i	"Voice"	410	790	392.43	-24
i	"Voice"	420	780	466.16	-24
i	"Voice"	430	770	523.24	-24
i	"Voice"	440	760	699.24	-24
i	"Voice"	450	750	784.86	-24
i	"Voice"	460	740	815.78	-24
i	"Voice"	470	730	915.67	-24
i	"Voice"	480	720	116.54	-24
i	"Voice"	490	710	130.81	-24
i	"Voice"	500	700	233.08	-24
i	"Voice"	510	690	261.62	-24
i	"Voice"	520	680	349.62	-24
i	"Voice"	530	670	392.43	-24
i	"Voice"	540	660	466.16	-24
i	"Voice"	550	650	523.24	-24
i	"Voice"	560	640	699.24	-24
i	"Voice"	570	630	784.86	-24
i	"Voice"	580	620	815.78	-24
i	"Voice"	590	610	915.67	-24
</CsScore>
</CsoundSynthesizer>