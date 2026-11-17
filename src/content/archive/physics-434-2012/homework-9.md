---
title: "Homework 9"
group: "physics-434-2012"
wiki_title: "Physics 434, 2012: Homework 9"
order: 280
---

1.  In class we briefly studied the dynamical system describing induction of a self-activating gene: $\frac{dx}{dx}=C+\frac{Vx^2}{1+(x/X_0)^2}-rx$. We have figured out that, for certain values of the parameters describing induction, the system may have one stable fixed point, and for other values it may have two stable fixed point. In this problem, I would like you to draw the phase diagram of this system using its numerical solutions.
    - Write a script that would solve the system using the Euler method; use $C=0.1$ and $X_0=1$ and arbitrary $V,r$. Run the dynamics for a long time, and identify a steady state by the final value of $x$ in your simulation.
    - Now write a function that will check if the system is bistable. For this, solve the equation at different values of initial conditions, from very small to very large ones (logarithmically spaced is the best choice). Compare all steady states obtained from these different initial conditions. If the steady states are farther away from each other than, say, $10^{-5}$, we will call them different states; otherwise they could be the same steady state, calculated with numerical inaccuracies.
    - Now use this checking function to explore different values of $V$ and $r$ to verify if the system has one or two stable fixed points for these values (the best way of doing this is in a double cycle over different values of these parameters). On the $V-r$ axes, put a dot everywhere where the you were able to find two different steady states, and a cross everywhere, where there's just one. Discuss the obtained phase diagram.
2.  Bistability described in class is a general example of multistability, which we will investigate now by constructing an example of a multistable system with three stable states.
    - Consider three genes in a network such that gene 1 strongly inhibits gene 2 and weakly inhibits gene 3; gene 2 strongly inhibits gene 3 and weakly gene 1; and gene 3 strongly inhibits gene 1 and weakly gene 2. That is, let's set: $\frac{d x_1}{dt}=\frac{A}{(1+(x_2/B_1)^2)(1+(x_3/B_2)^2)}-rx_1$ with $B_1<B_2$, and equations for $x_2,x_3$ are given by cyclicly permuting indices in this equation.
    - Write a Matlab script that would solve the dynamics by the Euler method.
    - Set $A=3.5$ and $r=0.1$.
    - Explore qualitatively different values of $B_1,B_2$, and run the dynamics from different initial conditions and plot 3-d trajectories for these conditions. How many stable steady states can you find? Can you pinpoint the saddle points and the unstable steady states this way? Does the number of stable steady states depend on the choices of $B_i$? Explain!
    - Now let's be a bit more accurate and build a phase portrait (flow diagram) of the system. Choose a set of values of $B_i$, for which you think the system is tristable. For different values of $x_1,x_2,x_3$ calculate the vector of velocities of the system $\frac{d \vec{x}}{dt}$ (this should be done in three nested cycles over values of $x_i$.
    - Plot the velocity vectors on the 3-d axes $(x_1,x_2,x_3)$. Do you see the stable points, which attract the flow? Unstable points that repeal it? Saddles? You may need to rotate your axes to better see the flow in the different places of the 3-d space.
3.  *Extra credit*: Can you imagine a realistic biochemical system with just two degrees of freedom that would still have three or more stable steady states? Build such a system and complete the same analysis of it as above.
