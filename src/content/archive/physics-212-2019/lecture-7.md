---
title: "Lecture 7"
group: "physics-212-2019"
wiki_title: "Physics 212, 2019: Lecture 7"
order: 80
---

In this module, we further expand on our toolkit of computational methods and Python coding and learn how to solve dynamical (ordinary differential equations) models.

## The simplest dynamical model: Malthusian growth

A few bacteria are placed in a Petri dish. With time, each bacterium grows with a certain rate and then divides into two daughter cells. How many bacteria are there in the dish a certain while later?

**Analysis:** How should we model this? The model we need is definitely dynamic. However, almost all other aspects of the model are for you to decide. I encourage you to consider different modeling assumptions. We can have discrete number of bacteria vs. continuous (explain what it means to have a continuous number here -- after all, the number of bacteria is natural). We can have discrete time (bacteria divide synchronously) or continuous time -- bacteria divide at different times. Which (if any) is a better choice and why? We can have a stochastic model (the number of dividing bacteria is random) or a deterministic model, where in a certain interval $dt$ a certain fraction of bacteria divides that is proportional to the duration of the interval. In what follows, I choose to assume that each bacterium divides at the same rate. But they divide in different time, so that the time is continuous. We will assume that the number of bacteria is large, so that a large number of new bacteria gets created during any, even very short, period of time. Thus the total number of bacteria dividing per unit time is proportional to the current population, with a certain coefficient of proportionality, which we call the rate.

**Model building:** The following variables are needed to initialize the model: initial number of bacteria (constant), growth rate (constant), total duration of the experiment (constant, which we denote as $T$), the number of bacteria -- a variable that will be updated with time. The considerations above suggest that we can write the model using a differential equation for the population size $dn/dt=rn$, with the initial condition $n(0)=n_0$. This assumes that the number of bacteria is always much larger than 1. This model is easy to solve analytically. We rewrite the equation as $dn=rn\, dt$, and integrate both sides. This gives $n(t)=n_0 e^{rt}$. However, our focus here is on solving similar equations numerically, and so we will implement numerical solution of the equation, and the analytical solution will be a useful check of accuracy of our numerical code.

**Model implementation:** We need to solve the differential equation that we write down, but we do not know how to do this yet.

## Euler method for solving differential equations

The problem above is the first problem of a different kind: dynamic, continuous time model, where temporal evolution of variables is governed by ordinary differential equations (in this case, there's just one variable and one equation describing it). Intuitively, solving such models should be easy -- instead of a continuous change of the variable, we can increment the changing variable in steps corresponding to quantum units of time. To understand what the increment should be, one recalls that the derivative is the tangent to a function, and so one can approximate the change of the function $n(t)$ over the time $\Delta t$ by $\frac{dn}{dt}\Delta t$. In other words, we can rewrite the differential equation as a *finite difference* equation $n(t+\Delta t)=n(t)+\Delta n(t)=n(t)+rn(t)\Delta t$. One then can solve for $n$ over the entire range of time that we are interested in by looping over a few simple commands: evaluating the derivative, calculating the function increment as the derivative times the time step, incrementing the function, and advancing the time. This is known as the Euler algorithm for solving differential equations.

This analysis tells us that two more variables will be needed for implementation of the problem: $dn$ -- a dependent variable that will store the change of the number of bacteria on a dish at a given time, and $dt$, which is a constant determining the step size for the solution of the differential equation. We can implement the model in the following simple code: [Simple Malthusian growth](/archive/files/Malthus19.txt).

How accurate is the solution that we obtain? We will explore this later in the class (and some other aspects of the accuracy will be explored later in this model). For now, let's do a back of the envelope analysis. The true Taylor expansion of a function reads $n(t+\Delta t)=n(t)+ \frac{dn}{dt}\Delta t +\frac{d^2n}{dt^2}\Delta t^2+\dots$ The Euler method truncates this series after the term $O(dt)$ (recall that the mathematical notation O means "of order of"). So every step in the iteration introduces the error of the magnitude $O(dt^2)$. And there are $T/dt$ such steps, os that we expect the overall error to be $O(dt^2)*T/dt =O(Tdt)$. In other words, the error will grow with the temporal duration of the interval we are analyzing, and it will decrease linearly with $dt$, when the finite difference starts looking close to the derivative. Because of this linear $dt$ dependence, the Euler method is known as a *first order* integration algorithm.

## Plotting

Read the textbook, Chapter 6, for the basics of plotting. We can restructure our code to output the entire temporal evolution -- not just the final result -- of the bacterial number, and then we can plot the result. This is especially useful for visualization. The [linked code](/archive/files/Malthus_full19.txt) does this. I will discuss the plotting commands we used in class.

**Your work:** explore how the solution depends on $dt$: is the Euler method really a first order method? For this, evaluate the solution at different $dt$ for the final time of $t=1$, initial condition $n_0=1$, and growth rate of 1. The final result should be the value of e, or np.exp(1). Explore the difference between the analytical solution and the numerical result for different $dt$. Plot the dependence of the final error on $dt$. Plot this dependence in the log-log coordinates.

## Continuing with the model

**Model verification:** We can solve this whole problem analytically and compare to the output of the experiment. Or we can verify the code by comparing to special cases. For example, for zero growth rate, the number of bacteria shouldn't change with time. Alternatively, when $n_0$ increases by a factor, the final result should increase by the same factor -- and we can check this.

**Discussion:** We have modeled the exponential bacterial growth, and the findings agree with the analytics. While it seems that there is not much to discuss here, one could still describe what will happen to the solution if any of our assumptions (large number of bacteria, deterministic growth, continuous time, etc.) are violated. Please think of answers to these questions. For example, how would this code change if we assumed the model to be a discrete time model? In fact, only the steps would probably get larger -- but the structure of the code would remain the same, with the same stepping through time intervals of $dt$. There are no, in fact, purely continuous models on digital computers!
