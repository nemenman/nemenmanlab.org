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
- Class will meet virtually at the usual time at the following Zoom link <https://emory.zoom.us/j/117775655>
- Office hours will meet virtually at the usual time at the following Zoom link <https://emory.zoom.us/j/354960837>

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

**Class 03/25:** No pre-class questionnaire. Read notebooks and prepare for midterm. Come with questions that you think will help you during the exam.\]

**Labs 9, Mar 26-27, virtual**

Work on the final projects for Module 3.

**Recordings:**

- [Office hour 03/20](https://emory.zoom.us/rec/play/u5Iof7_8_Tw3H9aSsASDA6N8W9Tve_-s13Ue-qAPnU28AXMFZFSnYrFAZbHFoQYAeRhHlWxXGsByfRjW)
- [Class 03/23](https://emory.zoom.us/rec/share/5uZkF77P3yRIaKvV2E6HR606MoHIT6a8gSIbq_VezEdJ2dk8WSmXsokp1Fe8tXnG)
- [Office hour 03/23](https://emory.zoom.us/rec/share/-vxWH5zP6VpLZZHg133ZSIc7JrTmeaa803NK-fQEz0aHObs9MIPf-iW3jQtSEXrf)
- [Class 03/25](https://emory.zoom.us/rec/share/9MBaE5uozD5LZJHG7B7PVPM4BKPJeaa8gXQZ-_UMxE89BjYJlaKdu5AHM1OURzjR)
- [Emma's 3/27 office hour](https://emory.zoom.us/rec/play/uJB7JOyt-m43H4eVsQSDBPN4W9Xseqqs0yZN-_sKzxvmAnQDZlSuNOcUMLYS09NVpSnJOnKBeBow-rid?continueMode=true&_x_zm_rtaid=syMDeQ7KS3-CvJvysEvNIw.1585507078959.3a287e81dc6c0c0ff1ac3b19db7c61a8&_x_zm_rhtaid=630)
- [Emma's 3/27 lab](https://emory.zoom.us/rec/share/5PMlJI-sqmxITYnT9mLQSvUmJNX1X6a8hHMa-_MIxE66vqwLCCuCmaojCE-0uZif)
- [Qihan's 3/26 lab](https://emory.zoom.us/rec/play/vpUoJuGvpz43G9OWuASDVqUsW9S9LK6s2ykcq6UKyBy2ByRQOlvyZuMaZOq9i9O-Wjo3z8Sa3vUJ1O_q?continueMode=true&_x_zm_rtaid=j42h_PZnQyqtSUUBBj-rhw.1585412206604.9561bb0b6bfa526cc4bdfebeb57b9a8d&_x_zm_rhtaid=675)
- [Office hour 03/30](https://emory.zoom.us/rec/share/1_R6H-7y2GNIWa_28Uz6YJYtOb3pT6a80yQY86Bez0vJ6Z5vVpt5oyBQt6qbWjsT)

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

**Recordings**

- [Class 03/30](https://emory.zoom.us/rec/share/6_5FNZHK62JISYHI-lzPZ7AtNbjceaa80yRI_KEEyUtVO46NLqj86l7vuj48sIlo)
- [Office hour 03/30](https://emory.zoom.us/rec/share/1_R6H-7y2GNIWa_28Uz6YJYtOb3pT6a80yQY86Bez0vJ6Z5vVpt5oyBQt6qbWjsT)
- [Class 04/01](https://emory.zoom.us/rec/share/xfwvMezN7URIYbPr6Eb9C_cjN9rBaaa8higWqaBczMi4O-mUuot9cxgk3c11piI)
- [Qihan's office hour](https://emory.zoom.us/rec/share/4OVXHu_VzVJLQKPz0WzHc_EtNKX0T6a82igcr_oEnU6RPKA11Wb8olhMmbKcqyTV)
- [Lab 04/02](https://emory.zoom.us/rec/share/7PRENu7W7nhIHo3nq1_8VIh4Lpr9T6a8hykdqadbyhqCmFR-R1c6cq0jki9-20Ev)
- [Lab 04/03](https://emory.zoom.us/rec/share/7JFzderh1kRLa53_xl3gB_4uFb71aaa8gSJI-PQImBpwukz_iUM_LTE7nhJruxgx)
- [Class 04/06](https://emory.zoom.us/rec/share/6_ZvEpvhxH5OXq-cuB3SUPd6LoXdX6a81CZPqftcyR3s5JISvsSXmI6TL0MJuR47)
- [Class 04/08](https://emory.zoom.us/rec/share/tO1IAprWrFhJH9bt1mrQCqkCBZ_feaa81SgX8qVZyxlMpmszxHiv82jtWPZHHDpG)
- [Qihan's 04/09 Lab](https://emory.zoom.us/rec/share/wPx3C5Ws6GJOYIHs9mDiQ7ImR6jDX6a80yFI-PAKy0sPn92fcwlTjU7qsZ3p-kof)
- [Emma's 04/10 Office Hour](https://emory.zoom.us/rec/share/zvBMMpf0xmdLSaPN1hHeZIkNIab4X6a8gHRI_qIMzU6raVt5mf0iJXt5h7bj03Q8)
- [Emma's 04/10 Lab](https://emory.zoom.us/rec/share/ztBrCpf5zn9Ifa_G7GHmc6ksEN7rT6a8gyEX_PpenxunVah-AI7SwgQopBFOORp-)
- [Class 04/13](https://emory.zoom.us/rec/share/x_coMuDa23NLHbfp6nzUQpwMWaLfaaa81ygZ-fAEykggk_fuFN_maOkj71bKUuHS?startTime=1586786214000)
- [Qihan's 04/16 Lab](https://emory.zoom.us/rec/share/-PQyAbztym9IG6uW5xneQvYNJtjAT6a81HBI-fAMzYfpELcYLd2rmxWm8nPQnRc)
- [Emma's 04/17 Lab](https://emory.zoom.us/rec/share/xPJWaLD-rVtIQbfqr03TV5FmGYXET6a8gClI-aYLmUeFvHZ4SjN-XKbR--Xn7AGg)
- If office hours are not posted, it means that nobody showed up, and there was no recording.

### Module 5

**Class 04/15:** Start reading the *Parallel processing* notebook up to (not including) *Newton's law of cooling*.

**Labs 04/16-04/17:** Work on projects for Module 4 -- Stochastic Simulations, and submit your report on Monday April 20

**Class 04/20:** *Parallel processing* notebook, introduction to spatially extended systems -- partial differential equations. Read until (including) *Solving the Diffusion Equation using Python*

**Class 04/22:** First attempts to do parallel processing, up to (not including) *Diffusion on multiple processors*

**Labs 04/23-04/24:** Module 5, Progress report 1 (No final project for this module), Submit Apr 27

**Class 04/27:** wrap up, review for final. Quiz 5 due Apr 28 10am

**Recordings:**

- [Class 04/15](https://emory.zoom.us/rec/share/ypxxPa37r1xLG7eWuVuHdfY_H478T6a80SRIqaIMmNZYcXK-6OK-Qo8tx3PQ60Y)
- [Qihan's office hour 04/16](https://emory.zoom.us/rec/share/wPx3C5Ws6GJOYIHs9mDiQ7ImR6jDX6a80yFI-PAKy0sPn92fcwlTjU7qsZ3p-kof)
- [Qihan's office hour 04/19](https://emory.zoom.us/rec/share/puxsc5zM-UlJXK_My1D5BYECPZ-_eaa80yAWrvEPzR0hM7fGoCpxW0IE2XPi5ivi)
- [Class 04/20](https://emory.zoom.us/rec/share/ysZePqDR_H1Ibc_Q4V-cQfB_FJzZaaa81igfqfVYz0YFmRFv_fZznYFwmH0iUSYP)
- [Class 04/22](https://emory.zoom.us/rec/share/4eNWfqDb8m5Of7OUyF3lWrQ7Q6S0eaa81XAW_ftezRsqirEMoNThgZgdig8RUC_4)
- If office hours are not posted, it means that nobody showed up, and there was no recording.
