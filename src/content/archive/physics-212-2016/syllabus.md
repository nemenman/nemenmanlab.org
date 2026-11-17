---
title: "Syllabus"
group: "physics-212-2016"
wiki_title: "Physics 212, 2016: Syllabus"
order: 10
---

**Course Title:** Computational Modeling for Scientists and Engineers

**Course Numbers:** Physics 212/Biology 212

**Professor:** Ilya Nemenman ilya.nemenman@emory.edu (best way to contact me)

**Teaching Assistant:** Stephen Frazier

**Office Hours**

- Ilya Nemenman -- Monday, 4:00-5:00, and by appointment, MSC N240
- Stephen Frazier -- Thursday, 3:30-4:30, and by appointment, MSC N113

**Class Web Page:** [/archive/physics-212-2016/](/archive/physics-212-2016/)

## About the class

Computation is one of the pillars of modern science, in addition to experiment and theory. In this course, various computational modeling methods will be introduced to study specific examples derived from physical, biological, chemical, and social systems. We will study how one makes a model, implements it in computer code, and learns from it. We will focus on modeling deterministic dynamics, dynamics with randomness, on comparison of mathematical models to data, and, at the end, on high performance computing. Students will learn Python programming language and will work on computational modeling projects in groups.

### Textbooks

- **Main Textbook**: A Shiflet and G Shiflet, *Introduction to Computational Modeling*, <https://web.archive.org/web/20160112192606/http://wofford-ecs.org/IntroComputationalScience/>

