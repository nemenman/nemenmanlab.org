---
title: "Lecture 20"
group: "physics-434-2012"
wiki_title: "Physics 434, 2012: Lecture 20"
order: 190
---

This is our short introduction to dynamical systems, as used in the analysis of biological circuits.

## Warmup question

In the previous lectures we discussed transduction of information through biochemical pathways. However, information should not only be transduced, but also computed on, and relevant bits need to be extracted. A common situation when a binary choice needs to be made: should a cell differentiate, or not, for example? Another example of relevance to our university is the lambda-phage infection of *E. coli* cell, which results in lysis or lysogeny randomly, to the first approximation. Can we think of a way how a cell is able to make a binary choice, that is, to threshold its input?

## Main lecture

1.  We can think of high Hill coefficient curves $\frac{d[P]}{dt}=\frac{V[S]^n}{1+(S/K_M)^n}$ for thresholding. But even for high $n$ there would still be a situation when a cell is uncommitted (around the inflection point). In addition, a cell would easily switch back and forth between on and off states when the signal fluctuates.
2.  We can consider a deterministic dynamics (replacing $[P]$ with X) $\frac{dX}{dt}=C+\frac{VX^2}{1+(X/K_M)^2} -rX= \Gamma_{\rm activation}(X)-\Gamma_{\rm deactivation}(X)=F(X)$.
    - Plotting $\Gamma_a(X)$ vs $X$ and $\Gamma_d(X)$ vs $X$, we see that these curves cross in either one or three points depending on the parameters.
    - In these crossing points, the production and the degradation of the molecule are the same, so these are steady states.
    - If they cross in one point, the point is stable, in that any deviation of X from this point $X\to X+\delta X$ will lead the system back to the same point.
    - If there are three crossing points, the low and the high ones are stable, and the mid point is unstable -- any deviation will lead away from it to the stable points. This is called bistability (more generally, multistability).
3.  We can illustrate the dynamics quantitatively in the [phase space portrait](http://en.wikipedia.org/wiki/Phase_portrait), or phase portrait, of this system. To construct the phase portrait, we notice that the state of the system is determined by 1d variable $X$ only. So for every point in this state space (the phase space), we plot a vector that is given by the $F(X)$. The arrow will be pointing towards the stable steady states and away from the unstable ones.
4.  By changing parameters of the system, for example $r$ we can go from the system having one, then three, then back one steady states. This allows us to draw the phase diagram of the system, where the axes of the plot represent the parameters we care about, and we draw boundaries between different phases of the system, such as having one low steady state, one high steady state, or three states. We have plotted various such phase diagrams in class
    - Phase diagram for changing C at fixed V and large r.
    - Phase diagram for changing C and r at other parameters fixed.
5.  We can, therefore, design a system that will threshold a signal, if, for example we use signal as a constituitive expression rate of $X$, that is $\frac{dX}{dt}=[S]+\frac{VX^2}{1+(X/K_M)^2} -rX$.
    - For appropriate $V, r, K_M$, small \[S\] will result in small activation of X, and large \[S\] will result in large \[X\], but the transition will be essentially digital.
6.  We can understand this dynamics by trying to solve the equation $dX/dt=0$, and noting that it has a cubic structure. Then as we change \[S\], the cubic parabola crosses zero at one point, and then it touches the horizontal axis, the touch point splits into two crossings, eventually the middle crossing merges with the first zero, and the two disappear, leaving just one new zero in the system.
    - Points in the phase space when new steady state solutions emerge or disappear are called bifurcation points, and different types of bifurcations are studied in dynamical systems theory.
7.  We can plot the value of steady state X's vs \[S\], and we will get a curve similar to Fig 2 in Dreisigmeyer et al, 2008: at high \[S\] there's only one high steady state, then there's a bistable range, and finally at small \[S\] only small X steady state exists.
    - The system exhibits hysteresis -- where the current choice of the stable steady state in the bistable region depends on history. This is mathematically the same hysteresis that we learned about when studying magnets.
8.  How do we understand if a certain steady state point $X_{\rm ss}$ is stable or not? We assume that the system starts near this point and calculate if a small deviation from the point will result in going back to it, or away. That is, as we used to do before,
    - Find the steady state $X_{\rm ss}$
    - For $X=X_{\rm ss}+\delta X$, we calculate $\frac{d\delta X}{dt}=\left. \frac{dF}{dX}\right|_{X_{\rm ss}}\delta X\equiv -k_{xx}\delta X$
    - If $k_{xx}>0$ the point is stable, and unstable if $k_{\rm xx}<0$. For $k_{\rm xx}=0$ higher order analysis is needed.
9.  Note that this bistability that we have been discussing is a direct result of *positive feedback*.
10. Note also that we can say a lot about the systems dynamics by *qualitative analysis* only -- don't need to actually solve the equations.
11. This approach is not limited to systems where the state space is 1-dimensional. Same story holds when the state space is 2 or more dimensional.
    - Following Eqs 2 in the article by Dreisigmeyer et al, 2008, we can write the dynamics of the *E. coli lac* operon induction in the phase space of the internal lactose concentration $\ell$ and $lacY=Y$ expression.
    - The curve $d\ell/dt=0$ is the curve where $\ell$ cannot change. Similarly $d Y/dt=0$ says where Y cannot change. Crossing points of these curves (could be anywhere from one crossing to seven, and, in general, even more) are the fixed points. Some are stable some are not.
    - We can plot the vector of velocities of the system dynamics $\left(\frac{d\ell}{dt},\frac{dY}{dt}\right)$ at every $(\ell,Y)$ point, and this will describe the flow of the system.
    - We can even verify our derivations for consistency -- not every arrangement of stable and unstable points is possible: two stable points must be separated by a separatrix that determines their basins of attraction.
    - The most apparent difference from 1d is the emergence of saddle points -- which are stable in some directions, but not others.
12. Once systems become more than 1d, other arrangements but fixed points are possible. One may have oscillations as well. Consider a system of two interacting genes: $\begin{array}{l}\frac{dX}{dt}=C_X+\frac{V_X}{1+(Y/K_Y)^2}-rX \\ \frac{dY}{dt}=C_Y +\frac{V_Y X^2}{1+(X/K_X)^2}-rY\end{array}$.
    - The point of zero derivatives are: for X: $X=\left(C_X+\frac{V_X}{1+(Y/K_Y)^2}\right)/r$, and for Y, $Y=\left(C_Y +\frac{V_Y X^2}{1+(X/K_X)^2}\right)/r$.
13. In principle, analysis of each specific system like this one is a new research article, since even such qualitative analysis may get to be quite hard.
