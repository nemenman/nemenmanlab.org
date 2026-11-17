---
title: "Syllabus"
group: "physics-212-2018"
wiki_title: "Physics 212, 2018: Syllabus"
order: 10
---

**Course Title:** Computational Modeling for Scientists and Engineers

**Course Numbers:** Physics 212/Biology 212

**Time/Place:** M, W 10-11:15, MSC N306

**Lab:** Th or F 2:30-5:30; MSC N303

**Professor:** Ilya Nemenman ilya.nemenman@emory.edu (best way to contact me)

**Lab Graduate TA:** Ahmed Roman

**Undergraduate TA:** Talin Handa

**Office Hours**

- Ilya Nemenman -- Wednesday 12:30-2:00, and by appointment, MSC N240
- Ahmed Roman -- TBA
- Talin Handa -- no office hours

**Class Web Page:** [/archive/physics-212-2018/](/archive/physics-212-2018/)

## About the class

Computation is one of the pillars of modern science, in addition to experiment and theory. In this course, various computational modeling methods will be introduced to study specific examples derived from physical, biological, chemical, and social systems. We will study how one makes a model, implements it in computer code, and learns from it. We will focus on modeling deterministic dynamics, dynamics with randomness, on comparison of mathematical models to data, and, at the end, on high performance computing. Students will learn Python programming language and will work on computational modeling projects in groups.

There are three goals that I have for students in the class:

1.  To learn to translate a descriptive problem of a natural phenomenon into a mathematical / computational model.
2.  To learn how to solve such models using computers, and specifically using the Python programming language. This includes learning how to verify that the solution you produced is a correct solution.
3.  To learn basic algorithms used in computational science.

In addition, a minor goal of the class is to improve the students' ability to communicate their process of thinking and their results to others. To this extent, the class will require writing project reports, which will be graded on their clarity and completeness.

### Textbooks

