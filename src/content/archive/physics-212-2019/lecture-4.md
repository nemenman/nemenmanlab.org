---
title: "Lecture 4"
group: "physics-212-2019"
wiki_title: "Physics 212, 2019: Lecture 4"
order: 50
---

## An example of a model: Solving for an equilibrium position, light version

A charged particle free to move on a rod is put in the between two particles with an electric charge of the same sign affixed to the end of the rod. Where will the charge come to rest?

**Analysis:** How should we model this? is the model dynamic or static? At the first sign, this is a dynamic model, since we are talking about *motion* of a charge. On the other hand, we are asked only about the final equilibrium position. Then maybe this is a static model after all -- we only need to know where the charge comes to rest. The model is definitely a continuous space model -- position of the particle is a continuous variable. The model is also deterministic -- there's not a stochastic element present. To make this a static model (so that there's a final rustic point for the charge), there has to be friction, so that the particle does not keep oscillating infinitely. Nothing is mentioned about this in the problem formulation -- but it seems like this is presumed.Does it even make sense that the particle will come to a rest? Same sign particles repel. And the repulsion is stronger when they come closer. So a particle between two other fixed one will be pushed away from both ends -- it seems reasonable that it will come to a steady point at some time if friction robs it of energy.

**Model building:** The equilibrium for the system will be $\sum \vec{F}=0$. Since the particle is moving on a rod -- in one dimension -- this is equivalent to $\sum {F}=0$. There are two Coulomb forces acting on the particle from the two end charges. Let's say the charges are at positions $x_1$ and $x_2$, and have charges $q_1$ and $q_2$respectively. Let's suppose $x_1<x<x_2$, where $x$ is the position of the moving charge. The forces acting on the moving charge, which we call $q$ are then $\sum F= \frac{qq_1}{(x-p_1)^2}-\frac{qq_2}{(x-p_2)^2}$. Thus to solve the problem, we need to solve the following equation for $x$: $\frac{qq_1}{(x-p_1)^2}-\frac{qq_2}{(x-p_2)^2}=0$, or, cancelling $q$, $\frac{q_1}{(x-p_1)^2}-\frac{q_2}{(x-p_2)^2}=0$. Interestingly, the only variables we need for initialization are the three charge values, and the two end charge positions -- the initial position of the moving charge, and charge value itself seem to be not needed. Multiplying the equation by the two denominators (which, luckily, cannot be zero), we get: ${q_1}{(x-p_2)^2}-{q_2}{(x-p_1)^2}=0$. Simplifying the equation, we get: $(q_1-q_2) x^2 +2(-q_1p_2+q_2p_1)x+(q_1p_2^2-q_2p_1^2)=0$. So it seems that solving this problem is equivalent to solving a simple quadratic equation.

**Model implementation:** To build a model, we start with large blocks describing chunks of the solution of the problem. We progressively break them apart into smaller and smaller blocks, until we are able to write the code for each one of the blocks. At the same time, as we are implementing the blocks, we collect pieces that need to be initialized in the initialization block, and need to be reported in the termination block. Here we realize that, in the previous class hour, we wrote a simple program that solves the quadratic equation $ax^2+bx+c=0$. Thus implementing the model is equivalent to taking the previously written solution for the quadratic. Thus the implementation will consist of just three blocks: (1) initialization, where we assign $a=q_1-q_2$, $b=2(-q_1p_2+p_2x_1)$, and $q_1p_2^2+q2p_1^2$; (2) solving the quadratic equation and getting its two solutions; and (3) termination, where, of the two solutions, we then output the one that falls between $p_1$ and $p_2$.

**Model verification:** To verify that the solution is correct, we should try it in cases where the solution is easy to guess or to estimate otherwise, and compare. For example, we can try $q_1=q_2$, where it's clear that the solution should be $x=(p_1+p_2)/2$. We could also choose a few conditions with different $q_1$, and we would expect that growing $q_1$ should push the equilibrium farther from the left end.

**Discussion:** Having solved the problem, we would usually discuss our findings here, and reiterate various constraints and assumptions that entered the solution. However, this problem is too simple too write much here.

**Your work:** Implement the code for solving this problem, using your previous solution of the quadratic equation. Think about various exceptions that can happen with the solution. **Make sure to submit your code.**

## New Python concepts

In this class, we introduced and discussed the following concepts:

- Objects -- mutable (arrays and lists) vs. immutable (numbers)
  - Object attributes and object methods, using dir
  - Overloading methods
- Distinction of variables and objects; we looked at a few examples of operations that create new objects, and a few that do not.
- We also discussed handling exceptions -- such as when the discriminant in the quadratic equation is zero, or when roots are complex.
- Code re-use. We re-used the quadratic equation solution code from the previous lecture here to find the solution for the charge position.
