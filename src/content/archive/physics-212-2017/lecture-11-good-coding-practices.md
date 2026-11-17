---
title: "Lecture 11: Good coding practices"
group: "physics-212-2017"
wiki_title: "Physics 212, 2017: Lecture 11: Good coding practices"
order: 100
---

1.  We talked about how to pass a variable number of arguments to a function, and how to further pass them alone in the context of ODE solvers, for example. See [GrowthFunctions](/archive/files/GrowthFunctions_v2.txt), [Integrators](/archive/files/Integrators_v2.txt), and [Module 2](/archive/files/Module2_v2.txt) for details, or Sec 5.8, and specifically 5.8.3 in the textbook.
2.  You show avoid editing arguments to a function inside the function. Read Sec D.3 of the textbook for details.
3.  If you choose to edit arguments to a function inside the function, then don't return these changed variables at the same time: either edit the original object (argument), or make a copy (return), but not both at the same time.
4.  Always check that your *while* loops are not infinite.
5.  Use constants by their name (even if they only appear once), and not by their numerical values. Define constants in the preamble.
6.  Write floating point numbers explicitly as 1.0 and not 1, for example.
7.  Vectorize your math. See Sec 2.5.1 in the textbook.

Additionally, we discussed that all of your codes must be verified by running them for roughly as many independent special cases (where you know what the output should be) as there are parameters. The test cases should not be arbitrary, but the should meaningfully check the special values of the parameters.
