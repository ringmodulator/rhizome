<CsoundSynthesizer>
<CsOptions>
-o dac
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
  kGliss = expseg:k(iStartFreq, 120, iStartFreq, (iDur-240), iEndFreq, 120, iEndFreq) ; Pitch envelope
  iPhase = random:i(0,1) ; Random phase
  aOsc = vco2:a(iAmp,kGliss,12,0,iPhase) ; Triangle wave oscillator
  aVol = expseg:a(0.01, 15, 105, 100, 1, 120, 0.15, (iDur-360), 0.25, 110, 1, 10, 0.001) ; Volume envelope
  aSig = aOsc * aVol
  aSigL = aSig * sqrt(1-iPan)
  aSigR = aSig * sqrt(iPan)
  out(aSigL, aSigR)
endin

</CsInstruments>
<CsScore>
// Score parameter fields
//p1        p2   p3    p4       p5
i	"Voice"	0	1200	116.54	-12
i	"Voice"	10	1190	130.81	-12
i	"Voice"	20	1180	233.08	-24
i	"Voice"	30	1170	261.62	-24
i	"Voice"	40	1160	349.62	-24
i	"Voice"	50	1150	392.43	-36
i	"Voice"	60	1140	466.16	-36
i	"Voice"	70	1130	523.24	-36
i	"Voice"	80	1120	699.24	-36
i	"Voice"	90	1110	784.86	-36
i	"Voice"	100	1100	815.78	-36
i	"Voice"	110	1090	915.67	-36
i	"Voice"	120	1080	116.54	-24
i	"Voice"	130	1070	130.81	-24
i	"Voice"	140	1060	233.08	-24
i	"Voice"	150	1050	261.62	-24
i	"Voice"	160	1040	349.62	-24
i	"Voice"	170	1030	392.43	-36
i	"Voice"	180	1020	466.16	-36
i	"Voice"	190	1010	523.24	-36
i	"Voice"	200	1000	699.24	-36
i	"Voice"	210	990	784.86	-36
i	"Voice"	220	980	815.78	-36
i	"Voice"	230	970	915.67	-36
i	"Voice"	240	960	116.54	-24
i	"Voice"	250	950	130.81	-24
i	"Voice"	260	940	233.08	-24
i	"Voice"	270	930	261.62	-24
i	"Voice"	280	920	349.62	-24
i	"Voice"	290	910	392.43	-36
i	"Voice"	300	900	466.16	-36
i	"Voice"	310	890	523.24	-36
i	"Voice"	320	880	699.24	-36
i	"Voice"	330	870	784.86	-36
i	"Voice"	340	860	815.78	-36
i	"Voice"	350	850	915.67	-36
i	"Voice"	360	840	116.54	-24
i	"Voice"	370	830	130.81	-24
i	"Voice"	380	820	233.08	-24
i	"Voice"	390	810	261.62	-24
i	"Voice"	400	800	349.62	-24
i	"Voice"	410	790	392.43	-36
i	"Voice"	420	780	466.16	-36
i	"Voice"	430	770	523.24	-36
i	"Voice"	440	760	699.24	-36
i	"Voice"	450	750	784.86	-36
i	"Voice"	460	740	815.78	-36
i	"Voice"	470	730	915.67	-36
i	"Voice"	480	720	116.54	-24
i	"Voice"	490	710	130.81	-24
i	"Voice"	500	700	233.08	-24
i	"Voice"	510	690	261.62	-24
i	"Voice"	520	680	349.62	-24
i	"Voice"	530	670	392.43	-36
i	"Voice"	540	660	466.16	-36
i	"Voice"	550	650	523.24	-36
i	"Voice"	560	640	699.24	-36
i	"Voice"	570	630	784.86	-36
i	"Voice"	580	620	815.78	-36
i	"Voice"	590	610	915.67	-36
i	"Voice"	600	600	116.54	-24
i	"Voice"	610	590	130.81	-24
i	"Voice"	620	580	233.08	-24
i	"Voice"	630	570	261.62	-24
i	"Voice"	640	560	349.62	-24
i	"Voice"	650	550	392.43	-36
i	"Voice"	660	540	466.16	-36
i	"Voice"	670	530	523.24	-36
i	"Voice"	680	520	699.24	-36
i	"Voice"	690	510	784.86	-36
i	"Voice"	700	500	815.78	-36
i	"Voice"	710	490	915.67	-36
i	"Voice"	720	480	116.54	-24
i	"Voice"	730	470	130.81	-24
i	"Voice"	740	460	233.08	-24
i	"Voice"	750	450	261.62	-24
i	"Voice"	760	440	349.62	-24
i	"Voice"	770	430	392.43	-36
i	"Voice"	780	420	466.16	-36
i	"Voice"	790	410	523.24	-36
i	"Voice"	800	400	699.24	-36
i	"Voice"	810	390	784.86	-36
i	"Voice"	820	380	815.78	-36
i	"Voice"	830	370	915.67	-36
i	"Voice"	840	360	116.54	-24
i	"Voice"	850	350	130.81	-24
i	"Voice"	860	340	233.08	-24
i	"Voice"	870	330	261.62	-24
i	"Voice"	880	320	349.62	-24
i	"Voice"	890	310	392.43	-36
i	"Voice"	900	300	466.16	-36
i	"Voice"	910	290	523.24	-36
i	"Voice"	920	280	699.24	-36
i	"Voice"	930	270	784.86	-36
i	"Voice"	940	260	815.78	-36
i	"Voice"	950	250	915.67	-36
</CsScore>
</CsoundSynthesizer>