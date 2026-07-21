/* Fourier partial-sum approximation of a periodic square wave.

   Extracted verbatim from the author's SAS block in
   utl-fun-with-sympy-infinite-series-and-integrals-to-define-common-functions-and-constants.sas
   (the "FOURIER PERIODIC SQUARE WAVE" section). A DATA step accumulates the
   odd-harmonic sine series  y = (4/pi) * SUM sin(t*(4n-2)/2)/(2n-1)  over t,
   then PROC PLOT renders the resulting square wave. */

data square;

  retain seriessum 0;

  pi=constant('pi');
  pi2=pi*2;
  pi3=pi*3;
  pi4=pi*4;

  do t=0.02 to 4*pi by .01;
     do n = 1 to 4000;
       seriessum=seriessum+4*sin(t*(4*n-2)/2)/(2*n-1)/pi;
     end;
     output;
     seriessum=0;
  end;

run;quit;

options ls=64 ps=24;
proc plot data=square(rename=
  seriessum=y123456789012345678901234567890);
  plot y123456789012345678901234567890*t='-'
   / box vaxis=-1.5 to 1.5 by .5
   href=3.14 6.26 9.42  haxis=0 3.14 6.26 9.42 12.56;
run;quit;
