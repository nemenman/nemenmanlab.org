---
title: "Lecture 8"
group: "physics-212-2019"
wiki_title: "Physics 212, 2019: Lecture 8"
order: 90
---

## Good coding practices

In this lecture we discussed a few important concepts in programming, some specific to Python, and some not.

### Encapuslation

To date, we often used Python from the command line, or executed cells from Jupyter notebooks. While this is allowed, it is not the best way of working with Python (or other software packages). It is important to encapsulate the code that you use repeatedly into either a script or a function, thus assigning the piece of code a name, and being able to call it and execute it by this name.

The difference between the scripts and the functions is that a script does not have its own scope, and hence it modifies the state of the Python kernel after the execution. Functions have their own scope and usually (bot not always) do not modify the state of the kernel. Additionally, you can pass arguments to a function and receive output back, and this is impossible to do with scripts. In general, functions are probably preferable in all, but a few special cases. This is especially true when working with Jupyter notebooks, where you can define a function in a cell, and then you can refer to the function by the name from any other cell of the notebook.

Whether you choose functions or scripts, it is crucial that you should follow the rule: if a code can be reused more than once, or if it may be re-used for different parameter values, then it should be encapsulated.

Section 6.1 in the textbook focuses on writing one's own functions. In this lecture, we will write our first functions as well -- various growth rates for bacterial growth problems and solvers of the corresponding differential equations.

### Additional Python Concepts to be covered

1.  We will talk about variable types, and importance of type checking, and how Python figures out which type is a variable that has been passed to a function; we will return to this later.
2.  We will write our own loadable modules, and will discuss the importance of using the reload function.
3.  Finally, we will discuss some common coding mistakes that we all do when working with python, and specifically:
    1.  Appending list or arrays instead of pre-allocating arrays -- appending arrays causes creation of new arrays, and then copying numbers, which takes time.
    2.  (for the second time) Doing loops instead of vectorizing your math and operating on arrays -- doing loops causes Python to do type checking of variables at every step of the way, which is costly.

### Your work

**Problem 1:** Using the previous code we wrote, write a function that solves a quadratic equation, receiving the three coefficients of the quadratic polynomial as arguments, and returning the two roots. Work on making this function bullet-proof, so that it gives only one solution if there's one, or complex-valued solutions if those are called for.

**Problem 2:** Use the written growth functions for bacterial populations and integrate them using the built-in ODE solver functions in Python. Compare the obtained solution to that produced by the Euler integrator.

### Scripts for this Lecture

- [GrowthFunctions](/archive/files/Growthfunctions2019.txt) -- module defining different growth functions.
- [Integrators](/archive/files/Integrators2019.txt) -- module defining different integrators (Euler and Runge-Kutta, which we will use during the next lecture).
- [Module 2](/archive/files/ModuleTwo2019.txt) -- catch-all scripts I used during the class.
