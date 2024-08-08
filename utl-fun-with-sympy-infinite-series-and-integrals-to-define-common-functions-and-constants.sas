%let pgm=utl-fun-with-sympy-infinite-series-and-integrals-to-define-common-functions-and-constants;

Fun with sympy infinite series and integrals to define common functions and constants

github
https://tinyurl.com/ytnv4jk7
https://github.com/rogerjdeangelis/utl-fun-with-sympy-infinite-series-and-integrals-to-define-common-functions-and-constants

Sympy repos on end

You should use google to check these results.

These formulations are fundamental.

FYI Talor Series can aid in creating new functions by substitutions, ading and subtracting series.

Also you can prove and formulate many identities.

  -sin(x) = sin(-x)
   cos(x) = cos(-x)

    ix
   e   = cos(x) + isin(x)
                                x
   Just substitute ix into the e  and you will see all the real sin(x) and cos(x) terms.
    2
   i  =  -1

/*_  __       _   _       _____
|  \/  | __ _| |_| |__   |  ___|   _ _ __
| |\/| |/ _` | __| `_ \  | |_ | | | | `_ \
| |  | | (_| | |_| | | | |  _|| |_| | | | |
|_|  |_|\__,_|\__|_| |_| |_|   \__,_|_| |_|

*/

/**************************************************************************************************************************/
/*                _               _                  _   _                                                                */
/*  ___  ___ _ __(_) ___  ___   / _|_   _ _ __   ___| |_(_) ___  _ __  ___                                                */
/* / __|/ _ \ `__| |/ _ \/ __| | |_| | | | `_ \ / __| __| |/ _ \| `_ \/ __|                                               */
/* \__ \  __/ |  | |  __/\__ \ |  _| |_| | | | | (__| |_| | (_) | | | \__ \                                               */
/* |___/\___|_|  |_|\___||___/ |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/                                               */
/*                                                                                                                        */
/*------------------------------------------------------------------------------------------------------------------------*/
/*                                                                 |                                                      */
/* EXPONENTIAL FUNCTION                                            |                                                      */
/* ====================                                            |             oo                                       */
/*                                                                 |         ____                                         */
/* %utl_pybegin;                                                   |         \   `                                        */
/* parmcards4;                                                     |          \     n                                     */
/* from sympy import symbols, summation, factorial, \              |   x       \   x                                      */
/*   oo, pprint, exp, sin, cos, log, series                        |  e   =    /   --                                     */
/* x = symbols('x')                                                |          /    n!                                     */
/* n = symbols('n', integer=True, positive=True)                   |         /___,                                        */
/* e_series = summation(x**n/factorial(n), (x, 0, oo))             |         x = 0                                        */
/* pprint(e_series)                                                |                                                      */
/* ;;;;                                                            |                 2   3   4    5    6    7             */
/* %utl_pyend;                                                     |   x            x   x   x    x    x    x      / 8 \   */
/*                                                                 |  e   = 1 + x + -- +-- +-- +--- +--- +---- + O\x  /   */
/*                                                                 |                2   6   24  120  720  5040            */
/*                                                                 |                                                      */
/*-----------------------------------------------------------------|------------------------------------------------------*/
/*                                                                 |                                                      */
/* TRIGOMETRIC SINE FUNCTION                                       |                                                      */
/* =========================                                       |                                                      */
/*                                                                 |                                                      */
/* %utl_pybegin;                                                   |                 3     5     7       9                */
/* parmcards4;                                                     |                x     x     x       x       / 10\     */
/* from sympy import symbols, summation, factorial, \              |  sin(x) =  x - -- + --- - ---- + ------ + O\x  /     */
/*   oo, pprint, exp, sin, cos, log, series                        |                6    120   5040   362880              */
/* x= symbols('x')                                                 |                                                      */
/* n = symbols('n')                                                |                                                      */
/* sin_series = series(sin(x), x, 0, 10)                           |                                                      */
/* pprint(sin_series)                                              |                                                      */
/* ;;;;                                                            |                                                      */
/* %utl_pyend;                                                     |                                                      */
/*                                                                 |                                                      */
/*-----------------------------------------------------------------|------------------------------------------------------*/
/*                                                                 |                                                      */
/* TRIGOMETRIC COSINE FUNCTION                                     |                                                      */
/* ===========================                                     |                                                      */
/*                                                                 |                 2    4     6      8                  */
/*  %utl_pybegin;                                                  |                x    x     x      x      / 10\        */
/*  parmcards4;                                                    |  cos(x) =  1 - -- + -- - --- + ----- + O\x  /        */
/*  from sympy import symbols, summation, factorial, \             |                2    24   720   40320                 */
/*    oo, pprint, exp, sin, cos, log, series                       |                                                      */
/*  x= symbols('x')                                                |                                                      */
/*  n = symbols('n')                                               |                                                      */
/*  cos_series = series(cos(x), x, 0, 10)                          |                                                      */
/*  pprint(cos_series)                                             |                                                      */
/*  ;;;;                                                           |                                                      */
/*  %utl_pyend;                                                    |                                                      */
/*                                                                 |                                                      */
/*                   2    4     6      8                           |                                                      */
/*                  x    x     x      x      / 10\                 |                                                      */
/*    cos(x) =  1 - -- + -- - --- + ----- + O\x  /                 |                                                      */
/*                  2    24   720   40320                          |                                                      */
/*                                                                 |                                                      */
/*-----------------------------------------------------------------|------------------------------------------------------*/
/*                                                                 |                                                      */
/* TRIGOMETRIC TANGENT FUNCTION                                    |                                                      */
/* ============================                                    |                                                      */
/*                                                                 |                                                      */
/* %utl_pybegin;                                                   |                                                      */
/* parmcards4;                                                     |                3      5       7       9              */
/* from sympy import symbols, summation, factorial, \              |               x    2*x    17*x    62*x     / 10\     */
/*   oo, pprint, exp, sin, tan, cos, log, series                   | tan(x) =  x + -- + ---- + ----- + ----- + O\x  /     */
/* x= symbols('x')                                                 |               3     15     315     2835              */
/* n = symbols('n')                                                |                                                      */
/* tan_series = series(tan(x), x, 0, 10)                           |                                                      */
/* pprint(tan_series)                                              |                                                      */
/* ;;;;                                                            |                                                      */
/* %utl_pyend;                                                     |                                                      */
/*                                                                 |                                                      */
/*-----------------------------------------------------------------|------------------------------------------------------*/
/*                                                                 |                                                      */
/* NATURAL LOG OF X                                                |                                                      */
/* =================                                               |                                                      */
/*                                                                 |                                                      */
/* %utl_pybegin;                                                   |                                                      */
/* parmcards4;                                                     |                2    3    4    5    6    7            */
/* from sympy import symbols, summation, factorial, \              |               x    x    x    x    x    x     / 8\    */
/*   oo, pprint, exp, sin, cos, log, series                        | log(1+x)= x - -- + -- - -- + -- - -- + -- + O\x  /   */
/* x= symbols('x')                                                 |               2    3    4    5    6    7             */
/* n = symbols('n')                                                | over (-1,1)                                          */
/* log_series = series(log(1+x), x, 0, 10)                         |                                                      */
/* pprint(log_series)                                              |                                                      */
/* ;;;;                                                            |                                                      */
/* %utl_pyend;                                                     |                                                      */
/*                                                                 |                                                      */
/*-----------------------------------------------------------------|------------------------------------------------------*/
/*                                                                 |                                                      */
/*  NATURAL LOG OF 3                                               |                                                      */
/*                                                                 |                                                      */
/*  %utl_pybegin;                                                  |            oo                                        */
/*  parmcards4;                                                    |           ____                                       */
/*  from sympy import symbols, Sum, oo, log, pprint                |           \   `                                      */
/*  n = symbols('n')                                               |            \        n + 1                            */
/*  alternating_harmonic = Sum((-1)**(n+1) / n, (n, 1, oo))        |             \   (-1)                                 */
/*  pprint(alternating_harmonic)                                   |  log(2) =   /   ---------                            */
/*  print(alternating_harmonic.doit())                             |            /       n                                 */
/*  ;;;;                                                           |           /___,                                      */
/*  %utl_pyend;                                                    |           n = 1                                      */
/*                                                                 |                                                      */
/*-----------------------------------------------------------------|------------------------------------------------------*/
/*                                                                 |                                                      */
/*  FOURIER PERIODIC SQUARE WAVE                                   |                                                      */
/*  ============================                                   |                                                      */
/*                                                                 |                                                      */
/*  Sine and cosines form periodic othogonal functions             |                                                      */
/*  so they are |easy to fit (no colinearity)                      |                                                      */
/*                                                                 |                                                      */
/*  options ls=256 ;                                               |                                                      */
/*  %utl_pybegin;                                                  |       Periodic Square Waves                          */
/*  parmcards4;                                                    |                                                      */
/*  import sympy as sp                                             |      +-------------------------------+               */
/*  from sympy import symbols, summation, factorial, \             |      | sines form othogonal series   |               */
/*    oo, pprint, exp, sin, tan, cos, log, series                  |      |         oo                    |               */
/*  # Define symbols                                               |      |       ____                    |               */
/*  t = sp.Symbol('t')                                             |      |       \   `                   |               */
/*  n = sp.Symbol('n', integer=True, positive=True)                |      |        \       /t*(4*n - 2)\  |               */
/*                                                                 |      |         \   sin|-----------|  |               */
/*  # Define the period and amplitude                              |      | y = 4 *  )     \     2     /  |               */
/*  T = 2 * sp.pi  # Period                                        |      |         /   ----------------  |               */
/*  A = 1  # Amplitude                                             |      |        /        2*n - 1       |               */
/*                                                                 |      |       /___,                   |               */
/*  # Define the Fourier series for a square wave                  |      |       n = 1                   |               */
/*  fourier_series=4*A/sp.pi*sp.Sum(sp.sin((2*n-1)* \              |     ------------------------  |                      */
/*     2*sp.pi*t / T) / (2*n - 1), (n, 1, sp.oo))                  |      |                pi             |               */
/*                                                                 |      |                               |               */
/*  # Simplify the expression                                      |      +-+------+------+------+------+-+               */
/*  fourier_series = fourier_series.doit()                         |      |  0     pi     2pi    3pi   4pi|               */
/*  print(fourier_series)                                          |  1.5 +               t               + 1.5           */
/*  pprint(fourier_series)                                         |      |                               |               */
/*  ;;;;                                                           |  1.0   +------+      +------+        + 1.0           */
/*  %utl_pyend;                                                    |      | |      |      |      |        |               */
/*                                                                 |  0.5 + |      |      |      |        + 0.5           */
/*                                                                 |      | |      |      |      |        |               */
/*  data square;                                                   |  0.0 + |      |      |      |        + 0.0           */
/*                                                                 |      | |      |      |      |        |               */
/*   retain seriessum 0;                                           |  0.5 + |      |      |      |        + 0.5           */
/*                                                                 |      | |      |      |      |        |               */
/*   pi=constant('pi');                                            |  1.0 +-+      +------+      +-----+  + 1.0           */
/*   pi2=pi*2;                                                     |  1.5 +                               + 1.5           */
/*   pi3=pi*3;                                                     |      |                               |               */
/*   pi4=pi*4;                                                     |      --+------+------+------+------+--               */
/*                                                                 |        0     pi     2pi    3pi    4pi                */
/*   do t=0.02 to 4*pi by .01;                                     |                     t                                */
/*      do n = 1 to 4000;                                          |                                                      */
/*        seriessum=seriessum+4*sin(t*(4*n-2)/2)/(2*n-1)/pi;       |                                                      */
/*      end;                                                       |                                                      */
/*      output;                                                    |                                                      */
/*      seriessum=0;                                               |                                                      */
/*   end;                                                          |                                                      */
/*                                                                 |                                                      */
/*  run;quit;                                                      |                                                      */
/*                                                                 |                                                      */
/*  options ls=64 ps=24;                                           |                                                      */
/*  proc plot data=square(rename=                                  |                                                      */
/*    seriessum=y123456789012345678901234567890);                  |                                                      */
/*    plot y123456789012345678901234567890*t='-'                   |                                                      */
/*     / box vaxis=-1.5 to 1.5 by .5                               |                                                      */
/*     href=3.14 6.26 9.42  haxis=0 3.14 6.26 9.42 12.56;          |                                                      */
/*  run;quit;                                                      |                                                      */
/*                                                                 |                                                      */
/*-----------------------------------------------------------------|------------------------------------------------------*/
/*                      _              _                           |                                                      */
/*   ___ ___  _ __  ___| |_ __ _ _ __ | |_ ___                     |                                                      */
/*  / __/ _ \| `_ \/ __| __/ _` | `_ \| __/ __|                    |                                                      */
/* | (_| (_) | | | \__ \ || (_| | | | | |_\__ \                    |                                                      */
/*  \___\___/|_| |_|___/\__\__,_|_| |_|\__|___/                    |                                                      */
/*        _                                                        |                                                      */
/*  _ __ (_)                                                       |                                                      */
/* | `_ \| |                                                       |            1                                         */
/* | |_) | |                                                       |           /                                          */
/* | .__/|_|                                                       |          /                                           */
/* |_|                                                             |         |      4                                     */
/*                                                                 |  pi =   |  ---------- dx                             */
/*  %utl_pybegin;                                                  |         |         2                                  */
/*  parmcards4;                                                    |         |  ( 1 + x  )                                */
/*  import sympy as sp                                             |        /                                             */
/*  from sympy import pprint;                                      |       /                                              */
/*                                                                 |       0                                              */
/*  # Define the variable                                          |                                                      */
/*  x = sp.symbols('x')                                            |                 /                                    */
/*                                                                 |                /                                     */
/*  # Define the function to integrate                             |               |      4                               */
/*  f = 4 / (1 + x**2)                                             |  atan(x)  =   |  ---------- dx                       */
/*  pprint(f)                                                      |               |         2                            */
/*  integralf = sp.integrate(f,x)                                  |               |  ( 1 + x  )                          */
/*  pprint(integralf)                                              |              /                                       */
/*  print("Radians where arc tangent = 1 = 3.1415926536")          |             /                                        */
/*  # Compute the definite integral from 0 to                      |                                                      */
/*  integral_result = sp.integrate(f, (x, 0, 1))                   |  Using the definition of atan                        */
/*  # Display the result                                           |  4*atan(1) - 4*atan(0) = 4*atan(1) = 4 * pi/2 =pi    */
/*  print(integral_result)                                         |                                                      */
/*  ;;;;                                                           |  We know the number of radians defined by            */
/*  %utl_pyend;                                                    |                                                      */
/*                                                                 |  atan(1) is pi/2                                     */
/*                                                                 |                                                      */
/*                                                                 |  therefore 4 * atan(1) = pi                          */
/*                                                                 |                                                      */
/*                                                                 |                                                      */
/*-----------------------------------------------------------------|------------------------------------------------------*/
/*            _                                _              _    |                                                      */
/*  ___ _   _| | ___ _ __   ___ ___  _ __  ___| |_ __ _ _ __ | |   |                                                      */
/* / _ \ | | | |/ _ \ `__| / __/ _ \| `_ \/ __| __/ _` | `_ \| __| |                                                      */
/*|  __/ |_| | |  __/ |   | (_| (_) | | | \__ \ || (_| | | | | |_  |                                                      */
/* \___|\__,_|_|\___|_|    \___\___/|_| |_|___/\__\__,_|_| |_|\__| |                                                      */
/*                                                                 |                                                      */
/* %utl_pybegin;                                                   |                                                      */
/* parmcards4;                                                     |            oo                                        */
/* import sympy as sp                                              |           |         n                                */
/* from sympy import symbols, integrate, exp, \                    |           |  /    1\                                 */
/*   sqrt, pi, Eq, solve, pprint, oo, simplify, limit              |  e = limit|  |1 + -|                                 */
/*                                                                 |           |  \    n/                                 */
/* # Define the variable                                           |            n                                         */
/* n = sp.Symbol('n', integer=True, positive=True)                 |                                                      */
/*                                                                 |  Euler Constant exp(1)  e = 2.7178289198743233       */
/* # Define the function to integrate                              |           1                                          */
/*                                                                 |  same as e  =exp(1)                                  */
/* expr= (1 + 1/n)**n                                              |                                                      */
/* pprint(expr);                                                   |                                                      */
/* limit_expr = limit(expr, n, oo)                                 |                                                      */
/* pprint(limit_expr)                                              |                                                      */
/* n=300                                                           |                                                      */
/* eapprox=(1+1/3000)**3000                                        |                                                      */
/* print("Euler Constant exp(1) " + " e=" + str(eapprox))          |                                                      */
/* ;;;;                                                            |                                                      */
/* %utl_pyend;                                                     |                                                      */
/*                                                                 |                                                      */
/**************************************************************************************************************************/

