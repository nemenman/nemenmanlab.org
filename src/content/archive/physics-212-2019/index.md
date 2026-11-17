---
title: "Computational Modeling For Scientists And Engineers"
group: "physics-212-2019"
wiki_title: "Physics 212, 2019: Computational Modeling For Scientists And Engineers"
order: 0
index: true
kind: "course"
code: "Physics 212"
year: 2019
group_title: "Computational Modeling for Scientists and Engineers"
summary: "In this course, various computational modeling methods will be introduced to study specific examples derived from physical, biological, chemical, and social systems."
---

## News

- Welcome to the class!

## About the class

Computation is one of the pillars of modern science, in addition to experiment and theory. In this course, various computational modeling methods will be introduced to study specific examples derived from physical, biological, chemical, and social systems. We will study how one makes a model, implements it in computer code, and learns from it. We will focus on modeling deterministic dynamics, dynamics with randomness, on comparison of mathematical models to data, and, at the end, on high performance computing. Students will learn Python programming language and will work on computational modeling projects in groups.

There are three goals that I have for students in the class:

1.  To learn to translate a descriptive formulation of a scientific problem into a mathematical / computational model.
2.  To learn how to solve such models using computers, and specifically using the Python programming language. This includes learning how to verify that the solution you produced is a correct solution.
3.  To learn basic algorithms used in computational science.

In addition, a minor goal of the class is to improve the students' ability to communicate their process of thinking and their results to others. To this extent, the class will require writing project reports, which will be graded on their clarity and completeness.

## Logistics

- Class Hours: M, W 10:00-11:15; MSC N 304

- Labs: Thu or Fri 2:30-5:30; MSC N303

- Office Hours
  - Professor: Ilya Nemenman -- Monday 11:30-1:00 (subject to change), and by appointment, MSC N240 or N117A if too many people.
  - TA: Qihan Liu -- Friday, 2:00-3:00, MSC N117E
  - TA: Jian Wang -- Wednesday, 2:00-3:00, MSC N118D

- [Syllabus](/archive/physics-212-2019/syllabus/) -- I will try to keep close to the syllabus in the course of the semester, but some deviations are possible.

