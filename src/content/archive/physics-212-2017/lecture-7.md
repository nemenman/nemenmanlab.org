---
title: "Lecture 7"
group: "physics-212-2017"
wiki_title: "Physics 212, 2017: Lecture 7"
order: 60
---

Here we start a new module, where we will explore how to model and solve dynamical systems in more detail. In this lecture we discussed a few important concepts in programming, some specific to Python, and some not.

1.  We discussed the importance of encapsulating the code that you use repeatedly into either a script or a function.

2.  We discussed the difference between scripts (no inputs and no outputs) and functions (have inputs and outputs).

3.  We did the book section 5.1 -- Writing your own functions, and we wrote our first functions -- various growth rates for bacterial growth and solvers of the corresponding differential equations.

4.  We started talking about variable types, and importance of type checking, and how Python figures out which type is a variable that has been passed to a function; we will return to this later.

5.  We wrote our own loadable modules, and discussed the important of using the reload function.

6.  Finally, we discussed some common coding mistakes that we all do when working with python, and specifically:

7.  Appending list or arrays instead of pre-allocating arrays -- appending arrays causes creation of new arrays, and then copying numbers, which takes time.

8.  Doing loops instead of vectorizing your math and operating on arrays -- doing loops causes Python to do type checking of variables at every step of the way, which is costly.

9.  Finally, we talked about $O(dt^n)$ notation, and we saw, by writing the scripts that I have uploaded below that the simple Euler method of solving differential equations has an error of $O(dt)$

    Scripts for this Module:

    - [GrowthFunctions](/archive/files/GrowthFunctions_v2.txt) -- module defining different growth functions.
    - [Integrators](/archive/files/Integrators_v2.txt) -- module defining different integrators (Euler and Runge-Kutta second order).
    - [Module 2](/archive/files/Module2_v2.txt) -- catch-all scripts I used during the class.

I also asked you to show that the numerical error is dependent largely (but not fully) on the solving method, not the equation being solved. For this you needed to define a different growth function, solvee the growth equation, and [submit your work](https://docs.google.com/forms/d/e/1FAIpQLSeNvrPddCgvMfHdlSA8uYDddBFqLK81Rrr4l7jfozud6J7iww/viewform).
