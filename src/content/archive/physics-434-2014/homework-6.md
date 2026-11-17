---
title: "Homework 6"
group: "physics-434-2014"
wiki_title: "Physics 434, 2014: Homework 6"
order: 150
---

1.  Do problem 8.3 (Burst number distribution) in Nelson's book. We have discussed this bursty transcription process in class.
2.  Download and work with the [Matlab code](/archive/files/Gillespie_mrna.m) that simulates this bursty birth-death process. Use it, or its appropriate modification, to estimate numerically the Fano factor ($\sigma^2/\mu$) of the mRNA distribution some reasonably long time after the start of the process. Use $\alpha=30\, {\rm s}^{-1}$, $r=1\,{\rm s}^{-1}{\rm molecule}^{-1}$, $k_{on}=0.1\,{\rm s}^{-1}$, $k_{off}=0.1\,{\rm s}^{-1}$. Recall that the Fano factor for a Poisson distribution is 1. Is your number, for this bursty process, larger or smaller than 1? Explain.
3.  Consider a biochemical system for production of a protein that is somewhat different from what we explored in class: number of proteins $n$ increases by one with a rate $\alpha$ and it decreases with the rate $rn^2$. This happens when the protein is involved in a self-degradation, as is widely believed to be true for development (Eldar et al., 2003). In other words, two protein molecules must meet to destroy each other at the same time, and this will happen in proportion to the square of their concentration.
    - Write down the deterministic equation describing the system.
    - Write down the master equation describing the system. Be careful that two molecules are removed at the same time, so that one transitions from the state $n$ to $n-2$.
    - Write down the Langevin equation describing the system
    - Use the provided [scripts](/archive/physics-434-2014/scripts/) for the simple birth-death process to write down Gillespie and Langevin simulations of this system, and compare the results of both simulation methods.
    - **Grad students**: derive the Fokker-Planck equation for this system. Try to solve it for the steady state distribution. How does the variance compare to the simple birth-death process.
