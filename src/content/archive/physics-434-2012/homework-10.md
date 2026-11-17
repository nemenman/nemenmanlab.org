---
title: "Homework 10"
group: "physics-434-2012"
wiki_title: "Physics 434, 2012: Homework 10"
order: 290
---

1.  We mentioned in class that noise in kinetic systems may introduce new dynamical phenomena, not present in the deterministic context. We will explore this here in the context of the 3-gene circuit built for the previous homework set.
    - Modify the dynamics of the system to include Langevin noise. Choose the values of $B_i$ such that the system is tri-stable, and the highest steady state has $\ge 30$ molecules in it, while the lowest has $\sim 7-10$. You may need to increase $A$ over the previously suggested value of 3.5 to make sure that the lowest state has at least these many molecules.
    - Simulate the dynamics of the system for a long time. Does the system switch between the states? Is there a preferred order in the switching? (that is, does high $x_1$ preferentially come after high $x_2$ or $x_3$?)
2.  Can this system be used as a clock? That is, as we run the system for a long time what do you expect will happen with the coefficient of variation of the number of switches the system will experience as the function of the elapsed time? Explain. (Hint: Recall the Doan et al., 2006, paper we discussed in class).
3.  Consider again an arrangement of signal $s$, response $r$, and a memory $m$, treated in a linear approximation, with $k_{mm}\ll k_{rr}$. Do not consider effects of noise. Arrange the memory and the response in a negative feedback circuit. There are two of these: (1) response activates memory, which in turn suppresses response, and (2) response suppresses memory, which activates the response. Are these circuits different or equivalent in the linear approximation? Can either of these circuits achieve perfect mean adaptation (zero gain at zero frequency)? Can an incoherent feedforward loop, analyzed before, achieve perfect adaptation? Does this agree with our statement in class that only integral feedback circuits should be able to achieve perfect adaptation? In your analysis of the gain of the system, you may see a tradeoff between low gain at zero frequency and high maximum gain. It might be worthwhile reading Ma et al, 2009, where this has been discussed in detail for nonlinear systems.
