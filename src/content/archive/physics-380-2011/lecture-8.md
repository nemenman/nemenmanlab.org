---
title: "Lecture 8"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Lecture 8"
order: 90
---

Today we are continuing discussion of randomness in biological networks that we started in the previous class. I suggest you read the article by Paulsson (2004) on the main course page and the Wiener process Wikipedia article linked from there. You may also want to read Schneidman et al, 1998, Kepler and Elston, 2001, Pedraza and van Oudenaarden, 2005, and Gillespie, 2007.

#### Warmup question

1.  We have discussed during the last class that noise standard deviation in biochemical networks is roughly proportional to the square root of the number of involved signaling molecules. Let's suppose the cell is producing many copies of LacY/Z proteins per RNA. What determines the coefficient of variation of the number of produced proteins: the average number of proteins, or the average number of RNAs?
2.  (courtesy of Schneidman et al., 2007). A similar question has been considered in neuroscience. Suppose we have a neuron with, a very large number of ion channels. I will tell you a few words about how these channels work in class. But roughly speaking, these channels randomly transition between multiple different open, closed, and inactivated states. In open state, ions go through. In closed state, they don't. In inactive state, the ions don't go through, and switching to open is impossible for a long time. So channels flicker between open and close, and if they stay open long enough, they may switch to inactive, where they will spend a long time. Flux of ions through the channels may shift the bias from closed to open. In addition to channels, there's a weak conductance through the membrane itself, in the direction opposite to the channels. When a large number of channels is open, the voltage growth due to influx of neurons is higher than the loss through the membrane, the voltage grows quickly, and we call this an action potential or a spike. What is the dependence of the time to the next spike on the number of channels in a patch of the neural membrane?

#### Main Lecture

- The easiest way of studying such noise propagation phenomena is using the Langevin or Wiener approach.
- Suppose the variable $n(t)$ undergoes a diffusive motion with the mean drift of $\mu(t)=At$ and the variance of $\sigma^2(t)=B^2 t$. I would like to numerically simulate this stochastic dynamics on time scales $\Delta t$ much larger than the time of a single hop. For this, I write that $n(t+\Delta t)=n(t)+a\,\Delta t+b\,\nu\sqrt{\Delta t}$, where $a,b$ are deterministic numbers, and $\nu$ is a Gaussian random number with zero mean and unit variance. Find a relation between $a, b$ and $A,B$. Now let's take $\Delta t\to0$, move $x(t)$ to the left of the equal sign, and divide everything by $\Delta x$. We will get $\frac{dx}{dt}=a+\eta(t)$, where $a$ is deterministic, and $\eta$ is a random number. $E(\eta)=0$, $E(\eta^2)=\frac{b^2}{\Delta t}$, and $E(\eta(t)\eta(t'))=0$ if $t\neq t'$.
- This is a very interesting differential equation that has a random term of an infinite variance in its right hand side. However, the random terms are independent from one moment of time to the next, and the infinities cancel, leaving only a small random component over long times. As a shorthand, we write such equations as (recall our definition of the $\delta$-function): $\left\{\begin{array}{l}\frac{dx}{dt}=a+\eta(t),\\\langle\eta(t)\eta(t')\rangle=b^2\delta(t-t')\end{array}\right.$. This is called a stochastic differential equation (SDE), and, if $b=1$, then $\eta(t)$ is called the Wiener process. While these definitions might sound confusing, especially with the infinities floating around, they will turn out to be very useful later. To avoid confusion, whenever we see such an SDE, we always interpret it as $x$ obeying a finite difference equation above, $x(t+\Delta t)=x(t)+a\,\Delta t+b\,\nu\sqrt{\Delta t}$.
- The Wiener and the FP representations are the same. For the above FP equation, the following is the Langevin one:

$\frac{dn}{dt}=-rn+\alpha+\sqrt{rn+\alpha}\eta$, $<\eta(t)\eta(t')>=\delta(t-t')$.

- In general, if a chemical species is produced in a reaction $F$ and degraded in a reaction $G$, and all of reactions are independent, we get $\frac{dx}{dt}=F-G+\sqrt{F+G}\eta$, where $\eta$ is the white noise.
- How do we simulate the Langevin formulation? We discuss this in class.
- What happens if reactions are correlated as in the protein-RNA model. Let's suppose that, deterministically$\left\{\begin{array}{l}\frac{dx}{dt}=Ky-r_xx\\\frac{dy}{dt}=\alpha-r_yy\end{array}\right.$, where x is protein, and y is RNA
- Noise in y propagates into x. $\left\{\begin{array}{l}\frac{dx}{dt}=Ky-r_xx+\eta_x\\\frac{dy}{dt}=\alpha-r_y+\eta_y\end{array}\right.$, and $<\eta_y(t') \eta_y(t)>=(\alpha+r_yy)\delta(t-t')$. However, if a single mRNA produces K proteins, on average, then $<\eta_x(t')\eta_x(t)>=(Ky+r_xx)\delta(t-t')$. However, this now depends on y -- and the long term behavior is not that simple, as y will fluctuate itself. The propagation depends on on the strength of the variable coupling, and on the time scales.
- More generally, following notation in Paulsson 2004, ${\rm c.v.}^2_x=\frac{1}{<x>H_{xx}}+{\rm c.v.}^2_y\frac{H_{yx}^2}{H_{xx}^2}\frac{H_{xx}/\tau_x}{H_{yy}/\tau_y+H_{xx}/\tau_x}$, where $\tau$'s are the average molecule lifetimes, and $H_{xy}=\partial \log(G_x/F_x)/\partial \log y$ and similar for $H_{xx}$ and $H_{yy}$
- Talking about our protein-mRNA system: $\tau_x=1/r_x$, $\tau_y=1/r_y$, and $H_{xx}=H_{yy}=1$, $H_{yx}=-1$. So ${\rm c.v.}^2_x=\frac{1}{<x>}+{\rm c.v.}^2_y\frac{r_x}{r_y+r_x}$
