---
title: "Lecture 12"
group: "physics-212-2019"
wiki_title: "Physics 212, 2019: Lecture 12"
order: 130
---

One way to verify the correctness of your models for this module is by using concepts from the qualitative theory of dynamical systems. Thus you will need to know a few concepts that many of you will encounter again in a lot more detail when you take classes on dynamical systems -- namely, such system where motion of a point, representing the whole system, is described as a function of time. Below are the few concepts from this rich theory that we need for our class

- [Phase space](https://en.wikipedia.org/wiki/Phase_space) -- a space where each one of the degrees of freedom of the dynamical system are the coordinates.
- [Phase portrait](https://en.wikipedia.org/wiki/Phase_portrait) -- a plot showing the rate and direction of change of the coordinate of the dynamical system in the phase space as a function of the coordinates. Therefore, the phase portrait represents the trajectories of the dynamical system, but not as a function of time, but in the phase space.
  - In class we will discuss and sketch the phase portrait of a 1-d dynamical system (growth with carrying capacity).
  - Similarly, we will discuss and sketch the phase portrait of a 2-d system (predator-prey model).
  - To plot vector fields / phase portraits of dynamical systems using Python, read Sec 6.9 of the textbook.
- Phase portraits may have a few special features. These include
  - [Fixed points](https://en.wikipedia.org/wiki/Fixed_point_(mathematics)) -- points where the coordinates of the system don't change with time. Some fixed points are stable (so that small deviations from them lead the system back to them), and some are unstable (small deviations lead away from the fixed points). We find such fixed points of dynamical systems by solving the steady state equations of the system (setting all time derivatives to zero). This we do either with our own custom-built Newton-Raphson method, or the fsolve function from Python (Sec 5.5. in the textbook).
  - [Limit cycles](https://en.wikipedia.org/wiki/Limit_cycle) -- closed (periodic) trajectory in phase space having the property that at least one other trajectory spirals into it either as time approaches infinity or as time approaches negative infinity. Limit cycles can also be stable and unstable.
  - More interesting features, related to chaotic dynamics, which we will not discuss in this class.
- Phase diagram -- typically phase portraits depend on various parameters of the dynamical system. For example, for the Lotka-Volterra system, they depend on various birth rates. The system may behave differently for different parameter values (can oscillate, go to extinction, etc). A graph where the parameter values are on the axes, and the regions of parameter values are indicated by the type of behavior the system performs is called a phase diagram.

So one way of analyzing your 2-d dynamical systems is by analyzing their phase space using streamlines and phase portraits, detecting fixed points by solving the steady state equations of the dynamics, and comparing results to your simulations.
