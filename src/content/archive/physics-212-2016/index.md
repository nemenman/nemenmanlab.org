---
title: "Computational Modeling For Scientists And Engineers"
group: "physics-212-2016"
wiki_title: "Physics 212, 2016: Computational Modeling For Scientists And Engineers"
order: 0
index: true
kind: "course"
code: "Physics 212"
year: 2016
group_title: "Computational Modeling for Scientists and Engineers"
summary: "In this course, various computational modeling methods will be introduced to study specific examples derived from physical, biological, chemical, and social systems."
---

## News

- Project for Module 5 is online. Extra credit assignments are online. Reading for Module 5 in the Syllabus has changed. (9 April 2016)
- Projects for Module 4 are online. (29 March 2016)
- Notes and scripts for Module 4 are online. (29 March 2016)
- We've had a lot of changes recently: no midterm, different due dates, re-weighted grading scale. Please make sure you read through the syllabus updates. (21 March 2016)
- Module 3 script shown in class has been uploaded. (3 March 2016)
- Module 3 projects have been uploaded. (1 March 2016)
- Module 1 projects have been uploaded. (24 January 2016)
- Stephen Frazier's office hour has been set. (19 January 2016)
- I've added specific Chapters that must be read in the Python tutorial for the first class module. (19 January 2016)
- Welcome to the class!

## About the class

Computation is one of the pillars of modern science, in addition to experiment and theory. In this course, various computational modeling methods will be introduced to study specific examples derived from physical, biological, chemical, and social systems. We will study how one makes a model, implements it in computer code, and learns from it. We will focus on modeling deterministic dynamics, dynamics with randomness, on comparison of mathematical models to data, and, at the end, on high performance computing. Students will learn Python programming language and will work on computational modeling projects in groups.

## Logistics

- Office Hours
  - Ilya Nemenman -- Monday, 4:00-5:00, and by appointment, MSC N240 or N117A if too many people
  - Stephen Frazier -- Thursday, 3:30-4:30, and by appointment, MSC N113 or N117A if too many people

- [Syllabus](/archive/physics-212-2016/syllabus/) -- I will try to keep close to the syllabus in the course of the semester, but some deviations are possible.