- [Anaconda Python distribution](https://www.anaconda.com/download/) (install Python v 3.X)

- **Main Textbook**: J Kinder and P Nelson, *Student Guide to Python for Physical Modeling, 2nd edition*, <http://press.princeton.edu/titles/10644.html>

  - This tutorial is not a complete textbook. I will post additional lecture notes online as needed, or will direct you to additional chapters in other textbooks.
  - See also [Computational Modeling and Visualization of Physical Systems with Python](http://www.wiley.com/WileyCDA/WileyTitle/productCd-EHEP003413.html) by J Wang and [Computational Physics](http://www.physics.purdue.edu/~hisao/book/) by Giordano and Nakanishi.
  - The bible of scientific computing is [Numerical Recipies](http://numerical.recipes) by Press et al.

- At the end of each class where we do coding, please **submit your work** using a *Coding Snippet* assignment submission on Canvas.

## Lecture Notes and Detailed Schedule

- Class schedule is available in [the syllabus](/archive/physics-212-2019/syllabus/).
- Below I will post notes and scripts that we have written for the class. I will strive to post / update these notes before classes, but no promises.

### Module 1

**Jan 16:** [Lecture 1](/archive/physics-212-2019/lecture-1/), Introduction, and beginning of [Lecture 2](/archive/physics-212-2019/lecture-2/), Introduction to the Modeling Process. *Reading*: Chapter 1 of the Python Student Guide. Intro to Python.

**Labs 1, Jan 17-18:** Chapter 1 of the Python Student Guide; installing Anaconda. Chapter 2 of the Python Student Guide.

**Jan 23:** [Lecture 3](/archive/physics-212-2019/lecture-3/), First steps in Python. *Reading*: Chapters 1 and 2 of the Python Student Guide.

**Don't forget to submit your work at the end of the class** using the Coding Snippet assignment on Canvas.

**Labs 2, Jan 24-25:** Chapters 1 and 2 in the Student Guide. Finish all of the exercises from the class -- make sure to pay attention to exceptions, like division by zero and roots of negative numbers. Then if time permits, move to Appendix B (Jupyter notebooks).

**Jan 28:** [Lecture 4](/archive/physics-212-2019/lecture-4/). First model, first code. Exceptions, initialization, and program verification. More Python constructions. *Reading*: Chapters 2 and 3 of the Python Student Guide.

**Jan 30:** [Lecture 5](/archive/physics-212-2019/lecture-5/). First numerical algorithms in Python: Newton method for solving algebraic equations. More Python constructions. *Reading*: Chapters 2, 3, 6.5 and Appendix B of the Python Student Guide.

**Labs 3, Jan 31, Feb 1:** Finish all of the exercises in Chapters 1-3 and Appendix B if you haven't done so yet. Finish the class exercises. Namely, strengthen your quadratic equation code to deal with exceptions. Then use the provided Newton method code to find all minima of the two functions requested in class. Strengthen the code to deal with various exceptions, such as divergence of the algorithm, inability to find minima, etc. You may want to write a wrapper around the code, which, in another loop, will explore finding the root from different initial conditions, and will then store the different roots that were found. Finally, use your new and improved Newton method code to find the resting position of the charge. Then start working on the projects provided for this module. We will discuss on Monday how to make the reports for them.

**Feb 4:** [Lecture 6](/archive/physics-212-2019/lecture-6/). Jupyter notebooks. Writing project reports. Introducing the projects. More Python. Quiz 1. *Reading*: Appendix B of the Python Student Guide.

**Scripts for this Module:**

- [Miscellaneous Python scripts](/archive/files/Lecture2x2019.txt) -- note that there's some bug in my homepage setup, and I cant upload the file with .py extension; it's been uploaded with .txt; rename it after downloading. This applies to all future downloads.
- [Solving a quadratic equation](/archive/files/Quadratic2019.txt).
- [More miscellaneous scripts](/archive/files/Lecture4x2019.txt), including the Newton-Raphson code.
- [Jupyter notebook for solving the charges problem](/archive/files/Newton2019.txt).
- [Sample project report in a Jupyter notebook for finding the equilibrium charge position problem](/archive/files/SampleReport2019.txt).

**Additional reading:**

[Numerical Recipes](http://apps.nrbook.com/c/index.html) book, Chapter 9, talks about finding roots of nonlinear functions, including the Newton-Raphson method and, in Section 9.6, the multidimensional version of it. Those interested, should read the *general considerations* in Section 9.0, and then whichever additional sections you find interesting.

### Module 2

**Feb 6:** [Lecture 7](/archive/physics-212-2019/lecture-7/), Euler method for solving ordinary differential equations. Bacterial growth. Accuracy of algorithms. Plotting. *Reading*: Chapter 4 of the Python Student Guide.

**Labs 4, Feb 7, 8:** Working on the projects for Module 1.

**Feb 11:** [Lecture 8](/archive/physics-212-2019/lecture-8/), More Python: writing your own functions, and common coding errors. Python Student Guide: Sec 4.3, 6.1.

**Feb 13:** [Lecture 9](/archive/physics-212-2019/lecture-9/), More Python: functions in Jupyter notebooks. Data in-results out (Chapters 4, 6.1). Runge-Kutta 2 algorithm for solving ordinary differential equations.

**Labs 5, Feb 14, 15:** Do all exercises in Chapters 4 and 6.1, 6.3, 6.5, 6.8 in the Python Guide. Do all exercises from lecture notes. Additionally, figure out how to integrate the Malthusian growth using the Python built-in ODE solver. For this, you will need to use a different version of the *malthus* function, also provided in the code for this module. Compare the solution by the built-in function to your own Euler and RK2 solvers. Which is more accurate? Which is faster? What is the precision of the built-in solver as a function of $\Delta t$.

**Feb 18:** [Lecture 10](/archive/physics-212-2019/lecture-10/), Runge-Kutta 2 algorithm for solving systems of ordinary differential equations.

**Feb 20:** [Lecture 11](/archive/physics-212-2019/lecture-11/), errors in computational modeling.

**Labs 6, Feb 21, 22:** Do all exercises in Chapters 6.3, 6.4, 6.9 in the Python Guide. Do all exercises from lecture notes. Start doing the projects.

**Feb 25:** [Lecture 12](/archive/physics-212-2019/lecture-12/), Qualitative analysis of dynamics systems for verification of models.

**Feb 27:** [Lecture 13](/archive/physics-212-2019/lecture-13/), Catch-up lecture.

**Labs 7, Feb 28, Mar 1:** Do Projects for Module 2.

**Scripts for this Module:**

- [Malthusian growth](/archive/files/Malthus19.txt) script, the simplest version.
- [Malthusian growth](/archive/files/Malthus_full19.txt) script, the version that plots the solution.
- [GrowthFunctions](/archive/files/Growthfunctions2019.txt) -- module defining different growth functions.
- [Integrators](/archive/files/Integrators2019.txt) -- module defining different integrators (Euler and Runge-Kutta, which we will use during the next lecture).
- [Module 2](/archive/files/ModuleTwo2019.txt) -- catch-all scripts I used during the class.
- [Module 2 as a notebook](/archive/files/IntegrateODE.txt) -- integration as a notebook.
- [Solving Systems of ODEs](/archive/files/SystemsOfODEs.txt) -- Jupyter notebook for solving systems of equations (now updated with phase portraits plotting).
- [Computational errors](/archive/files/ComputationalErrors.txt) -- Jupyter notebook for analyzing computational errors.

### Module 3

**Feb 27:** [Lecture 13](/archive/physics-212-2019/lecture-13/), (repeat from above) Catch-up lecture.

**Mar 4:** [Lecture 14](/archive/physics-212-2019/lecture-14/), Introduction to optimization, Linear regression. Python textbook 4.1, 4.2

**Mar 6:** [Lecture 15](/archive/physics-212-2019/lecture-15/), Introduction to nonlinear 1-d optimization. Python textbook 4.1, 4.2

**Labs 8, Mar 7-8:** Finish Your Turn exercises for the last 3 lectures, and go through Your turn exercises in the book. We will be using the minimizers you write later in the class, so make sure to do them.

**Mar 18:** Midterm test

**Mar 20:** [Lecture 16](/archive/physics-212-2019/lecture-16/), Multi-dimensional optimization. Python textbook Chapter 5.

**Labs 9, Mar 21-22:** Finish Chapter 5 and other in-class exercises, Work on projects.

**Mar 25:** [Lecture 17](/archive/physics-212-2019/lecture-17/), Avoiding blind fits.

**Scripts for this module:**

[Optimization](/archive/files/Optimization.txt) -- the Optimization notebook, which we will be exploring over multiple lectures.

### Module 4

For this module, lectures are embedded inside the [Random Numbers](/archive/files/RandomNumbers.txt) notebook.

- **Mar 25:** Lecture 18, Introduction to random numbers and probability.
- **Labs 10, Mar 29, 30:** Working on projects for module 3
- **Apr 1:** Lecture 19, Continue with Lecture 18, and discuss how different random numbers are generated.
- **Apr 3:** Lecture 20, Continuing with lecture 19, and Monte-Carlo integration.
- **Labs 11, Apr 4, 5:** Download the latest version of the [Random Numbers](/archive/files/RandomNumbers.txt) notebook and do all Your Turn assignments. Then do Chapter 7 of the textbook.
- **Apr 8:** Lecture 21, Random walks and the Central Limit Theorem.
- **Apr 10:** Lecture 22. Cellular automata vs agend-based simulations of stochastic systems, simulating extended stochastic systems, and introduction to the projects.
- **Labs 12, Apr 11, 12:** Working on projects for Module 4.

**Scripts for this Module:**

[Random Numbers](/archive/files/RandomNumbers.txt) -- the Random Numbers notebook, which we will be exploring over multiple lectures.

### Module 5

- **Apr 15:** Lecture 23, Intro to high performance computing
- **Apr 17:** Lecture 24, The heat diffusion equation, the boundary conditions, and solving it using a single processor.
- **Lab 12, Apr 18-19:** Your turn exercises from the notebook, and solving the heat diffusion on one processor.
- **Apr 22:** Lecture 25, The heat diffusion equation on multiple processors.
- **Apr 24:** Lecture 26, More HPC problems: introducing the projects. Quiz 5.
- **Lab 13, Apr 25, 26:** Solving Module 5 projects.
- **Apr 29:** Lecture 27, Review for the Final Exam.

**Scripts for this Module:**

- [Parallel Processing](/archive/files/HPC.txt) -- the Parallel Processing notebook.
- [Diffusion for multiple processors](/archive/files/DiffusionMP_Windows.txt) -- notebook for Windows.
- [Diffusion module](/archive/files/Diffusion_module.txt) -- Diffusion module for the above notebook.

## Projects

Available projects for each class module will be listed here about one class before you need to start working on them. If multiple projects are offered, you will need to choose the project for your group and email me for approval.

### Class Module 1

Choose and do one of the projects. Note that you should write your own implementation of root finding, and do not use the fsolve function in Python. In all of these projects, you need to make sure that your report is written as I expect it to be, including verification that your code works in a correct way, and that you handle all the exceptions you could think of. This module is about root finding using the Newton-Raphson algorithm, so please use it in your solutions, rather than trying to invent something more complicated.

**Project 1:** **(Physics)** A cable supporting a suspension bridge has a [catenary](https://en.wikipedia.org/wiki/Catenary) shape. To repaint the cable, a mechanized cart moves along it, whose engine can apply some maximum amount of force along the direction of the cable. Will the cart be able to come to the top of the cable? If not, where will it come to rest? Note that you may be able to solve this problem analytically, but here I am interested in a numerical solution -- you can use your analytical result to verify your numerics.

**Project 2:** **(Biochemistry)** A lot of enzymatic reactions in biological systems proceed according to the so-called Hill rate law, where the rate of conversion of a substrate chemical into a product is given by $r(x) = \frac{V_0 x^a}{K^a+x^a}$, where $x$ is the concentration of the substrate chemical, the constant $V_0$ is called the catalytic velocity, and $a$ is the Hill constant. Finally, $K$ is the Michaelis constant -- the concentration of the substrate, at which the conversion rate is half-maximal. A lot of biochemical processes in the cells are organized in so call [futile cycles](https://en.wikipedia.org/wiki/Futile_cycle), where one enzyme converts the substrate into a product, and another immediately converts it back, so that the total number of the substrate and the product molecules is conserved. Such futile cycles are very useful to regulate the number of molecules of a certain chemical in a cell -- since molecules are constantly produced and degraded, one only needs to change either the rate of the forward production or the backward degradation a little, and the total number of product molecules will accumulate a large change over time. Imagine now that we have a system, where both the forward and the backward reactions are described by different Hill laws. Find the equilibrium concentration of the substrate and the product molecules.

**Project 3:** **(More advanced; try at your own risk)** We discussed the three fixed / one moving charges problem when all the charges were on a line. Now consider a situation where the charges are at arbitrary positions on the $(x,y)$ plane, but fixed to be within the plane. Find the equilibrium position of the moving charge. For this, you will need to extend the Newton-Raphson algorithm to find roots of a function with many arguments. This requires knowing multivariate calculus and linear algebra. Do not attempt the problem if you have not taken those classes.

### Class Module 2

Choose and do one of the projects. Note that you should write your own implementation of RK2 integration of systems of ODEs, based on what we did in class. In all of these projects, you need to make sure that your report is written as I expect it to be, including verification that your code works in a correct way, and that you handle all the exceptions you could think of. You should plot integrated trajectories for some chosen parameter values. The projects require knowing what phase portraits and phase diagrams are, and we will discuss this on Feb 25.

**Project 1:** **(Population Biology)** Model the classical Lotka-Volterra predator-prey system, but now allow for **the carrying capacity** for the predator and the prey, in addition to more traditional terms. That is, the equations for the dynamics should have terms like $dx/dt=\dots -c_xx^2, dy/dt=\dots-c_yy^2$. Plot the phase portrait of the system for various parameter values. Finally, sketch the phase diagram of the system: for which parameter values does it oscillate, and for which does it go to a fixed point? Use odeint from SciPy and also write your own RK2 integrator. Compare results for accuracy and for elapsed time. **For the adventurous**: we can make the oscillating Lotka-Volterra system chaotic, just like the pendulum is made chaotic in Project 2. For this, make either the carrying capacity of the prey or the birth rate of the prey time-dependent. For example, for the birth rate, you can write $r(t)=r_0+r_1\sin(\omega t)$, or the same for the carrying capacity. This time dependence would denote, for example, yearly fluctuations in the birth rate -- there's more food in the summer. Now for some parameters of the system, you will see that two trajectories with close initial conditions stay close forever, and for some other parameters, close trajectories would eventually separate. Explore this! (and read the link in Project 2 for more information in the related system).

**Project 2:** **(Mechanics)** Write a model for a linearly damped pendulum with periodic driving force $A \cos \omega t$. Read discussion of [driven pendula](https://web.archive.org/web/20150709094600/http://www.phy.davidson.edu:80/StuHome/chgreene/chaos/Pendulum/pendulum_content_frame.htm). A chaotic pendulum is a pendulum, for which two trajectories that start from nearly the same initial condition diverge quickly. Explore under which conditions this pendulum is periodic or chaotic. Plot the phase space of the model. Plot phase portrait of the system for zero external force. Use odeint from SciPy and also write your own integrator. Compare results for accuracy and for elapsed time.

### Class Module 3

The following projects may be chosen for this module. **For each of these projects**, you should develop a dynamical model of the process, and then use *odeint* to solve the differential equations. After you verify your model/solution, you should then do nonlinear least squares fitting to find the parameters of your model that fit the specific data sets that have been provided. You should then compare predictions of your model for times beyond those, for which the data is given, to the linear regression statistical polynomial fits to the data. Finally explain which of the two fit types (linear regression vs dynamical model) you expect to do a better job. One problem below has real, experimental data; the other has simulated data with added noise. The models of the involved processes in these cases are only approximate. Thus it is possible that you won't be able to make your fits work very well -- data can be hard this way. While I certainly would like you to make the fits work, I won't be subtracting points if the fits are somewhat imperfect, as long as your fitted variables and the trajectories with these variables are physically/biologically reasonable and *largely* fit the data. Note that it is crucial that you avoid blind fits, and you provide good starting points for the fit variables by estimating parameters from the data.

**Project 1:** **Microbiology** Bacteria grow by metabolizing nutrients in their environment. The growth rate of bacteria as a function of $\rho$, the nutrient concentration is given by the Monod law, $\frac{dn}{dt}=n \frac{g_{\rm max}\rho}{\rho+K}$, where $K$ is known as the Monod constant. Thus at low $\rho$, the nutrient availability limits the growth rate, and at high $\rho$, there's the maximum growth rathe $g_{\rm max}$ (this maximum growth rate is typically on the order of one per hour for bacteria such as *E. coli*). In order to make one bacterium per ml, $a$ microgram/ml of nutrient must be metabolized. (Actually, in experiments, we don't measure the bacterial concentration, but we measure the number of so-called Colony Forming Units, or CFU/ml --- the concentration of bacteria that, when put on an agar plate, will form new colonies; but for our modeling purposes the number of bacteria and CFU are the same thing). At the same time, as they grow on nutrients, bacteria die with the usual first-order rate $\mu$ (typically one per hundred hours or so). Finally, when put in a new environment, bacteria typically do not grow for a certain lag time $\tau$ (for this problem, use $\tau=4.5$ hours), while they adjust to the environment. Imagine now that we put 0.2 microgram/ml of glucose in a liquid medium at time zero, and we put originally 50 bacteria/ml into the liquid. Develop a model of bacteria growing, while metabolizing the glucose. You should have two differential equations in your model, one describing the bacteria, and the other describing the glucose concentration. Now solve this model using *odeint*, and use *curve_fit* function to fit the parameters of the model to the data in [this file](/archive/files/Bacteria.txt) (the file contains two columns -- the first column are time points, and the second are CFU/ml measurements). You will need to find $g_{\rm max},a,K,\mu$ from your fitting. Note that, while some of these parameters will be constrained strongly by the data, some won't be. You should use logarithm of the bacterial concentration (not the concentration itself) as your y-value when doing the fits (explain why in your report). Help your fitting routine by fitting linear relations to different regimes of the logarithmic growth plot manually first, and then use these manually fitted parameter values as inputs to *curve_fit*. This will require you to understand how the growth curve features relate to the model parameters. Report the final fitted parameter values. Do they make sense? Now fit the data using polynomials of different degrees (rather than the growth model). Which fit (polynomial or the model) produces more reasonable extrapolations of the measured CFU for $t=150$ hours? *Thanks to Xinxian Shao for the data from the following publication: <http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005679> ".*

**Project 2:** **Mechanics** A ball of mass $m=0.1$ kg made of wood with density $\rho=700 {\rm kg/m^3}$ is being released in an unknown fluid with zero velocity, and it falls down under the free fall acceleration (the value of which you can assume known, $9.81 m^2/s$) and the buoyancy force. The combined two forces depend on the difference of weight of the displaced fluid and the ball and add up to $(\rho_{\rm ball}-\rho_{\rm fluid})Vg$, where $V$ is the volume, and $\rho_{\rm fluid}$ is the fluid density, and is unknown. In addition, the ball experiences the drag force. The drag force on the body opposes the velocity and can be written as $F_d=av+bv^2$, where $a, b$ are some unknown coefficients. Develop a model of this process, to simulate the motion of a ball in fluid. Solve this model using *odeint*. Download [this simulated data file](/archive/files/Ball.txt), where the first column is the time, and the second column is the distance traveled by the ball. Now use *curve_fit* to find $\rho_{\rm fluid},a,b$ from this data. This will require you to understand how the features of the position curve relate to the model parameters, so that you can start the fitting near the actual solution. Report the final fitted parameter values. Do they make sense? Note that not all of the parameters will be well constrained/determined by the data. Can you guess which fluid is the ball falling in? Now fit the data using polynomials of different degrees (rather than the dynamical falling model). Which fit (polynomial or the model) produces more reasonable extrapolations of the measured position for $t=50\dots 150$ seconds? Note that, to guess the fluid, you may need to know that the drag force coefficients are given by $a=6\pi\eta r$, where $\eta$ is the [dynamic viscosity](https://en.wikipedia.org/wiki/Viscosity#Dynamic_viscosity) of the fluid, and $r$ is the radius of the ball; and $b=1/2 \rho_{\rm fluid}\pi r^2 c_d$, where $c_d$ is the drag coefficient, which for a fast-moving smooth ball is between 0.1 and 0.3.

### Class Module 4

The following projects may be chosen for this module. For each of these projects, you should develop a stochastic model of the process. Before you start developing the model, think about whether you want to develop an agent-based model, a cellular automaton model, or a certain mixture of the two.

- **Look for updated texts of the Projects in the Random Numbers Jupyter notebook**

### Class Module 5

- **Look for the Projects in the HPC Jupyter notebook**
