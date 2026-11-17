---
title: "Computational Modeling For Scientists And Engineers"
group: "physics-212-2020"
wiki_title: "Physics 212, 2020: Computational Modeling For Scientists And Engineers"
order: 0
index: true
kind: "course"
code: "Physics 212"
year: 2020
group_title: "Computational Modeling for Scientists and Engineers"
summary: "In this course, various computational modeling methods will be introduced to study specific examples derived from physical, biological, chemical, and social systems."
---

## News

- Welcome to the class!
- New sections are being added to the syllabus to account for the virtual learning we are switching to due to COVID-19.
- Class and office hours met virtually on Zoom. Meeting links and recordings were for enrolled students and are not included in this archive.

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
  - Professor: Ilya Nemenman -- Monday and Thursday 12:00-1:00 (subject to change), and by appointment, MSC N240 or N117A if too many people.
  - TA: Qihan Liu (Thursday lab), Office hour Monday 1:00-2:00 , MSC N117E
  - TA: Emma Dawson (Friday lab), Office hour Wednesday 2:30-3:30, N209

- [Syllabus](/archive/physics-212-2020/syllabus/) -- I will try to keep close to the syllabus in the course of the semester, but some deviations are possible.

- [Anaconda Python distribution](https://www.anaconda.com/download/) (install Python v 3.X)

- **Main Textbook**: J Kinder and P Nelson, *Student Guide to Python for Physical Modeling, 2nd edition*, <http://press.princeton.edu/titles/10644.html> . This is **the only textbook you should have**; all others are optional.

  - This tutorial is not a complete textbook. I will post additional lecture notes online as needed, or will direct you to additional chapters in other textbooks.
  - See also [Computational Modeling and Visualization of Physical Systems with Python](https://www.wiley.com/en-us/Computational+Modeling+and+Visualization+of+Physical+Systems+with+Python-p-9781119239888) by J Wang and [Computational Physics](http://www.physics.purdue.edu/~hisao/book/) by Giordano and Nakanishi.
  - The bible of scientific computing is [Numerical Recipies](http://numerical.recipes) by Press et al.

- At the end of each class where we do coding, please **submit your work** using a *Coding Snippet* assignment submission on Canvas.

## Lecture Notes and Detailed Schedule

- Class schedule is available in [the syllabus](/archive/physics-212-2020/syllabus/).
- Below I will post Python notebooks for this class. I will strive to post changes to these notebooks before classes, but no promises.
- The Notebooks will also have project assignments for you to work on.

All of the notebooks we will use in the class are available from the [Lecture Textbook repository](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook). Currently the following notebooks are available:

- [Chapter 1](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Chapter%201.%20Introduction.ipynb), Introduction to Computational Modeling; this is finalized, and is unlikely to change a lot.
- [Chapter 2](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Chapter%202.%20Learning%20Python%20and%20solving%20algebraic%20equations.ipynb), Learning Python and solving algebraic equations; this is finalized, and is unlikely to change a lot.
- [Chapter 3](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Chapter%203.%20Building%20and%20Solving%20Dynamical%20Models.ipynb), Building and Solving Dynamical Models, this notebook is still being edited.
- [Chapter 4](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Chapter%204.%20Optimization.ipynb), Optimization, this notebook is unlikely to change a lot.
- [Chapter 5](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Chapter%205.%20Stochastic%20Simulations.ipynb), Stochastic simulations, this notebook is unlikely to change a lot.
- [Chapter 6](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Chapter%206.%20Parallel%20Processing.ipynb), Parallel processing, this notebook is being actively edited.
- [Module 1, Progress Report 1](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%201%2C%20Progress%20Report%201.ipynb) notebook, which covers the Introduction, and Chapters 1 and 2 of the *Student Guide*; this notebook is now finalized. You will need to (re)-submit this notebook on Jan 27th.
- [Module 1, Progress Report 2](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%201%2C%20Progress%20Report%202.ipynb) notebook, which covers Module 1 (Algebraic equations), and Chapters 3 and part of 4 of the *Student Guide*. The notebook is now finalized, and you need to submit it on Feb 3.
- [Module 2, Progress Report 1](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%202%2C%20Progress%20Report%201.ipynb). You were submitting the report without the notebook; it wasn't available at the time.
- [Module 3, Progress Report 1](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%203%2C%20Progress%20Report%201.ipynb) notebook, which covers Module 3 up to and including the nonlinear 1-d optimization lecture (02/26). Submit this notebook on March 2.
- [Module 3, Progress Report 2](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%203%2C%20Progress%20Report%202.ipynb). Submit Mar 30
- [Module 4, Progress Report 1](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%204%2C%20Progress%20Report%201.ipynb). Submit Apr 6.
- [Module 4, Progress Report 2](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%204%2C%20Progress%20Report%202.ipynb). Submit Apr 13.
- [Module 5, Progress Report 1](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%205%2C%20Progress%20Report%201.ipynb). Submit Apr 27.

### Introduction

Download or view the [Chapter 1](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Chapter%201.%20Introduction.ipynb) notebook from the [Lecture Textbook repository](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook). *Make sure to keep re-downloading the notebook, as I will change it in the course of the class.*

**Labs 1, Jan 16-17**

- Instal Anaconda.
- Do all exercises in the [Module 1, Progress Report 1](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%201%2C%20Progress%20Report%201.ipynb) notebook from the [Lecture Textbook repository](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook). This includes Your Turn questions from class, and exercises from Chapter 1 and Chapter 2 of the *Student Guide*. Finalized version of this notebook would need to be submitted on Jan 27.
  - **Reading:** Chapters 1 and 2 and Appendix B of the Python Student Guide.

### Module 1: Learning Python and solving algebraic equations

Download or view the [Chapter 2](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Chapter%202.%20Learning%20Python%20and%20solving%20algebraic%20equations.ipynb) notebook from the [Lecture Textbook repository](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook). *Make sure to keep re-downloading the notebook, as I will change it in the course of the class.*

**Labs 2, Jan 23-24**

- Do all exercises in the updated version of the [Module 1, Progress Report 1](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%201%2C%20Progress%20Report%201.ipynb) notebook from the [Lecture Textbook repository](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook). Submit or re-submit this updated and complete notebook on Jan 27.
- Do all exercises in the [Module 1, Progress Report 2](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%201%2C%20Progress%20Report%202.ipynb) notebook from the [Lecture Textbook repository](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook). This includes Your Turn questions from class to date, and exercises from Chapter 3 of the *Student Guide*. Do not submit this notebook on Jan 27th, and updated version will be due Feb 3.
  - **Reading:** Chapters 3 of the Python Student Guide.

**Labs 3, Jan 30-31**

Do all exercises in the [Module 1, Progress Report 2](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%201%2C%20Progress%20Report%202.ipynb) notebook from the [Lecture Textbook repository](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook). This includes Your Turn questions from class to date, and exercises from Chapter 3 and some of Chapter 4 of the *Student Guide*. Submit the progress report by Feb 3.

- **Reading:** Sections 4.1 and 4.2 and Appendix E of the Python Student Guide.

**Labs 4, Jan Feb 6-7**

Do the project for Module 1 and submit on Monday.

### Module 2: Dynamical models: Building and solving dynamical models

Download and read [Chapter 3](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Chapter%203.%20Building%20and%20Solving%20Dynamical%20Models.ipynb) notebook from the [Lecture Textbook repository](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook). *Make sure to keep re-downloading the notebook, as I will change it in the course of the class.*

**Labs 5, Feb 13-14**

Do the 'Your Turn' exercises in the notebook up to (not including) RK2 and submit on Feb 17.

- **Reading:** See reading assignment in the Chapter 3 notebook above.

**Labs 6, Jan Feb 20-21**

- You are not required to do the new Your Turn questions (3.8 - 3.18); these won't be submitted since we have only one Progress Report for this module, not two. However, I strongly recommend that you try to do some of them in your spare time.
- Do the project for Module 2 and submit on Monday 2/24.

### Module 3: Optimization

Download and read [Chapter 4](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Chapter%204.%20Optimization.ipynb) notebook from the [Lecture Textbook repository](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook). *Make sure to keep re-downloading the notebook, as I will change it in the course of the class.*

**Labs 7, Feb 27-28**

Do all exercises in the [Module 3, Progress Report 1](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%203%2C%20Progress%20Report%201.ipynb) notebook from the [Lecture Textbook repository](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook). Submit the progress report by March 2.

**Labs 8, Mar 5-6**

Do all exercises in the [Module 3, Progress Report 2](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%203%2C%20Progress%20Report%202.ipynb) notebook from the [Lecture Textbook repository](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook). Submit the progress report by Mar 23 (date changed due to transition to virtual learning).

**Class 03/23:** Finish reading the *Optimization* notebook (including the projects), respond to the questionnaire, and start thinking about the projects.

**Class 03/25:** No pre-class questionnaire. Read notebooks and prepare for midterm. Come with questions that you think will help you during the exam.

**Labs 9, Mar 26-27, virtual**

Work on the final projects for Module 3.

### Module 4: Stochastic simulations

**Class 03/30:** Read the 'Stochastic simulations' notebook up to and including 'Random Numbers in Python' section. Do the appropriate questionnaire.

**Class 04/01:** Read the 'Stochastic simulations' notebook up to and including 'Exponential Random Numbers' section. Do the appropriate questionnaire.

**Labs 10, Apr 2-3**

Do all exercises in the Module 4, Progress Report 1 notebook from the [Lecture Textbook repository](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook). Submit the progress report by Apr 6.

**Class 04/06:** Read the 'Stochastic simulations' notebook up to and including 'What is the error of MC methods?' section. Do the appropriate questionnaire.

**Class 04/08:** Read the 'Stochastic simulations' notebook up to and including 'Central Limit Theorem' section. Do the appropriate questionnaire.

**Labs 11, Apr 9-10**

Do all exercises in the [Module 4, Progress Report 2](https://github.com/EmoryUniversityTheoreticalBiophysics/ComputationalModelingTextbook/blob/master/Module%204%2C%20Progress%20Report%202.ipynb) notebook. Submit it by Apr 13.

**Class 04/13:** Read the 'Stochastic simulations' notebook, 'Projects' section, and understand the projects. Do the appropriate questionnaire.

### Module 5

**Class 04/15:** Start reading the *Parallel processing* notebook up to (not including) *Newton's law of cooling*.

**Labs 04/16-04/17:** Work on projects for Module 4 -- Stochastic Simulations, and submit your report on Monday April 20

**Class 04/20:** *Parallel processing* notebook, introduction to spatially extended systems -- partial differential equations. Read until (including) *Solving the Diffusion Equation using Python*

**Class 04/22:** First attempts to do parallel processing, up to (not including) *Diffusion on multiple processors*

**Labs 04/23-04/24:** Module 5, Progress report 1 (No final project for this module), Submit Apr 27

**Class 04/27:** wrap up, review for final. Quiz 5 due Apr 28 10am

