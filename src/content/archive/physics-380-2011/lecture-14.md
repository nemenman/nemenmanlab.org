---
title: "Lecture 14"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Lecture 14"
order: 170
---

This is the first lecture in dynamical information processing block.

## Warmup discussion

We have figured out how to use information theory to characterize information transduction in biological systems. But biological systems respond to entire time series of signals, not to just single values. We need mathematical tools to describe signal transduction in such dynamical contexts. To do this, we start first with a question of how to write down biological signaling dynamics equations.

## Main lecture

1.  We use ordinary differential equations to model well-mixed biochemical dynamics.
2.  Two approximations are often used
    - Quasi steady state (adiabatic) approximation
    - Linear approximation
3.  The basic quasi steady state reaction is the Michaelis-Menten reaction: Substrate S can bind to the enzyme E to form a complex SE, which later can degrade back into E+S or into E+ P, where P is the product. E-S binding rate is $k_1$, ES to E+P rate is $k_2$, and the backward rate ES to E+S is $k_{-1}$.
    - Denoting concentrations by \[...\], the dynamics of P and ES are given by $\begin{array}{l}\frac{d[P]}{dt}=k_2[SE]\\\frac{d[SE]}{dt}=k_1[S][E]-(k_2+k_{-1})[SE]\end{array}$.
    - We also have the conservation law that $[E]+[SE]=[E_{\rm total}]$. Or, put another way, $[E]=[E_{\rm tot}]-[SE]$.
    - We make an adiabatic (aka quasi-steady-state) approximation, that the enzyme-substrate complex equilibrates much quicker than the substrate itself. Another way to look at it is to say that the number of enzymes is small. We then set $d[ES]/dt=0$, which gives, using the conservation equation: $k_1[S]([E_{\rm tot}-[SE])- (k_2+k_{-1})[SE]=0$. Solving this for \[SE\], we get $[SE]=\frac{k_1[S][E_{\rm tot}]}{k_1[S]+k_2+k_{-1}}$.
    - This finally gives for the product production: $\frac{dP}{dt}=\frac{k_2k_1[S][E_{\rm tot}]}{k_1[S]+k_2+k_{-1}}$. We rewrite this as $\frac{dP}{dt}=\frac{V[S][E_{\rm tot}]}{[S]/K_M+1}$, where the maximum *velocity* of the reaction is $V=k_2k_1/(k_2+k_{-1})$, and the Michaelis constant is $K_M=K=(k_2+k_{-1})/k_1$.
    - The rate has a hyperbolic shape as a function of the substrate concentration. It starts linearly when there are few substrates only, but, as \[S\] grows, they eventually saturate the enzymes, and the maximum production rate is limited not by the number of the substrates, but by how quickly the enzymes can convert them.
4.  Very similar quasi-steady-state descriptions are derived for other reactions. For example,
    - When the number of substrates is much larger than the number of enzymes, a similar Michaelis-style law can be derived by assuming that the substrates equilibrate before the enzymes, and keeping track of the conservation law for the substrate+complex+product (this is more relevant for the reversible system, where the product can be transformed back into the substrate as well.
    - When both the enzyme and the substrate are comparable, but the complex is equilibrated fast nonetheless (maybe because the number of complexes is smaller -- the substrate and the enzyme don't bind strongly), we will get what's called the total quasi steady state approximation. Try to derive the approximation by writing down conservation laws for the enzymes and the substrate molecules simultaneously, and then setting derivatives of the complex concentrations to zero.
    - In a homework, you will derive a similar expression of competitive inhibition in MM reactions, when a single enzyme can transform two different substrates into two different products.
5.  Note that the same MM dynamics describes motion of particles through a channel in a membrane, where the substrate/substrate-enzyme/product get replaced by outside/in the channel/inside the membrane.
6.  There are also hyperbolic suppression dynamical laws. For example, recall a homework problem, where a gene switches between on and off states with the rate of $k_{\rm on}$ and $k_{\rm off}$. When on, it produces an mRNA product with the rate $\alpha$.
    - Suppose now that $k_{\rm off}=k_0[S]$. Then the fraction of time the gene is in the on state is $f=\frac{k_{\rm on}}{k_{\rm on}+k_0[S]}$.
    - Then the total mRNA production rate is $\frac{d[mRNA]}{dt}= \frac{\alpha k_{\rm on}}{k_{\rm on}+k_0[S]}\equiv \frac{V}{1+[S]/K_M}$, where the velocity and the Michaelis constant are defined by the last expression. This is a hyperbolic suppression.
7.  How do we get steeper activation curves? Consider a situation, just like in the *lac* system, where it's only a dimer that can activate the system, or suppress it. That is, we have two monomer proteins S form a dimer D first with a rate $k_{1}$, and the dimer can fall back with the rate $k_{-1}$. The rate of formation of the dimer is then $\frac{dD}{dt}=k_1[S]^2-k_{-1}[D]$, and, in steady state, $[D]=k_1/k_{-1}[S]^2$.
    - Now suppose that it is the dimer that suppresses the mRNA production, so we get $\frac{d[mRNA]}{dt}= \frac{V}{1+\left(\frac{[S]}{K_M}\right)^2}$. This is now a sharper deactivation curve, and similar quadratic activation is also possible.
    - These types of laws describe *allosteric* reactions, where an effect of a certain substrate/enzyme on the product formation conditionally depends on some other quantities, and is nonlinear.
    - A general activation curve of the type $\frac{V[S]^n}{1+([S]/K)^n}$ are called *Hill-activation* curves with *Hill coefficient* $n$. Curves with $\frac{V}{1+([S]/K)^n}$ are the corresponding Hill inhibition dynamics.
8.  While in reality the mechanisms for forming the kinetics might be very different, typically such sigmoidal (that is, step-like) activation and suppression curves are abundant in biological system -- simply because one often needs some kind of a threshold concentration of the substrate to start producing the product, and eventually the enzymatic machinery producing the product saturates, just like in the MM reaction, giving a sigmoidal shape. These curves are often measured for different biochemical systems and reported under the names of dose-response curves.
9.  Very similar sigmoidal dynamics is also found in neuroscience applications, where they are known as firing rate curves. Indeed, as we have studied before, a certain finite input current into the neuron is needed before the neuron can fire (input should be stronger than the leak current), and eventually the firing rate is limited from above by the refractory period for the system.