/*
 _ __ ___ _ __   ___  ___
| `__/ _ \ `_ \ / _ \/ __|
| | |  __/ |_) | (_) \__ \
|_|  \___| .__/ \___/|___/
         |_|
*/
REPO
-----------------------------------------------------------------------------------------------------------------------------------
https://github.com/rogerjdeangelis/utl-calculating-the-cube-root-of-minus-one-with-drop-down-to-python-symbolic-math-sympy
https://github.com/rogerjdeangelis/utl-distance-between-a-point-and-curve-in-sql-and-wps-pythony-r-sympy
https://github.com/rogerjdeangelis/utl-maximum-liklihood-regresssion-wps-python-sympy
https://github.com/rogerjdeangelis/utl-python-sympy-projection-of-the-intersection-of-two-parabolic-surfaces-onto-the-xy-plane-AI
https://github.com/rogerjdeangelis/utl-r-python-compute-the-area-between-two-curves-AI-sympy-trapezoid
https://github.com/rogerjdeangelis/utl-solve-a-system-of-simutaneous-equations-r-python-sympy
https://github.com/rogerjdeangelis/utl-symbolic-algebraic-simplification-of-a-polynomial-expressions-sympy
https://github.com/rogerjdeangelis/utl-sympy-technique-for-symbolic-integration-of-bivariate-density-function


/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