- Python Tutorial: J Kinder and P Nelson, *Student Guide to Python for Physical Modeling*, <http://press.princeton.edu/titles/10644.html>

  - See also [Computational Modeling and Visualization of Physical Systems with Python](http://www.wiley.com/WileyCDA/WileyTitle/productCd-EHEP003413.html) by J Wang and [Computational Physics](http://www.physics.purdue.edu/~hisao/book/) by Giordano and Nakanishi.
    - The bible of scientific computing is [Numerical Recipies](http://numerical.recipes) by Press et al.

### Required Software

- [Anaconda Python distribution](https://www.continuum.io/downloads) or another Python distribution that includes Spyder development environment

### Pre-requisites

Pre-requisites: two semesters of calculus and PHYS 151, or instructor consent. I do not require prior computing experience.

This class differs from most other classes in that we will use mathematical modeling and computer simulations as a language that glues students from very diverse backgrounds. Thus we will be spending many of our class hours *programming in Python in class*. It is thus essential to have a laptop or a desktop computer access. You will be working in groups of 3-4 students, depending on the eventual class enrollment (up to 10 groups in the class), and each group must have at least one laptop in class.

### Class structure

I request a lot from my students, but also provide them with all the necessary resources to succeed in the class. As a result, students will work hard, but will likely learn more than in a typical class. In practice, this philosophy is implemented as follows.

**Modules:** The class will consists of modules of a few weeks long. Typically, only the first few class periods of each module will be traditional in-class lectures or tutorials, where the necessary concepts will be introduced (though we might deviate from this as needed). The subsequent class periods in each module will involve students working in groups on solving projects (different groups will be solving different projects, which they will choose based other interests with my consent from those provided in the textbook and by me). Towards the end of the class, some of the projects may involve new, previously non-modeled data. As you will notice, each section of the textbook has simpler, introductory projects, and more complex ones. In class, your goal will be the more complex projects -- but solving them may require you to first understand the simpler ones as well. Thus you will be responsible for reading and working through the necessary introductory projects, in class or at home. The professor and the TA will be with you in class and during office hours to answer your questions about the background material, the projects, formulating their solutions, and implementing them in Python. The last class period of each module will end with a 20-30 min quiz, which will test your comprehension of the material in the module.

Finally, you will need to submit a report about your project for each module for grading. This will be due by the end of the weekend following end of the module. While you can do the work collectively with other students in your group, the quizzes and the reports are individual. We will discuss the structure of the reports in class when appropriate -- they are described in detail in the textbook.

You should work with different students for different modules of the class.

**Homeworks:** There will be no graded homework sets. However, solving the projects will require substantial work at home.

**Review Sessions and office hours:** I will have a regular office hour every week. So will the TA (at a different time). In addition, we will have review sessions before the exams, or when it becomes clear that many of you have similar concerns that must be addressed.

**Exams:** We will have an in-class midterm exam, and the final exam. During these exams, you will be required to answer questions about the concepts we studied in class, as well as to sketch pseudocode or Python solutions to short modeling problems.

**Special note:** I will need to travel professionally during the semester. As a result, a few classes will need to be rescheduled, or conducted by guest lecturers and/or the TA. These are

1.  January 20
2.  March 14, 16
3.  April 11, 13

### Grading

- Quizzes -- 15%
- Project reports -- 60% cumulative for all projects
- Final exam -- 25%

Your scores will convert to a letter grade as follows:

- 93.0 - 100 A
- 90.0 – 92.9 A-
- 87.0 – 89.9 B+
- 83.0 – 86.9 B
- 80.0 – 82.9 B-

with the pattern repeating for C and D grades; 59.9 or less is a failing grade.

### Honor code

The Emory College Honor Code applies to all homework assignments.

### Tentative class schedule

The schedule of topics covered during each lecture is subject to change. I may need to revise it to reflect the pace of the class. The current schedule can be found on the class web site.

**Module 1:** Introduction to Modeling Process, Python Programming Language, and to Dynamics with Rate Proportional to Amount

Chapters 1, 2, and the Guide to Python, Chapters 1, 2.1-2.5, 3.3.1

- Jan 13: Lecture: Introduction to the class, Introduction to Modeling
- *Jan 18: holiday, no class*
- Jan 20: Python Tutorial
- Jan 25, 27, Feb 1: in-class projects
- Feb 1: Quiz 1
- *Project report due: Feb 8*

**Module 2:** Systems Dynamics Models with Interactions, Computational Errors, Simulation Techniques for Deterministic Dynamics

Chapters 3-7, and the Guide to Python, Chapter 2 (full), 5.1, 5.5.1, 5.8-5.8.2

- Feb 3: Lecture: Modeling Dynamics with Interactions,
- Feb 8: Lecture: Computational Errors, more Python Tutorials
- Feb 10: Solvers for Systems Dynamics
- Feb 15, 17, 22: in-class projects
- Feb 22: Quiz 2
- *Project report due: Feb 29*

**Module 3:** Data Driven Models -- Fitting Models to Data

Chapter 8, and the Guide to Python, Chapters 3, and "Get Going: D"

- Feb 24: Lecture, Regression and other empirical models
- Feb 29: Lecture: Fitting models to data, optimization
- Mar 2: Lecture: Curve fitting, introducing the model systems
- *Mar 7-11: Spring break, no classes*
- Mar 14, 16, 21: in-class projects
- Mar 21: Quiz 3
- *Project report due: Mar 28*
- Additional notes on this module: Here we deviate substantially from the textbook. I am not a fan of blind linear fits, and thus we will be doing more than linear regression, but we will rathe be fitting models. I suggest you read on some of the methods we discussed in class in the following books:
  - <http://apps.nrbook.com/c/index.html> -- look at the chapter on Optimization, but don't overdo it.
  - <http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.linalg.lstsq.html> -- Linear fits with Python/NumPy
  - <http://docs.scipy.org/doc/scipy/reference/optimize.html> -- Optimization with Python/SciPy
- In the class lectures for this module, we have covered the following material:
  - Problems with optimization (why is it hard? local vs. global? maximum accuracy?)
  - Fitting linear models to *asymptotic* pieces of the data; we derived 1-d linear regression
  - Multi-dimensional linear regression (no derivations) using numpy.linalg.lstsq <http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.linalg.lstsq.html>
  - General considerations for nonlinear minimization (with and without derivatives; with and without second derivatives)
  - Golden mean 1-d search
  - Parabolic interpolation
  - Simplex — rolling downhill without derivatives
  - Gradient Descent in 1-d — rolling downhill with derivatives
  - Nonlinear Least squares — Newton-Gauss, method, which we derive in 1d
  - Levenberg-Marquardt as interpolation between Newton-Gauss and Gradient descent, implemented in optimize.minimize <http://docs.scipy.org/doc/scipy/reference/optimize.html>, see also <https://en.wikipedia.org/wiki/Levenberg–Marquardt_algorithm>

**Module 4:** Simulations with Randomness, Cellular Automata and Agent-based models

Chapters 9-11, and the Guide to Python, Chapters 5-5.4, 6.

- Mar 23: Lecture: Random numbers
- Mar 28: Lecture: Cellular Automata and Agent-based models
- Mar 30, Apr 4, 6: in-class projects
- Apr 6: Quiz 4
- *Project report due: Apr 11*
- Additional notes for this Module:
  - Do exercises on [this web page](https://web.archive.org/web/20151221055118/http://faculty.rhodes.edu:80/wetzel/random/mainbody.html) to get a better feel for random numbers. Were you successful in generating random numbers without the help of a coin?
  - Think about the following question: I generate digits between 0 and 9 at random, uniformly. I then write them down in a sequence, 6 such random numbers at a time. Are the resulting 6-digit numbers distributed uniformly between 0 and 999,999? Now take a bunch of physical constants, like speed of light, Planck constant, Boltzmann constant, etc. Calculate the frequency of occurrence of digits 0...9 in the numerical values of these constants in the SI units. Are you surprised by the frequency distribution? Can you explain what you see?

**Module 5:** High performance computing

Chapters 12, 10.2, and the Guide to Python: No new reading

- Apr 11: Lecture: HPC
- Apr 13: Tutorial: HPC, in-class projects
- Apr 18, 20, 25: in-class projects
- Apr 25: Quiz 5
- *Project report due: Apr 27* (note the day)

**Apr 29, 8:00 am -- Final Exam**
