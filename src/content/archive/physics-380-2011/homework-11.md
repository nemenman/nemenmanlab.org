---
title: "Homework 11"
group: "physics-380-2011"
wiki_title: "Physics 380, 2012: Homework 11"
order: 410
---

1.  Let's discuss the effect of noise in multistable systems.
    - Take the three-gene network you designed for the previous homework. Choose the parameters so that the strongly inhibited state has 1-3 molecules, weakly inhibited has 5-10, and active state has 30-50. Make sure the system is still tri-stable.
    - Add Langevin noise to the equations describing the system.
    - Change the Matlab script from the last week to incorporate a random Langevin noise into the Euler stepping. Make sure the noise variance is correct.
    - Run the dynamics from different initial conditions and observe if the system switches randomly among the three stable states. Is there a preferential order in which these states are visited? Explain.
    - Does the distribution of switch times look like it is an exponential?
2.  Can this system be used as a clock?
    - Run the simulation for many switches and record the times of how long it takes the system to do one cycle through the three states, two cycles, three cycles, and so on.
    - Is the time proportional to the number of cycles? Make a plot of the number of cycles vs. the time, and see if it's linear.
    - Does the clock become better as the time grows? Explain. (Recall the Doan et al., 2006, paper we discussed in class).
3.  *Grad students*: Submit a derivation of the switching rate between two stable steady states in a noisy system in the Langevin approximation. See me for hints.