- [Anaconda Python distribution](https://www.continuum.io/downloads)

- Weekly office hours: Monday, 4:00-5:00, subject to change

- **Main Textbook**: A Shiflet and G Shiflet, *Introduction to Computational Modeling*, <https://web.archive.org/web/20160112192606/http://wofford-ecs.org/IntroComputationalScience/>

- Python Tutorial: J Kinder and P Nelson, *Student Guide to Python for Physical Modeling*, <http://press.princeton.edu/titles/10644.html>

  - See also [Computational Modeling and Visualization of Physical Systems with Python](http://www.wiley.com/WileyCDA/WileyTitle/productCd-EHEP003413.html) by J Wang and [Computational Physics](http://www.physics.purdue.edu/~hisao/book/) by Giordano and Nakanishi.
  - The bible of scientific computing is [Numerical Recipies](http://numerical.recipes) by Press et al.

## Lecture Notes and Detailed Schedule

- Class schedule is available in [the syllabus](/archive/physics-212-2016/syllabus/).
- Below are notes and scripts that we have written for the class.
- Additional lecture notes are in [the syllabus](/archive/physics-212-2016/syllabus/).

**Module 1:**

- [Simple Malthusian growth](/archive/files/Malthus.txt) -- note that there's some bug in my homepage setup, and I cant upload the file with .py extension; it's been uploaded with .txt; rename it after downloading.
- [Malthusian growth with a loop](/archive/files/Malthus1.txt) -- same comment about .txt applies as above.
- Notice that during the in-class lecture, we forgot to talk about indentation in Python. Read about it in the Guide.

**Module 2:**

- We talked a bit about the little endian vs. the big endian representation of a number. See more here <https://en.wikipedia.org/wiki/Endianness>. Related, for those who haven't read it, I highly recommend [Gulliver's Travels](https://en.wikipedia.org/wiki/Gulliver%27s_Travels) book.
- [GrowthFunctions](/archive/files/GrowthFunctions.txt) -- module defining different growth functions
- [Integrators](/archive/files/Integrators.txt) -- module defining different integrators (Euler and Runge-Kutta second order)
- [Module 2](/archive/files/Module2.txt) -- catch-all scripts I used during the class; this is a bit messy
- In class, we discussed the following common coding mistakes, which will be grounds for reduced grades in the future:
  1.  Editing arguments to a function inside the function.
  2.  Editing arguments to a function inside the function, and then returning these changed variables at the same time.
  3.  Allowing for infinite *while* loops.
  4.  Appending list or arrays instead of pre-allocating arrays.
  5.  Using constants by their numerical values, instead of by name, and defining the name in the preamble.
  6.  Not writing out explicitly constants that are 1 or 1.0
  7.  Violating scopes by using global variables, etc.
  8.  Additionally, we discussed that all of your codes must be verified by running them for roughly as many independent special cases (where you know what the output should be) as there are parameters.

**Module 3:**

- See the Syllabus for the reminder of which specific optimization methods we discussed.
- Module 3 -- the scripts I showed in class.

**Module 4:**

- See the Syllabus for additional notes and questions.
- Module 4: Monte Carlo -- scripts shown in class for Monte Carlo integration of a function, and for verifying the speed of convergence of Monte Carlo simulations.
- Module 4: Random Numbers -- scripts shown in class for generating different types of random numbers.
- Module 4: Random Walks -- scripts shown in class for different Random Walk simulations.

## Projects

Available projects for each class module will be listed here about one class before you need to start working on them. You will need to choose the project for your group and email me for approval.

### Class Module 1

The following projects may be chosen for this module. For each of these projects, you should plot the dynamics of the output variables as a function of time, at varying parameters. Explain the plots. For each of the projects, try to provide an analytic solution of the problem.

**Book Module 2.2, Project 4**

Write a model that will calculate how many months the person has to wait to buy a car given inflation rate, depreciation, additional savings. Add an additional step in your model so that money in the savings account grows with an interest.

**Book Module 2.3, Project 3**

Investigate what controls the speed with which the population tracks the changing carrying capacity. Output a prediction for the population at a certain time, with all parameters given.

**Book Module 2.3, Project 5**

Add additionally that the vacationers eat a varying fraction of trout, depending on how many vacationers are there (input). How many fish are in the lake at any time?

**Book Module 2.5, Project 2-3**

Combine the two projects and develop a model for the two-compartmental aspiring system, with a loading doze. The output should be the amount of aspirin in the system at any time. Can you change your code to have an arbitrary delivery schedule?

**Book Module 2.5, Project 6**

Use this model in reverse: given a certain needed concentration of the drug in the body, make your code to estimate what should the dosage per kg of the body mass be.

**Book Module 7.1, Project 1**

**Book Module 7.2, Project 1**

**Book Module 7.3, Projects 5-7**

**Book Module 7.6, Project 1**

### Class Module 2

The following projects may be chosen for this module. For each of these projects, you should plot the dynamics of the output variables as a function of time, at varying parameters. Explain the plots.

**Solar System - many body problem \[hard!\]**

Read about [Milankovitch cycles](https://en.wikipedia.org/wiki/Milankovitch_cycles). Let's try to reproduce them. Build and implement a model of the Solar system, which includes the Sun, the Earth, Jupiter. Find the parameters of the orbits online. Use odeint in SciPy to integrate the system for a million years. Integrating over a million years with a good temporal resolution could be hard, so maybe break a million years into shorter blocks, and then glue back. What the Earth perihelion, aphelion, and mean distance from the sun, axial tilt (plot the values every hundred years)? Can you reproduce the figures in the link above? Consider adding Saturn to your model.

**Book Module 3.3, Project 2**

Write a model for a linearly damped pendulum with periodic driving force $A \cos \omega t$. Read discussion of [driven pendula](https://web.archive.org/web/20150709094600/http://www.phy.davidson.edu:80/StuHome/chgreene/chaos/Pendulum/pendulum_content_frame.htm). A chaotic pendulum is a pendulum, for which two trajectories that start from nearly the same initial condition diverge quickly. Explore under which conditions this pendulum is periodic or chaotic. Use odeint from SciPy and also write your own Euler integrator. Compare results.

**Book Module 3.4, Project 3**

Use odeint from SciPy and also write your own Euler integrator. Compare results.

**Book Module 4.1, Project 2**

Use odeint from SciPy and also write your own Euler integrator. Compare results.

**Book Module 4.2, Project 3**

Use odeint from SciPy and also write your own Euler integrator. Compare results. If you know linear algebra, use the multi-dimensional version of Newton's algorithm to solve numerically for the equilibrium point in (a). Interpret your finding.

**Book Module 4.3, Project 9**

Use odeint from SciPy and also write your own Euler integrator. Compare results.

**Book Module 4.3**

Instead of SARS, develop the model of zombie apocalypse. The rules are that once someone is a zombie, s/he doesn't recover. Zombies only die, either on their own, or because they are killed by humans. Humans get converted to zombies when bitten. Humans also dies from natural causes, but they also procreate (but zombies don't). Explore parameter values for the model. What are the possible outcomes of the infection depending on the parameter values? Use odeint from SciPy and also write your own Euler integrator. Compare results.

**Book Module 4.5, Projects 2 and 8, combined**

Use odeint from SciPy and also write your own Euler integrator. Compare results.

**Book Module 6.4**

Implement your own Runge-Kutta 4 solver and do Project 3-5 in Module 6.2 but with RK4 solver.

**Book Module 7.9, Project 2 -- Hodkin-Huxley neuron**

### Class Module 3

The following projects may be chosen for this module. For each of these projects, you should develop a dynamical model of the process, and then use *odeint* to solve the differential equations. After you verify your model/solution, you should then do nonlinear least squares fitting to find the parameters of your model that fit the specific data sets that have been provided. You should then compare predictions of your model for times beyond those, for which the data is given, to the linear regression statistical polynomial fits to the data. Finally explain which of the two fit types you expect to do a better job. Two problems below have real data, and for one you will need to generate "simulated experimental data" yourself. For the problems where you are fitting real data, it is possible that you won't be able to make your fits work very well -- real data are hard this way. While I certainly would like you to make the fits work, I won't be subtracting points if the fits are somewhat imperfect, as long as your fitted variables and the trajectories with these variables are physically/biologically reasonable and *somewhat* fit the data. I encourage you to work with real data rather than with the simulated data.

**Bacteria growing in liquid (real data)**

Bacteria grow by metabolizing nutrients in their environment. The growth rate of bacteria as a function of $\rho$, the nutrient concentration is given by the Monod law, $\frac{dn}{dt}=n \frac{g_{\rm max}\rho}{\rho+K}$, where $K$ is known as the Monod constant. Thus at low $\rho$, the nutrient availability limits the growth rate, and at high $\rho$, there's the maximum growth rathe $g_{\rm max}$ (this maximum growth rate is typically on the order of one per hour). In order to make one bacterium per ml, $a$ microgram/ml of nutrient must be metabolized. (Actually, in experiments, we don't measure the bacterial concentration, but we measure the number of so-called Colony Forming Units, or CFU/ml --- the concentration of bacteria that, when put on an agar plate, will form new colonies; but for all practical purposes the number of bacteria and CFU are the same thing). At the same time, as they grow on nutrients, bacteria die with the usual first-order rate $\mu$ (typically one per hundred hours or so). Finally, when put in a new environment, bacteria typically do not grow for a certain lag time $\tau$ (for this problem, use $\tau=4.5$ hours), while they adjust to the environment. Imagine now that we put 0.2 microgram/ml of glucose in a liquid medium at time zero, and we put originally 50 bacteria/ml into the liquid. Develop a model of bacteria growing, while metabolizing the glucose. You should have two differential equations in your model, one describing the bacteria, and the other describing the glucose concentration. Now solve this model using *odeint*, and use *curve_fit* function to fit the parameters of the model to the data in [this file](/archive/files/Bacteria.txt) (the file contains two columns -- the first column are time points, and the second are CFU/ml measurements). You will need to find $g_{\rm max},a,K,\mu$ from your fitting. You should use logarithm of the bacterial concentration (not the concentration itself) as your y-value when doing the fits. Help your fitting routine by fitting linear relations to different regimes of the logarithmic growth plot manually first, and then use these manually fitted parameter values as inputs to *curve_fit*. This will require you to understand how the growth curve features relate to the model parameters. Report the final fitted parameter values. Do they make sense? Now fit the data using polynomials of different degrees (rather than the growth model). Which fit (polynomial or the model) produces more reasonable extrapolations of the measured CFU for $t=150$ hours? *Thanks to Xinxian Shao for the data.*

**Autoregulation in bacterial gene expression (real data)**

Genes in living cells are transcribed into messenger RNA (mRNA), which are later translated into proteins. In a famous paper by Rosenfeld et al., 2002, the author measured the expression of a protein in a single cell. The protein was a transcription factor, namely an inhibitor, which inhibited its own mRNA production. We can write the production rate of the mRNA as $\frac{dm}{dt}=\frac{\Gamma}{K+p}$, where $p$ is the protein concentration, and $\Gamma,K$ are constants. The mRNA is then degraded with the first order rate $\mu_m$. The protein is produced from mRNA in a linear fashion with the rate $a$ per mRNA molecule, and it's degraded linearly as well (but with the rate $\mu_p$ distinct from mRNA). Develop the model of the protein and mRNA dynamics in this cell. Note that the maximum number of proteins produced scales as the rate of mRNA production times the rate of protein production per mRNA. Since we have access to just protein concentration (in arbitrary units), we cannot determine protein and mRNA production rates independently, but only their product. To avoid this complication, you should set the rate of protein production from mRNA to 1.0. You should have two differential equations in your model, one describing the mRNA concentration, and the other describing the protein concentration. Now solve this model using *odeint*, and use *curve_fit* function to fit the parameters of the model to the data in [this file](/archive/files/Protein.txt) (the file contains two columns -- the first are the time points in units of bacterial cell cycle time, and the second are protein concentrations in arbitrary units). In this experiment, the initial concentration of the mRNA and the protein were zero. You will need to find $\Gamma, K,\mu_m, \mu_p$ from your fitting. Think if you can help your fitting routine by fitting simple relations to different regimes of the experimental curve first, and then use these manually fitted parameter values as inputs to *curve_fit*. Report the final fitted parameter values. Do they make sense given what you know about bacterial cells? Now fit the data using polynomials of different degrees (rather than the dynamical model you just developed). Which fit (polynomial or the model) produces more reasonable extrapolations of the protein concentration to $t=3$ cell cycles? *Data reproduced from Phil Nelson's*Physical Modeling of Living Systems*.*

**Project 15 in Module 8.3 (but heavily modified)**

Develop the model of the rocket, to match Figure 3.4.2. Generate the trajectory of a rocket for these data as an array of $x$ at an array of times $t$ using *odeint*. Now let's simulate a noisy experimental measurement of this trajectory by adding a 5% noise by command x=x\*(1+.05\*np.random.randn(x.size)). Save your t and x in a file (read Chapter 3.2 in Python tutorial) -- this will be the data you will be fitting. Discard the velocity data. Now use *odeint*, *curve_fit*, and your developed model to fit the parameters of the model to the simulated experimental data. You will need to fit four parameters to this data (initial mass, rocket mass, burnout time, specific impulse). Think if you can help your fitting routine by fitting simple relations to different regimes of the "synthetic experiment" curve first, and then use these manually fitted parameter values as inputs to *curve_fit*. Report the final fitted parameter values. Are they close to what you used when you generated the synthetic data? Now fit the position data using polynomials as proposed in Project 15. Which fit (polynomial or the model) produces more reasonable extrapolations of the rocket position at $t=500$?

### Class Module 4

The following projects may be chosen for this module.

**Project 1 in book module 10.3.**

Develop the simulation, and then perform all the tasks required.

**Project 1 in book module 10.5**

Develop the simulation, and then perform all the tasks required.

**Diffusion Limited Aggregation**

(This physical process is related to the biological model in the book module 10.5). Read about diffusion limited aggregation (DLA) [here](http://paulbourke.net/fractals/dla/). Implement DLA starting with one point on an otherwise empty page. Illustrate your DLA clusters. Simulate a few of these clusters and plot how the typical size of a cluster depends on time.

### Class Module 5

We will all work on just a single project now for a change. And there's now an extra credit as well:

**Project:** Develop simulations and animations for the bar modeled in book module 10.2 using several boundary conditions: a simulations with absorbing boundary conditions with an arbitrary constant temperature value, periodic boundary conditions, and reflecting boundary conditions, describe the results, emphasizing the differences between what you see.

**Extra credit:** Develop a *sequential* program to simulate the *parallel*, multiprocessor solution of the diffusion equation described above. Namely, create a function for the root’s algorithm with parameters for the number of processes (p), then create a function that can be called multiple times from the root to work on different chunks of the grid, on which we are solving the heat equation. Each such function would represent a process. Make sure this solver processor function keeps track of which parts of the grid have been updated by, presumably, other processes, so that no process runs too far away from the others. While you won't be able to check whether this works in a real parallel processing scenario, at least run this sequential algorithm in regular Python and make sure the output agrees with what you get from the main project.

**Extra-extra credit:** For really adventurous, try to take your algorithm from the Extra Credit assignment, and transform it into a real multi-processor code.

## Quizzes

**Module 1 Quiz (Feb 1, 2016)**

The quiz was here during class time.

**Module 2 Quiz (Feb 22, 2016)**

The quiz was here during class time.

**Module 3 Quiz (Mar 21, 2016)**

The quiz was here during class time.

**Module 4 Quiz (Apr 6, 2016)**

The quiz was here during class time.

**Module 5 Quiz (Apr 25, 2016)**

The quiz was here during class time.
