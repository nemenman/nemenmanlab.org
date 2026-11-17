---
title: "Lecture 3"
group: "physics-212-2019"
wiki_title: "Physics 212, 2019: Lecture 3"
order: 40
---

Most important thing to note about these lectures:

You won't learn Python by reading. You have to try coding. If you have a question how a certain expression works, type it in Python console, and test it!

## Introduction to Python

- Algorithmic thinking
  - Example: opening a door
  - Different levels of algorithms
- Basic parts needed to design an algorithm
  - State (or memory)
  - Rules for transforming states (operations, functions, procedures)
  - Rules for making decisions
- Assignment operation (vs. testing for equality)
  - Variable is a pointer to a container (object) in memory where a state is stored. (This is not quite correct; we will return to this later).
- Anaconda distribution / Spyder development environment
  - How to launch it
  - Console vs. editor plus additional tools
  - Syntax highlighting / code analyzer
- Basic syntaxes
  - Resetting the state of the system
  - Asking for help with ? and with Google
  - Built-in functions, like *print*
  - Numbers; note that j is the imaginary unit, not i
    - Are numbers real or integer?
  - Arithmetic operations, +, -, \*, /, \*\*.
  - Parentheses
  - Importing modules and functions from modules
    - numpy as np and matplotlib.pyplot as plt
- Python Modules
  - Importing and reloading
  - pyplot and numpy

**Exercise:**

We will solve a quadratic equation a\*x\*\*2+b\*x+c=0 for a=1, b=2, c=-3. Do this by

1.  Resetting the environment
2.  Importing sqrt function from numpy
3.  Assigning values to a, b, c
4.  Evaluating both solutions using the standard formula you learned in middle school
5.  Printing both solutions

- More syntaxes
  - Functions have arguments; keyword arguments
  - Functions return values
  - Functions can otherwise change Python state

**Exercise:**

Evaluate a binary log (log base 2) of a number 42 using at least three different sets of commands. Verify your result by taking 2 to the appropriate power and seeing if you get 42 back.

- Objects -- mutable (arrays and lists) vs. immutable (numbers)
  - Object attributes and object methods, using dir
  - Overloading methods
- Variables vs. objects (again!)
- Lists vs. Numpy arrays
  - Why np.zeros((2,4)) and not np.zeros(2,4)?
  - A list of lists, and and an array of arrays
- Creation, concatenation (stacking).
- Slicing -- doesn't create new arrays (we will come back to this)
- Flatten copies data, ravel and reshape does not
- Strings

**Exercise:**

Create a rectangular 3x4 arrays of numbers. Flatten and ravel it. Which of the commands creates new arrays and which does not? Reshape it as a 4x3 array. Did this create a new array? Check in the variable explorer. Now create a slice that corresponds to the first and the second rows (remember that row numbering starts with 0) and zeroth through second columns. Did this create a new array?

**Don't forget to submit your work at the end of the class** using Canvas.
