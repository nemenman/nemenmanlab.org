---
title: "Lecture 10"
group: "physics-212-2019"
wiki_title: "Physics 212, 2019: Lecture 10"
order: 110
---

To date, we only considered simple dynamics, which has a single dynamical variable, whose first temporal derivative is determined by the variable itself. In this lecture, we will introduce models that involved coupled, nonlinear ordinary differential equations, as well as methods for solving them.

## Growth with carrying capacity

The first model we will consider is the Malthusian growth with carrying capacity -- where a population grows nearly exponentially fast, before it reaches the maximum population size that can be supported by the environment, $dn/dt = r n(n_0-n)$, where $n_0$ is known as the carrying capacity. During the previous lecture and the lab, you were supposed to solve the corresponding ODE numerically -- and you will have noticed how the growth starts quickly, and then saturates.

## Predator-prey Lotka-Volterra model

Our second model that we will consider is the predator-prey model of population growth. You can read a lot about such generic systems, including their history, [here](https://en.wikipedia.org/wiki/Lotka–Volterra_equations). Briefly, we consider a prey animal species $x$, which grows exponentially, but at the same time it's eaten by the predator species, denoted by $y$. The dynamics of the prey is $\frac{dx}{dt}=rx - \alpha xy$, where the second term denotes the capture of the prey. Indeed, the more prey animals there are, the easier it is to capture them, and the more predators there are, the more prey they will capture, resulting in the bilinear form $\alpha x y$. At the same time, when the predators eat, they have enough food to procreate -- but usually killing one prey only produces fewer than one predators. Further, predators also die a natural death. As a result, $\frac{dy}{dt}= \beta xy - d y$, where $\beta<\alpha$. This is an interesting dynamical system that exhibits oscillations -- number of preys goes up, they become abundant, this leads to the growth of the number of predators. Predators start eating prey, and collapse their number; then there's an insufficient number of prey to support the predator population, and the latter collapses as well. The whole cycle restarts with the renewed growth of prey at that point. One can think of more complicated similar systems of equations, but we will leave this to the homework project.

Note that oscillations are always around the same point, and we can calculate it by setting the value of derivative to zero in the dynamical equations, which gives $x=d/\beta,\,y=r/\alpha$. One can thus verify our code by first setting the initial conditions exactly at this *fixed point*, and then varying conditions and seeing that the fluctuations are always around the fixed point.

## Nonlinear pendulum

Consider a non-idealized pendulum, which undergoes oscillations with a non-infinitesimal amplitude. Then the restoring torque that it experiences is $M=mgl \sim \theta$, where $m$ is the mass, $l$ is the pendulum length, and $\theta$ is the angle its axis forms with the vertical. Newton's equations of motion give for this system $\frac{d^2\theta}{dt^2}=gl\sin\theta$. This seems like a single equation, but it is second order in the temporal derivative. It is then equivalent to two coupled first order differential equations $\omega =\frac{d\theta}{dt}$ and $\frac{d\omega}{dt^2}=gl\sin\theta$, where $\omega$ is the angular velocity

How would one verify the solution, once you write one? For small oscillations, $\sin \theta \approx \theta$, and the pendulum becomes harmonic. For it, the period is known -- and one can check if the value of the period is recovered your code.

## Solving systems of ODEs

How do we solve such coupled, nonlinear dynamical systems numerically? In fact, an almost trivial extension of either the Euler or the RK2 method will work for this goal. In the attached Jupyter notebook, we solve the Lotka-Volterra predator-prey system by the extension of the Euler method to two variables, and we compare the solution to that obtained by the built-in ODE solver.

We will observe the oscillations, and how they can have different amplitudes depending on the initial condition, but always are around the same point.

## Additional Python concepts

We imported the module *time* and used it to time the execution of different versions of integrators.

## Your work

**Problem 1:** Write an extension of the RK2 algorithm to a system of coupled ODEs of an arbitrary size and use it to solve the Lotka-Volterra model. Compare the results to the built-in ODE solver. Start with the multidimensional version of the Euler algorithm Jupyter notebook.

**Problem 2:** Use the same extension of the RK2 algorithm to solve the nonlinear pendulum problem. Compare the results to the built-in ODE solver.

## Scripts for this Lecture

- [Solving Systems of ODEs](/archive/files/SystemsOfODEs.txt) Jupyter notebook
