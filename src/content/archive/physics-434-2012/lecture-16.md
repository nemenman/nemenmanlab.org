---
title: "Lecture 16"
group: "physics-434-2012"
wiki_title: "Physics 434, 2012: Lecture 16"
order: 170
---

We are proceeding with the dynamical information processing block. In the next couple of lectures, we will follow the article by Detwiler et al., 2000.

## Main lecture

1.  We follow Detwiler et al., 2000, article in this lecture.
2.  We discussed the basic structure of the vertebrate eye, which consists of rods and cones. We will return to the rods, and their unbelievable ability to detect single photons, in one of the later lectures.
3.  Crudely, signaling in vertebrate cones can be summarized by the following Fig. 2 of Detwiler et al., see figure on the right. ![Cones signaling](/archive/files/Cones-signaling.gif)
4.  Notice the number of signaling elements known as *futile cycles* or *push-pull enzymatic amplifiers* in this system, see figure to the right. ![Enzymatic amplifier](/archive/files/Amplifier.gif) Why are these signaling elements so common in eukaryotic systems?
5.  We start with the kinetic description of such enzymatic amplifier: $\frac{dX^*}{dt}=F-G=\frac{k_a E_aX}{1+X/K_a}-\frac{k_d E_dX^*}{1+X/K_d}$. Notice that we use slightly different notation compared to the previous lecture.
6.  Let's assume now that all enzymes are unsaturated, so that $\frac{dX^*}{dt}\approx k_aE_aX-k_dE_dX^*$.
7.  We can now apply the steady state assumption and set: $\frac{dX^*}{dt}\approx k_a\bar{E_a}\bar{X}-k_d\bar{E_d}\bar{X^*}=0$. Here the overbar means the value averaged over long times. We further recall that $X^*+X=X_{\rm tot}$. This gives us $\bar{X^*}\approx \frac{k_a\bar{E_a}X_{\rm tot}}{k_a\bar{E_a}+k_d\bar{E_d}}.$
8.  Recall that the input signal here is $E_a$ and the output is $X^*$. The form of the relation between the two indicated above is clearly the usual Michaelis-Menten curve.
9.  Note that each activation-deactivation cycle consumes energy, and there are $k_a\bar{E_a}\bar{X}$ such cycles per unit time. Thus even at the steady state the system is not stationary and keeps on recirculating $X$, consuming energy. Why would this structure then be useful instead of a simpler arrangement, where $X$ is produced on demand? Activating a product is typically much faster than producing it, and hence the futile cycle can respond to a changing stimulus much quicker than the time that would be needed to transcribe and then translate the protein. Another reason is that this futile cycle structure is very tunable, as we will see below.
10. Now suppose $E_a=\bar{E}_a+\Delta E_a$ and $X^*=\bar{X}^*+\Delta X^*$. For simplicity, we assume that $E_d={\rm const}$. We can now expand our equations to the first order in fluctuations of the signal and the response.
    - $\frac{d\bar{X}^*}{dt}+\frac{d\Delta X^*}{dt}=F(\bar{X}^*,\bar{E}_a)-G(\bar{X}^*,\bar{E}_a) +\frac{\partial F(\bar{X}^*,\bar{E}_a)}{\partial X^*}\Delta X^*+\frac{\partial F(\bar{X}^*,\bar{E}_a)}{\partial E_a}\Delta E_a+ \frac{\partial G(\bar{X}^*,\bar{E}_a)}{\partial X^*}\Delta X^*+\frac{\partial G(\bar{X}^*,\bar{E}_a)}{\partial E_a}\Delta E_a$
    - This results in $\frac{d\Delta X^*}{dt}=\frac{1}{\tau}\left(\Delta X^* -g_0 \Delta E_a\right)$, where $\tau=\left(k_a \bar{E}_a +k_d \bar{E}_d\right)^{-1}$, and $g_0=\tau k_a \bar{X}$.
11. From the differential equation description, it is clear that the system acts as a filter: without the signal, the response relaxes to $\Delta X^*=0$, and a change in the signal causes a delayed response in the output, with a delay of order of $\tau$. Thus the system smoothes out (filters) the signals to produce the response. Because $\tau$ defines the delay, $1/\tau$ is called the *bandwidth" -- signals that change on scales faster than that simply "do not go through" the system.*
12. Notice that if $\Delta E_a={\rm const}$, then by setting $d/dt=0$, we calculate the steady state of the system $\Delta X^*=g_0\Delta E_a$. Thus $g_0$ is called the *static gain* -- a response of the circuit at the steady state is $g_0$ times the signal.
