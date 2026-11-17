---
title: "Homework 10"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Homework 10"
order: 400
---

1.  In class we described bistable biochemical systems. One of the examples that we used was for a self-activating gene, which can act as a bistable, toggle switch (see articles by Gardner et al., 2000). In fact, bistability is a general example of multistability, which we have not yet described. In this problem, we will construct an example of a multistable system with three stable states.
    - Consider three genes in a network such that gene 1 strongly inhibits gene 2 and weakly inhibits gene 3; gene 2 strongly inhibits gene 3 and weakly gene 1; and gene 3 strongly inhibits gene 1 and weakly gene 2. Production should be of the Hill form, and degradation of mRNA/protein products should be linear. Do not resolve proteins from mRNA (that is, consider that a gene produces a protein directly, which later inhibits other genes). You may have very different activation shapes: multiplicative, competitive, etc. Very broad range of detailed activation laws will produce the same type of results.
    - Write down differential equations that would describe this dynamics.
    - Write a Matlab script that would solve the dynamics by the Euler method.
    - Run the dynamics from different initial conditions and plot 3-d trajectories for these conditions. How many stable steady states can you find? Can you pinpoint the saddle points and the unstable steady states this way?
    - Explore different parameters for this system. Is the number of stable steady states dependent on the form of the gene suppression and on its strength? Elaborate by example.
2.  *For Grad Students* (Extra credit for undergrads): Can you imagine a realistic biochemical system with just two degrees of freedom that would still have three or more stable steady states? Build such a system and complete the same analysis of it as above.
