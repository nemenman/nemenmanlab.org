---
title: "Lectures 6"
group: "physics-212-2018"
wiki_title: "Physics 212, 2018: Lectures 6"
order: 60
---

Here we start a new module, where we will explore how to model and solve dynamical systems in more detail. In this lecture we discussed a few important concepts in programming, some specific to Python, and some not.

1.  We will discuss the importance of encapsulating the code that you use repeatedly into either a script or a function.
2.  We will discuss the difference between scripts (no inputs and no outputs) and functions (have inputs and outputs).
3.  We will focus on book section 6.1 -- Writing your own functions, and we wrote our first functions -- various growth rates for bacterial growth and solvers of the corresponding differential equations.
4.  We will start talking about variable types, and importance of type checking, and how Python figures out which type is a variable that has been passed to a function; we will return to this later.
5.  We will write our own loadable modules, and will discuss the importance of using the reload function.
6.  Finally, we will discuss some common coding mistakes that we all do when working with python, and specifically:
    1.  Appending list or arrays instead of pre-allocating arrays -- appending arrays causes creation of new arrays, and then copying numbers, which takes time.
    2.  Doing loops instead of vectorizing your math and operating on arrays -- doing loops causes Python to do type checking of variables at every step of the way, which is costly.

Coding problem for you was: write a function to solve a quadratic equation, and think about how to make it bullet-proof, and give solutions gene if they are complex, or if they are degenerate. [submit your work](https://docs.google.com/forms/d/e/1FAIpQLSeNvrPddCgvMfHdlSA8uYDddBFqLK81Rrr4l7jfozud6J7iww/viewform).

Scripts for this Module:

- GrowthFunctions -- module defining different growth functions.
- [Integrators](/archive/files/Integrators_v2.txt) -- module defining different integrators (Euler and Runge-Kutta second order).
- [Module 2](/archive/files/Module2_v2.txt) -- catch-all scripts I used during the class.