- **Main Textbook**: J Kinder and P Nelson, *Student Guide to Python for Physical Modeling*, <http://press.princeton.edu/titles/10644.html>

  - This tutorial is not a complete textbook. I will try to post additional lecture notes online as needed, or to direct you to additional chapters in other textbooks.
  - See also [Computational Modeling and Visualization of Physical Systems with Python](http://www.wiley.com/WileyCDA/WileyTitle/productCd-EHEP003413.html) by J Wang and [Computational Physics](http://www.physics.purdue.edu/~hisao/book/) by Giordano and Nakanishi.
  - The bible of scientific computing is [Numerical Recipies](http://numerical.recipes) by Press et al.

### Required Software

- [Anaconda Python distribution](https://www.continuum.io/downloads)
- Install Python v 3.X (any minor release v. 3)

Note that coming to class (starting class 2) without a working Python distribution of without a laptop will result in a failing class participation grade.

### Pre-requisites

Pre-requisites: two semesters of calculus and PHYS 151, or instructor consent. I do not require prior computing experience.

This class differs from most other classes in that we will use mathematical modeling and computer simulations as a language that glues students from very diverse backgrounds. Thus we will be spending many of our class hours *programming in Python in class*. It is thus essential to have a laptop or a desktop computer access. You will be working in groups of 3-4 students, depending on the eventual class enrollment (up to 10 groups in the class), and everyone is required to have laptops and a working Anaconda distribution.

### Class structure

I request a lot from my students, but also provide them with all the necessary resources to succeed in the class. As a result, students will work hard, but will likely learn more than in a typical class. In practice, this philosophy is implemented as follows.

**Modules:** The class will consists of modules of a few weeks long. Typically, each module will consist of traditional in-class lectures or tutorials, where the necessary concepts will be introduced (though we might deviate from this as needed). These will be interspersed with short coding exercises, which you will submit through a provided portal in-class; presence of these will be graded. These are designed to help you grasp the concepts studied in class and to get your feet wet with Python programming. The undergrad TA and the professor will help you in these exercises.

**Labs:** The core of the class are the labs, conducted by the Lab TA, where you will be solving larger coding/modeling projects, one project per module, as well as gaining even more experience with Python. The projects will start simple, but will become more complex towards the end of the class.

**Quizzes:** The last class period of each module will end with a 20-30 min quiz, which will test your comprehension of the material in the module. Barring extraordinary circumstances discussed with me ahead of the quiz class, there will be no makeup quizzes. One worst (or missing) quiz grade will be dropped.

**Reports:** You will need to submit a report on projects for each module for grading. This will be due by the end of the weekend following end of the module. While you can do the programming / model development work collectively with other students in your group, the quizzes and the reports are individual. The reports should be submitted to me by **email**, as **PDF files** attachments. The Subject line of the email should read exactly: **PHYS/BIOL212, MODULE X REPORT** (where X is to be replaced by the module number). The name of the attachment should be exactly **LastName,FirstName,ModuleX.pdf**, where you should replace the Last Name, the First Name, and the X with your names and the Module number, respectively. The email will be sorted by an automated program, and your submissions will be missed and **receive a grade of zero** unless formatted appropriately. Submissions are due by **9 am on Monday** on the weeks indicated in the syllabus. I will accept **one late submission** (up to 48 hours) per student over the course of the semester. Submissions late by more than 48 hours, or more than one late submission **will receive a grade of zero**, unless an extension has been requested and granted not later than Friday before the deadline, or there is a documented last-minute emergency.

Each report will need to be **not longer than 6 printed pages**, including figures, plus printouts of your written Python code (as a single searchable PDF file). Longer reports won't be graded. You can use any formatting, as long as the font size is 10 pts or larger, and margins in all directions are at least 1/2 inch. Printouts of the code must be in a fixed width font. Each report should contain the following sections:

1.  Header: your name, report title, names of other group members.

2.  Analysis of the problem: Using Scientific American level language, describe the problem you are solving. Focus on objectives of the study, on what the result of your simulation will be.

3.  Model design: Explain how you translate a problem into a computational model and why. Explain your assumptions and why you made them. Define every symbol you use. (Use Equation Editor or other software to type equations if needed.) Use figures to illustrate a model and label the diagram of relations among variables.

4.  Model solution: Explain in general terms the algorithm used for solving the problem, including specific Python functions implementing various numerical algorithms.

5.  Results, verification, and conclusion: Include results (typically numerical values or graphs; importantly, all figures should have titles, axes labels, legends, etc.) of your solution. Explain how you have convinced yourself that the results are valid (that is, how you verified the code). Interpret and explain your results. Explain what, if anything, should have been done differently.

    You should work with different students for different modules of the class.

**Homeworks:** There will be no graded homework sets. However, doing the projects will require substantial work at home / in the lab.

**Office hours:** I will have a regular office hour every week. So will the TA (at a different time). In addition, we will have review sessions before the exams, or when it becomes clear that many of you have similar concerns that must be addressed.

**Exams:** We will have the final exam in addition to the quizzes. During this exam, you will be required to answer questions about the concepts we studied in class, as well as to sketch pseudocode or Python solutions to short modeling problems. Having a laptop is mandatory during exams. **Final exam: May 7, 8am**

**Laptops:** Having a laptop with a working Anaconda installation is mandatory starting the second class.

**Special note:** I will need to travel professionally during the semester. As a result, a few classes will be conducted by guest lecturers and/or the TA. I will update the dates of classes that will be taught by guests shortly.

**Updates:** Updates will be posted in the News section of the class web site and emailed to the enrolled students. It's your responsibility to check the News section the night before each class.

**Weather closures:** For *Short-term University Closures* (defined as one or two days), changes will be made to the course syllabus to cover the appropriate content during regular class sessions upon return from closure. For "Long-term University Closures" (defined as three or more days), the College has reserved all Registrar scheduled classrooms over the course of two weekends to allow for in-person class meetings to account for the time missed. For Spring 2018 these make-up days are: Saturday, March 24 and Sunday, March 25 (for the first two missed class days); and Saturday, April 14 and Sunday, April 15 (for the second two missed class days).

### Grading

- Class participation / short coding in class -- 5%
- Lab participation / attendance -- 5%
- Quizzes -- 20% (cumulative for all modules, one worst/missing quiz grade will be **dropped**)
- Project reports -- 50% (cumulative for all modules, one worst/missing report grade will be **dropped**)
- Final exam -- 20%

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

**Module 1:** Introduction to modeling process, Python programming language, simple plotting, and to modeling dynamic described by a single ordinary differential equation; calculus review.

- Jan 17 (snow day), 22, 24, 29, 31, Feb 5
- Feb 5: Quiz 1
- *Project report due: Feb 12*

**Module 2:** Modeling dynamics of systems described by multiple variables, computational errors, simulation techniques for deterministic dynamics, Python functions, modules, and scopes, advanced plotting.

- Feb 7, 12, 14, 19, 21, 26
- Feb 26: Quiz 2
- *Project report due: Mar 5*

**Module 3:** Data Driven Models -- Fitting Models to Data: Linear regression and other empirical models, optimization and optimization methods, curve fitting.

- Feb 28, Mar 5, 7, 19, 21, 26
- *Mar 12, 14: Spring break, no classes*
- Mar 26: Quiz 3
- *Project report due: Apr 6*

**Module 4:** Simulations with Randomness, random numbers and random walks, cellular automata and agent-based models.

- Mar 28, Apr 2, 4, 9, 11
- Apr 16 (start of the class period): Quiz 4
- *Project report due: Apr 23*

**Module 5:** High Performance Computing

- Apr 16, 18, 23, 25, 30
- Apr 30: Quiz 5
- *Project report due: May 2* -- **Notice the special day!**

**May 7, 8:00 am -- Final Exam**

### Statement from the Department of Physics

Please treat your classmates with respect both in and out of the classroom. It is unacceptable to discriminate against your fellow students on the basis of race, gender, perceived physics acumen, or any other reason. If you have any concerns, please let me know or contact the department chair, Prof. Eric Weeks (erweeks@emory.edu).
