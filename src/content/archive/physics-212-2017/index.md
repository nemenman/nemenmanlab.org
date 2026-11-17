---
title: "Computational Modeling For Scientists And Engineers"
group: "physics-212-2017"
wiki_title: "Physics 212, 2017: Computational Modeling For Scientists And Engineers"
order: 0
index: true
kind: "course"
code: "Physics 212"
year: 2017
group_title: "Computational Modeling for Scientists and Engineers"
summary: "In this course, various computational modeling methods will be introduced to study specific examples derived from physical, biological, chemical, and social systems."
---

## News

- Many of you have various academic conflicts in the next few weeks and have asked for postponing of the Module 4 project submission deadline. For uniformity, I will allow everyone to submit Module 4 one week later than it is said in the Syllabus. The new deadline is **Apr 17**. That being said, I suggest you do your best to submit earlier -- I won't be able to extend the Module 5 deadline. (3 April 2017)
- Class on Monday, Mar 13, will be lectured by Katherine Overman. Class on Wednesday, Mar 15, is cancelled. Please read the lecture notes instead. (13 March 2017)
- Class on Wednesday, Feb 23, will be lectured by Dr. David Hofmann. There won't be an office hour this Wednesday, and instead it will be held 3:30pm Friday, Feb 24. (21 February 2017)
- I am slowly updating lecture notes -- keep checking. (21 February 2017)
- Class on Feb 6 will proceed regularly. Ilya will be lecturing. (31 January 2017)
- Make sure that this week you choose you group and your project, and email me this information. Please make sure your email subject line starts with PHYS212/BIOL212. (25 January 2017)
- TA office hours information has been added. (18 January 2017)
- Web form for submitting your in-class work has been added. See Logistics. (18 January 2017)
- Two projects for Module 1 have been posted. Choose one -- and good luck. (12 January 2017)
- Welcome to the class!

## About the class

Computation is one of the pillars of modern science, in addition to experiment and theory. In this course, various computational modeling methods will be introduced to study specific examples derived from physical, biological, chemical, and social systems. We will study how one makes a model, implements it in computer code, and learns from it. We will focus on modeling deterministic dynamics, dynamics with randomness, on comparison of mathematical models to data, and, at the end, on high performance computing. Students will learn Python programming language and will work on computational modeling projects in groups.

There are three goals that I have for students in the class:

1.  To learn to translate a descriptive problem of a natural phenomenon into a mathematical / computational model.
2.  To learn how to solve such models using computers, and specifically using the Python programming language. This includes learning how to verify that the solution you produced is a correct solution.
3.  To learn basic algorithms used in computational science.

In addition, a minor goal of the class is to improve the students' ability to communicate their process of thinking and their results to others. To this extent, the class will require writing project reports, which will be graded on their clarity and completeness.

## Logistics

- Labs: Thu or Fri 2:30-5:30; MSC N303

- Office Hours
  - Professor: Ilya Nemenman -- Wednesday, 3:30-4:30 (subject to change), and by appointment, MSC N240 or N117A if too many people.
  - Lab TA: Katherine Overman -- Monday, 1:00-3:00, O. Wayne Rollins 2021.
  - In-class undergraduate TA: Horan Wang, no office hours.

- [Syllabus](/archive/physics-212-2017/syllabus/) -- I will try to keep close to the syllabus in the course of the semester, but some deviations are possible.

