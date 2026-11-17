---
title: "Project 1 -- Multistability and a molecular clock"
group: "physics-434-2014"
wiki_title: "Physics 434, 2014: Project 1 -- Multistability and a molecular clock"
order: 190
---

Back to the [Projects](/archive/physics-434-2014/projects/) page.

In class, we have talked a lot about stochasticity in gene expression, and we will still talk about bistability -- a phenomenon, where, depending on the initial condition, the system may relax to two different steady states. In this project, we will explore a more general notion of multi stability, focusing on a specific system with three stable steady states.

Consider a network of three genes, such that gene 1 strongly inhibits gene 2 and weakly inhibits gene 3; gene 2 strongly inhibits gene 3 and weakly gene 1; and gene 3 strongly inhibits gene 1 and weakly gene 2. For example, we may want to describe the deterministic model of this dynamics as $\frac{d x_1}{dt}=\frac{A}{(1+(x_2/B_1)^2)(1+(x_3/B_2)^2)}-rx_1$ with $B_1<B_2$, and equations for $x_2,x_3$ are given by cyclicly permuting indices in this equation. Alternatively we can write $\frac{d x_1}{dt}=\frac{A}{1+(x_2/B_1)^2+(x_3/B_2)^2}-rx_1$, or even $\frac{d x_1}{dt}=\frac{A_1}{1+(x_2/B_1)^2}+\frac{A_2}{1+(x_3/B_2)^2}-rx_1$. I would like you to explore all of these different formulations, or some others that you can think of that would realize the cyclic strong-weak repression system. Which of these models do you think can be implemented in a realistic biological scenario of multiple transcription factors binding to the DNA? How? Try to explore as many possibilities as possible.

Now transform this dynamics into a stochastic dynamics, and write a Gillespie simulator for this system. Choose some fixed value for $A$, and then explore different values of $B_i$ and $r$ in different kinetic schemes you have chosen to explore (maybe different members of your group should focus on different systems). Run the dynamics from different initial conditions and plot 3-d trajectories for these conditions, or build the phase portrait of the system (that is, figure out where the deterministic component of the vector $d\vec{r}/dt=(dx_1/dt,dx_2/dt,dx_3/dt)$ is pointing at different points in the phase space $(x_1,x_2,x_3)$? How many stable steady states can you find for different value of the parameters? Are oscillations present? Sketch the phase diagram of this system, that is, the how many steady states, oscillations, etc., does this stochastic system have at different parameter values?

Explore how emergence of multistability vs. oscillations depends on the parameters and on the functional form of transcriptional oscillations. Explain your observations by mathematical arguments. To which extend are the stable points actually stable in view of fluctuations (that is, does the system switch between states)? How does changing the production rate, and with than the mean molecular numbers, affect this? Again, explain. Plot the distribution of switching times. How can this be approximated? How can we model the system in a coarse-grained fashion by only considering the switching times, rather than small fluctuations near each fixed point.

If the system switches between the three stable states due to stochastic fluctuations, is there a preferred order in the switching? (that is, does high $x_1$ preferentially come after high $x_2$ or $x_3$?) Explain. Can this system be used as a clock? That is, as we run the system for a long time what do you expect will happen with the coefficient of variation of the number of switches the system will experience as the function of the elapsed time? Explain, and verify your prediction by simulations.

Can you imagine a realistic biochemical system with just two (not three!) degrees of freedom that would still have three or more stable steady states, as we constructed here? If you can, construct such a system and investigate it as well.