- [Anaconda Python distribution](https://www.continuum.io/downloads) (install Python v 3.X)

- **Main Textbook**: J Kinder and P Nelson, *Student Guide to Python for Physical Modeling*, <http://press.princeton.edu/titles/10644.html>

  - This tutorial is not a complete textbook. I will try to post additional lecture notes online as needed, or to direct you to additional chapters in other textbooks.
  - See also [Computational Modeling and Visualization of Physical Systems with Python](http://www.wiley.com/WileyCDA/WileyTitle/productCd-EHEP003413.html) by J Wang and [Computational Physics](http://www.physics.purdue.edu/~hisao/book/) by Giordano and Nakanishi.
  - The bible of scientific computing is [Numerical Recipies](http://numerical.recipes) by Press et al.

- At the end of each class where we do coding, please [submit your work](https://docs.google.com/forms/d/e/1FAIpQLSeNvrPddCgvMfHdlSA8uYDddBFqLK81Rrr4l7jfozud6J7iww/viewform).

## Lecture Notes and Detailed Schedule

- Class schedule is available in [the syllabus](/archive/physics-212-2017/syllabus/).
- Below I will post notes and scripts that we have written for the class.
- Additional notes may be found in [the syllabus](/archive/physics-212-2016/syllabus/).

**Module 1:**

- [Lecture 1](/archive/physics-212-2017/lecture-1-introduction/), Jan 11. Introduction.
- Lab 1, Jan 12-13: Chapter 1 of the Python Student Guide
- [Lecture 2](/archive/physics-212-2017/lecture-2/), Jan 18: Chapter 1 of the Python Student Guide. Intro to Python.
- Lab 2, Jan 19-20: Chapter 2 of the Python Student Guide
- [Lecture 3](/archive/physics-212-2017/lecture-3-the-modeling-process/), Jan 23. Introduction to the modeling process. The simplest model -- linear (aka, exponential) growth.
- Lecture 4, Jan 25. Visit by Prof Bialek, Phi Beta Kappa visiting scholar. Lecture on how to model gene regulation -- will be of use in Modules 3 and 4.
- Lab 3, Jan 26-27: Chapter 3 of the Python Student Guide, and choose your projects and start coding them
- [Lecture 5](/archive/physics-212-2017/lectures-5-6/), Jan 30. The simplest model, continued. Chapters 2 and 3 in Python Student Guide.
- [Lecture 6](/archive/physics-212-2017/lectures-5-6/), Feb 1. More on Python: loops, branching, slicing. Chapters 2 and 3 in Python Student Guide.
- Scripts for this Module:
  - [Simple Malthusian growth](/archive/files/Malthus.txt) -- note that there's some bug in my homepage setup, and I cant upload the file with .py extension; it's been uploaded with .txt; rename it after downloading.
  - [Malthusian growth with a loop](/archive/files/Malthus1.txt) -- same comment about .txt applies as above.

**Module 2:**

- [Lecture 7](/archive/physics-212-2017/lecture-7/), Feb 6. Python: Functions and common coding errors.
- [Lecture 8](/archive/physics-212-2017/lecture-8/), Feb 8. Numerical integration of differential equations.
- [Lab 4](/archive/physics-212-2017/lab-4/), Feb 9-10: More Python.
- [Lecture 9](/archive/physics-212-2017/lecture-9-errors/), Feb 13. Errors.
- [Lecture 10](/archive/physics-212-2017/lecture-10/), Feb 15. Dynamical systems and solution of nonlinear equations.
- [Lab 5](/archive/physics-212-2017/lab-5-starting-with-project-2/), Feb 16-17: Doing project 2.
- [Lecture 11](/archive/physics-212-2017/lecture-11-good-coding-practices/), Feb 20. Good coding practices.
- Scripts for this Module:
  - [GrowthFunctions](/archive/files/GrowthFunctions_v2.txt) -- module defining different growth functions.
  - [Integrators](/archive/files/Integrators_v2.txt) -- module defining different integrators (Euler and Runge-Kutta second order).
  - [Newton method](/archive/files/Newton.txt) -- solving nonlinear equations using the Newton's method.
  - [Module 2](/archive/files/Module2_v2.txt) -- catch-all scripts I used during the class; this is a bit messy.

**Module 3:**

- [Lecture 12](/archive/physics-212-2017/lecture-12-more-python-scopes-and-all-that/), Feb 22. More Python: Scopes and all that.
- Lab 6, Feb 23-24: Doing project 2.
- [Lecture 13](/archive/physics-212-2017/lecture-13/), Feb 27. Introduction to optimization -- linear regression.
- [Lecture 14](/archive/physics-212-2017/lecture-14/), Mar 1. Introduction to nonlinear optimization.
- [Lab 7](/archive/physics-212-2017/lab-7/), Mar 2-3: Loose ends, Starting project 3.
- Spring break: Mar 6-10
- [Lecture 15](/archive/physics-212-2017/lecture-15/), Mar 13. Multidimensional optimization, and choosing right initial conditions.
- Lecture 16, Mar 15. **Lecture cancelled**.
- Lab 8, Mar 16-17, Working on Module 3 projects.
- Lecture 17, Mar 20. Tying loose ends, and Quiz 3.
- Lab 9, Mar 23-24, Working on Module 3 projects.

**Module 4:**

- [Lecture 18](/archive/physics-212-2017/lecture-18-introduction-to-randomness-how-are-pseudo-random-numbers-generated/), Mar 22. Introduction to random numbers. How are pseudo-random numbers generated?

- Lecture 19, Mar 27. Different type of random numbers, and different uses of random numbers

- Lecture 20, Mar 29. Random walks and central limit theorem.

- [Lab 10](/archive/physics-212-2017/lab-10/), Mar 30-31, Working on Module 3 projects.

- Lecture 21, Apr 3. Agent-based and Cellular Automata simulations.

- Lecture 22, Apr 5. Loose ends

- Lab 11, Apr 6-7, Doing the projects.

- Scripts for this Module:

  - [rnd_generation](/archive/files/Rnd_generation.txt) -- generating different random numbers.
  - [rnd_use](/archive/files/Rnd_use.txt) -- using random numbers.
  - [rw](/archive/files/Rw.txt) -- random walk simulations.
  - [ab_ca](/archive/files/Ab_ca.txt) -- agent-based and cellular automata simulations.
  - Additional notes for this Module:
    - Think about the following question: I generate digits between 0 and 9 at random, uniformly. I then write them down in a sequence, 6 such random numbers at a time. Are the resulting 6-digit numbers distributed uniformly between 0 and 999,999? Now take a bunch of physical constants, like speed of light, Planck constant, Boltzmann constant, etc. Calculate the frequency of occurrence of digits 0...9 in the numerical values of these constants in the SI units. Are you surprised by the frequency distribution? Can you explain what you see?

**Module 5:** High performance computing

- [Lecture 23](/archive/physics-212-2017/lecture-23/), Apr 10. Intro to high performance computing
- [Lecture 24](/archive/physics-212-2017/lecture-24/), Apr 12. The heat diffusion equation, the boundary conditions, and solving it using a single processor
- [Lab 12](/archive/physics-212-2017/lab-12/), Apr 13-14, Solving heat diffusion.
- [Lecture 25](/archive/physics-212-2017/lecture-25/), Apr 17. The same but on multiple processors.
- Lecture 26, Apr 19. More HPC problems: introducing the projects
- Scripts for this Module:
  - [DiffusionMP](/archive/files/DiffusionMP.txt) -- solving the diffusion equation with sequential or concurrent processing.

**Review:**

Lecture 27, Apr 24. Quiz 5 and review of the material for the exam.

## Projects

Available projects for each class module will be listed here about one class before you need to start working on them. If multiple projects are offered, you will need to choose the project for your group and email me for approval.

### Class Module 1

Choose and do one of the two projects.

**Project 1:** Cyanobacteria can use sunlight to make energy. Thus the carrying capacity of a Petri dish for cyanobacteria is time-dependent. Model the population growth of cyanobacteria in such conditions.

**Project 2:** Read about the nuclear decay chains [this Wikipedia article](https://en.wikipedia.org/wiki/Decay_chain#Uranium_series). Let's suppose we start with 1 g of Thorium-234 (Uranium series). Model the next three steps of nuclear transformation of this material. How much of which element will be there at a given time?

### Class Module 2

Choose and do one of the three projects for this module.

**Project 1:** Model the classical Lotka-Volterra predator-prey system. Plot the phase portrait of the system for various parameter values. Finally, sketch the phase diagram of the system: for which parameter values does it oscillate, and for which does it go to a fixed point? Use odeint from SciPy and also write your own integrator. Compare results.

**Project 2:** (hard!) Read about [Milankovitch cycles](https://en.wikipedia.org/wiki/Milankovitch_cycles). Let's try to reproduce them. Build and implement a model of the Solar system, which includes the Sun, the Earth, Jupiter. Find the parameters of the orbits online. Use odeint in SciPy to integrate the system for a million years. Integrating over a million years with a good temporal resolution could be hard, so maybe break a million years into shorter blocks, and then glue the blocks back together. Watch the Earth perihelion, aphelion, and mean distance from the sun, axial tilt (plot the values every hundred years)? Can you reproduce the figures in the link above? Consider adding Saturn to your model.

**Project 3:** Write a model for a linearly damped pendulum with periodic driving force $A \cos \omega t$. Read discussion of [driven pendula](http://www.phy.davidson.edu/StuHome/chgreene/chaos/Pendulum/pendulum_content_frame.htm). A chaotic pendulum is a pendulum, for which two trajectories that start from nearly the same initial condition diverge quickly. Explore under which conditions this pendulum is periodic or chaotic. Plot the phase space of the model. Use odeint from SciPy and also write your own integrator. Compare results.

### Class Module 3

The following projects may be chosen for this module. For each of these projects, you should develop a dynamical model of the process, and then use *odeint* to solve the differential equations. After you verify your model/solution, you should then do nonlinear least squares fitting to find the parameters of your model that fit the specific data sets that have been provided. You should then compare predictions of your model for times beyond those, for which the data is given, to the linear regression statistical polynomial fits to the data. Finally explain which of the two fit types (linear regression vs dynamical model) you expect to do a better job. The problems below have real data. Thus it is possible that you won't be able to make your fits work very well -- real data are hard this way. While I certainly would like you to make the fits work, I won't be subtracting points if the fits are somewhat imperfect, as long as your fitted variables and the trajectories with these variables are physically/biologically reasonable and *largely* fit the data.

**Bacteria growing in liquid**

Bacteria grow by metabolizing nutrients in their environment. The growth rate of bacteria as a function of $\rho$, the nutrient concentration is given by the Monod law, $\frac{dn}{dt}=n \frac{g_{\rm max}\rho}{\rho+K}$, where $K$ is known as the Monod constant. Thus at low $\rho$, the nutrient availability limits the growth rate, and at high $\rho$, there's the maximum growth rathe $g_{\rm max}$ (this maximum growth rate is typically on the order of one per hour). In order to make one bacterium per ml, $a$ microgram/ml of nutrient must be metabolized. (Actually, in experiments, we don't measure the bacterial concentration, but we measure the number of so-called Colony Forming Units, or CFU/ml --- the concentration of bacteria that, when put on an agar plate, will form new colonies; but for all practical purposes the number of bacteria and CFU are the same thing). At the same time, as they grow on nutrients, bacteria die with the usual first-order rate $\mu$ (typically one per hundred hours or so). Finally, when put in a new environment, bacteria typically do not grow for a certain lag time $\tau$ (for this problem, use $\tau=4.5$ hours), while they adjust to the environment. Imagine now that we put 0.2 microgram/ml of glucose in a liquid medium at time zero, and we put originally 50 bacteria/ml into the liquid. Develop a model of bacteria growing, while metabolizing the glucose. You should have two differential equations in your model, one describing the bacteria, and the other describing the glucose concentration. Now solve this model using *odeint*, and use *curve_fit* function to fit the parameters of the model to the data in [this file](/archive/files/Bacteria.txt) (the file contains two columns -- the first column are time points, and the second are CFU/ml measurements). You will need to find $g_{\rm max},a,K,\mu$ from your fitting. You should use logarithm of the bacterial concentration (not the concentration itself) as your y-value when doing the fits. Help your fitting routine by fitting linear relations to different regimes of the logarithmic growth plot manually first, and then use these manually fitted parameter values as inputs to *curve_fit*. This will require you to understand how the growth curve features relate to the model parameters. Report the final fitted parameter values. Do they make sense? Now fit the data using polynomials of different degrees (rather than the growth model). Which fit (polynomial or the model) produces more reasonable extrapolations of the measured CFU for $t=150$ hours? *Thanks to Xinxian Shao for the data.*

**Ball in a fluid**

A ball of mass $m=0.1$ kg made of wood with density $\rho=700 {\rm kg/m^3}$ is being released in an unknown fluid with zero velocity, and it falls down under the free fall acceleration (the value of which you can assume known), the buoyancy force (which depends on the difference of weight of the displaced fluid and the ball, $(\rho_{\rm ball}-\rho_{\rm fluid})Vg$, where $V$ is the volume, and $\rho_{\rm fluid}$ is the fluid density, and is unknown), and the drag force. The drag force on the body opposes the velocity and can be written as $F_d=av+bv^2$, where $a, b$ are some unknown coefficients. Develop a model of this process, to simulate the motion of a ball in fluid. Solve this model using *odeint*. Download [this simulated data file](/archive/files/Ball.txt), where the first column is the time, and the second column is the distance traveled by the ball. Now use *curve_fit* to find $\rho_{\rm fluid},a,b$ from this data. This will require you to understand how the features of the position curve relate to the model parameters. Report the final fitted parameter values. Do they make sense? Can you guess which fluid is the ball falling in? Now fit the data using polynomials of different degrees (rather than the dynamical falling model). Which fit (polynomial or the model) produces more reasonable extrapolations of the measured position for $t=50\dots 150$ seconds? Note that, to guess the fluid, you may need to know that the drag force coefficients are given by $a=6\pi\eta r$, where $\eta$ is the [dynamic viscosity](https://en.wikipedia.org/wiki/Viscosity#Dynamic_viscosity) of the fluid, and $r$ is the radius of the ball; and $b=1/2 \rho_{\rm fluid}\pi r^2 c_d$, where $c_d$ is the drag coefficient, which for a fast-moving smooth ball is between 0.1 and 0.3.

### Class Module 4

The following projects may be chosen for this module. For each of these projects, you should develop a stochastic model of the process. Before you start developing the model, think about whether you want to develop an agent-based model, a cellular automaton model, or a certain mixture of the two.

**Diffusion-limited aggregation**

Read about diffusion limited aggregation (DLA) [here](http://paulbourke.net/fractals/dla/). Implement DLA as follows. Start with a large square lattice (100x100 or larger; make this a changeable parameter in the model). Make the central point of the lattice the beginning of the DLA cluster (a stationary dot). Release a walking dot anywhere at random on the lattice boundary. Let it perform random walk, and at each steep check if the walking dot comes in contact with a stationary one. If it does, the walking dot becomes stationary itself. If it comes in contact with the boundary, it gets reflected. Once the dot becomes stationary, repeat the cycle by releasing the next walking dot. Keep repeating this until the cluster consists of a larger number of stationary dots (e.g., 1000 -- again, make this a changeable parameter. At every attachment event, record the state of the lattice (which points have a stationary dot, and which don't), and combine these frames into a movie, as shown in Chapter 7.2 of the book. In your report, instead of a movie, show a few time-lapsed images of the cluster. Finally, measure the maximum horizontal extent of the cluster at every frame and plot it as a function of time. How does the size grow with time? The DLA cluster models the deposition of molecules on surfaces, but also growth of bacteria in a bacterial film, where the movable dot is now a food source, and the stationary dots are bacteria that divide when the food gets eaten.

**Annihilation in different dimensions**

A chemical annihilation reaction, $A+A\to0$, is one of the simplest reactions one can think of. But it also illustrates how properties of random walks depend strongly on the dimension of the system. First, write down the chemical kinetics equation for the system and solve it analytically. At $t\to\infty$, how does the concentration of A decrease? Now let's simulate this problem. Initiate a lattice of a linear size L in 1, 2, and 3 dimensions (it will be an array of size L, LxL, and LxLxL). Play with different values of L, as long as it is much larger than 1. Release N random walkers onto this lattice at random points (again, explore different *even* values of N). As the walkers do their 1, 2, and 3 dimensional walks, you should check if any pair of them ends on top of each other. When this happens, the two walkers annihilate each other and disappear. As time increases, measure the number of remaining walkers (you may need to average them over many repeats). Does the number of walkers in different dimensions decrease differently with time? Does any dimension match what we would expect from the analytical, deterministic solution? This model is used in various material science contexts, but also in population biology scenarios.

### Class Module 5

The following two projects are available for this module. For each of these projects, you will need to develop a discretized space model of the process. You will then write code for sequential simulation of the system. Finally you will write code for simulation of the system using a pool of workers of an arbitrary size. In your report, you will need to output (besides the usual verification figures) time lapse images of the dynamics of your system (a few frames from a movie). After that, the final plot should be the time it took to solve the problem vs. the number of workers in the pool, for the number of workers going from 1 to 10 or so.

**Game of life**

Game of Life is a cellular automaton devised by John Conway, a mathematician, in 1970. The rules of the game are simple:

- The game is played on a large (potentially infinite) orthogonal grid
- The game uses discrete time
- Each cell on a grid can be in two states: alive (1) or dead (0)
- Every cell interacts with 8 of its neighbors to establish if it will be alive or dead at the next time step
- Thee transition rules are:
  - Any live cell with fewer than two lives neighbors dies (life is cooperative)
  - Any live cell with two or three live neighbors lives
  - Any live cell with more than three live neighbors dies (overpopulation)
  - Any dead cell with exactly three live neighbors becomes alive (is reproduced into)
  - All other deed cells remain dead

You can read more about the game on [Wikipedia](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life). Develop a model of the Game on multiple processors (as described above), and simulate it on a large lattice (few hundred by few hundred cells). Start with random initial conditions and see which examples of "living" organisms you can generate. Classify them. Plot the speed vs. number of workers plot.

**Reaction-diffusion in development**

A drosophila egg can be represented as an ellipsoid of rotation of about 500 um along the longest diameter, and half as long along the shortest. To start the development of a fertilized egg, a mother fly deposits a mRNA of a certain protein (bicoid) at the tip of the egg. The protein is translated from its mRNA (you should model this as a constant influx of bicoid molecules at the tip of the egg), and starts diffusing over the 3-d volume of the embryo with the diffusion coefficient of about 20 um^2/s (though there are complications, and the spread of the molecule is likely not purely diffusional). While the bicoid diffuses, it also degrades with the time scale of about 3 min (again, there are complications). As a result, a gradient of bicoid gets established, and, later in development, different parts of the embryo read out their position inside the embryo by measuring the bicoid concentrations next to them. Simulate this process on multiple cores. For this, you will need to use not cubic, but ellipsoidal boundaries and set reflecting boundary conditions on them. Plot time lapse images of the concentration field across the cross-section of the embryo. Graph the concentration along the major axis in steady state. Explore how this concentration depends on the diffusion constant and the decay time. How does the time to the steady state depend on the diffusion constant?

**Reaction-diffusion oscillations in excitable medium (hard)**

Belousov-Zhabotinsky reaction is a classic example of a nonlinear chemical oscillator (see more here <https://en.wikipedia.org/wiki/Belousov–Zhabotinsky_reaction>). It's typically modeled as an oreegonator (https://en.wikipedia.org/wiki/Oregonator), with three differential equations describing species X, Y, and Z (see also <http://www.scholarpedia.org/article/Oregonator>, and especially the scaled form in Eqs. (4,5,6)). Now imagine that all species diffuse with similar diffusion constants. Set up such simulations on a square grid using multiple cores and explore various diffusion constants. Can you find the parameter range at which the system, started with random initial conditions, develops the beautiful spiral waves seen in the first link above?

## Quizzes

**[Module 1 Quiz](https://docs.google.com/forms/d/e/1FAIpQLSdl_HwZ3mDF_XsAUaUX2iYWmHxHrC_H5kLRin4BW5h1rAPKJw/viewform) (Feb 1, 2017)**

**[Module 2 Quiz](https://docs.google.com/forms/d/e/1FAIpQLSf1KSUL0BBD4M4QHzVtBgN_APQZxWN1LTRXeZ0beE-8YlazCg/viewform) (Feb 20, 2017)**

**[Module 3 Quiz](https://docs.google.com/forms/d/e/1FAIpQLSdZj66GaY9s47Toxq7QZmrFx6HQg8Zuv2Y4ilx39yaCceya4w/viewform) (Mar 20, 2017)**

**[Module 4 Quiz](https://docs.google.com/forms/d/e/1FAIpQLSc7Bdip1OuoNjgLAY_BJM2wDZwLZVXCH8u0FKa-rmdfdhBVVQ/viewform) (Apr 5, 2017)**

**[Module 5 Quiz](https://docs.google.com/forms/d/e/1FAIpQLSfYY0_EetCkt8ZXsNgn9X34U4DE_LSmhgRf4A-pQaO0GI3wHg/viewform) (Apr 24, 2017)**
