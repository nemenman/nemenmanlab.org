---
title: "Syllabus"
group: "physics-212-2019"
wiki_title: "Physics 212, 2019: Syllabus"
order: 10
---

**Course Title:** Computational Modeling for Scientists and Engineers

**Course Numbers:** Physics 212/Biology 212

**Time/Place:** M, W 10-11:15, MSC N304

**Lab:** Th or F 2:30-5:30; MSC N303

**Professor:** Ilya Nemenman ilya.nemenman@emory.edu (best way to contact me)

**TA:** Qihan Liu

**TA:** Jian Wang

**Office Hours**

- Ilya Nemenman -- Monday 11:30-1:00 (subject to change), and by appointment, MSC N240 or N117A if too many people.
- TA Qihan Liu -- Friday, 2:00-3:00, MSC N117E
- TA Jian Wang -- Wednesday, 2:00-3:00, MSC N118D

**Class Web Page:** [/archive/physics-212-2019/](/archive/physics-212-2019/)

## Communications

The best way to contact me (questions about projects, notes about missing classes, scheduling a meeting -- literally, anything) is via email. I have multiple offices on campus, and it is unlikely that you will find me by simply dropping in outside of a regular office hour, unless we scheduled a meeting ahead of time. So please send me emails.

I receive a lot of email, and I employ automated sorting of my Inbox. If you want your message to be read, the subject of the email *must* start with **PHYS/BIOL212**. I will be responding to emails related to the class once a day, but not on weekends and holidays. I will be responding more often before major deadlines related to the class. Thus please do not expect a response instantaneously -- plan ahead, and ask questions early. Similarly, if you request a meeting with me in the last minute, I will likely not be available. You need to communicate with me at least a day or two ahead of time if you want to schedule a meeting. Beyond this, I strive to be as responsive as I can be, and to spend as much time as possible with every student who has questions. Please, respect my time: be on time, respond promptly, read emails before sending questions, and I will similarly respect your time.

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

- [Anaconda Python distribution](https://www.anaconda.com/download/)
- Install Python v 3.X (any minor release v. 3)

Note that coming to class (starting class 2) without a working Python distribution of without a laptop will result in a failing class participation grade.

### Pre-requisites

Pre-requisites: two semesters of calculus and PHYS 151, or instructor consent. I do not require prior computing experience.

This class differs from most other classes in that we will use mathematical modeling and computer simulations as a language that glues students from very diverse backgrounds. Thus we will be spending many of our class hours *programming in Python in class*. It is thus essential to have a laptop access *in class* and *for homework". You will be working in groups of 3-4 students, depending on the eventual class enrollment (up to 10 groups in the class), and everyone is required to have laptops and a working Anaconda distribution.*

### Class structure

I request a lot from my students, but also provide them with all the necessary resources to succeed in the class. As a result, students will work hard, but will likely learn more than in a typical class. In practice, this philosophy is implemented as follows.

**Modules:** The class will consists of modules of a few weeks long. Typically, each module will consist of traditional in-class lectures or tutorials, where the necessary concepts will be introduced (though we might deviate from this as needed). These will be interspersed with short coding exercises, which you will submit through a provided portal in-class; presence of these will be graded. These are designed to help you grasp the concepts studied in class and to get your feet wet with Python programming. The TAs and the professor will help you in these exercises.

**Labs:** A core of the class are the labs, conducted by the TAs, where you will be solving larger coding/modeling projects, one project per module, as well as gaining even more experience with Python. The projects will start simple, but will become more complex towards the end of the class.

**Quizzes:** The last class period of each module will end with a 20-30 min quiz, which will test your comprehension of the material in the module. Barring extraordinary circumstances discussed with me ahead of the quiz class, there will be no makeup quizzes. One worst (or missing) quiz grade will be dropped.

**Reports:** You will need to submit a report on projects for each module for grading. This will be due by the end of the weekend following end of the module. While you can do the programming / model development work collectively with other students in your group, the quizzes and the reports are individual. The reports will need to be done using *Jupyter Notebooks*, and you will submit the notebooks to me via Canvas. Don't worry if you do not know what Jupyter notebook is; we will study this in class. Submissions are due by **9 am on Monday** on the weeks indicated in the syllabus. I will accept **one late submission** (up to 48 hours) per student over the course of the semester. Submissions late by more than 48 hours, or more than one late submission will not be graded and **will receive a grade of zero**, unless an extension has been requested and granted not later than Friday before the deadline, or there is a documented last-minute emergency.

Each Jupyter notebook report should contain the following sections. Each section can be one or multiple cells.

1.  Header: your name, report title, names of other group members.
2.  Short analysis of the problem: Using Scientific American level language, provide a short (few sentences) description of the problem you are solving. Focus on objectives of the study, on what the result of your simulations / analysis will be.
3.  Model design: Explain in one paragraph or so how you translate a problem into a computational model. Explain your assumptions and why you made them. Define every symbol you use. Use figures (import them into Jupyter) to illustrate the model and label the diagram of relations among variables.
4.  Model solution: This will be the Python code solving the problem per se. Note that the code must be documented -- annotations must explain the general logic of the code, and what specific functions and language constructs do.
5.  Results, verification, and conclusion or discussion: Include results (typically numerical values or graphs; importantly, all figures should have titles, axes labels, legends, etc.) of your solution. Explain how you have convinced yourself that the results are valid (that is, how you verified the code). Interpret and explain your results. Explain what, if anything, should have been done differently.

**Partitioning into groups:** There will be 5 modules in the class. You will work in groups of 3-4 on each module. You must not be in the same group with any other student more than twice over the course of the semester.

**Homework:** There will be no graded homework sets. However, doing the projects will require substantial work at home / in the lab.

**Office hours:** I will have a regular office hour every week. So will the TA (at a different time). In addition, we will have review sessions before the exams, or when it becomes clear that many of you have similar concerns that must be addressed.

**Exams:** We will have one **midterm** and **the final exam** in addition to the quizzes. During these exams, you will be required to answer questions about the concepts we studied in class, as well as to sketch pseudocode or write Python code solving smaller modeling problems. Having a laptop is mandatory during exams. **Final exam: May 2, 8 am**

**Laptops:** Having a laptop with a working Anaconda installation is mandatory starting the second class.

**Special note:** I will need to travel professionally during the semester. As a result, a few classes will be conducted by guest lecturers and/or the TAs. As of the beginning of the semester, I will be away on Feb 18, Feb 20 and possibly Mar 18. I will update the dates of classes that will be taught by guests shortly.

**Updates:** Updates will be posted in the News section of the class web site and emailed to the enrolled students. It's your responsibility to check the News section the night before each class.

**Weather closures:** For *Short-term University Closures* (defined as one or two days), changes will be made to the course syllabus to cover the appropriate content during regular class sessions upon return from closure. For "Long-term University Closures" (defined as three or more days), the College has reserved all Registrar scheduled classrooms over the course of two weekends to allow for in-person class meetings to account for the time missed. I will announce these make-up days as needed.

### Grading

- Class participation / short coding in class -- 5%.
  - Note that you need to submit 80% of all coding snippets (participate in 80% of classes when we code) to get the full grade. Unless you have a long-term medical condition, this gives you enough leeway for occasionally missed lectures. Please don't inundate me with notes from coaches, doctors, etc. about occasionally missed classes.
- Lab participation / attendance -- 5%.
  - You need to be present at 11 labs (80% of 14 labs) to get the full grade. Please don't inundate the TAs with notes from coaches, doctors, etc. It is your responsibility to make sure that your attendance is recorded by the TA.
- Quizzes -- 15% (cumulative for all modules, one worst/missing quiz grade will be **dropped**).
- Project reports -- 40% (cumulative for all modules, one worst/missing report grade will be **dropped**). Note that 10% of the project grade (4% of the total grade) will be determined simply by submitting your project choices and student group membership on time.
- Midterm -- 15%.
- Final exam -- 20%.

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

**Module 1:** Introduction to modeling process, Python programming language, Spyder, Jupyter Notebooks, simple plotting. Review of some calculus concepts. Projects Topic: solving an algebraic equation.

- Jan 16, 23, 28, 30, Feb 4
- Feb 4: Quiz 1
- *Project report due: Feb 11*

**Module 2:** Modeling dynamics of systems described by multiple variables, computational errors, simulation techniques for deterministic dynamics, Python functions, modules, and scopes, advanced plotting. Project Topics: solving systems of coupled differential equations describing various natural phenomena.

- Feb 6, 11, 13, 18, 20, 25
- Feb 25: Quiz 2
- *Project report due: Mar 4*

**Module 3:** Data Driven Models -- Fitting Models to Data: Linear regression and other empirical models, optimization and optimization methods, curve fitting. Project Topics: fitting nonlinear curves to experimental data.

- Feb 27, Mar 4, 6, 20, 25
- *Mar 11, 13: Spring break, no classes*
- Mar 25: Quiz 3
- *Project report due: Apr 1*

**Mar 18 -- Midterm**

**Module 4:** Simulations with Randomness, random numbers and random walks, cellular automata and agent-based models. Project Topics: pattern formation in stochastic systems.

- Mar 27, Apr 1, 3, 8, 10
- Apr 10 Quiz 4
- *Project report due: Apr 15*

**Module 5:** High Performance Computing. Project topics: solving partial differential equations on multiple cores.

- Apr 15, 17, 22, 24
- Apr 24: Quiz 5
- *Project report due: Apr 29*

**Apr 29 -- catch-up class; exam review.**

**May 2, 8:00 am -- Final Exam**

### Statement from the Department of Physics

Please treat your classmates with respect both in and out of the classroom. It is unacceptable to discriminate against your fellow students on the basis of race, gender, perceived physics acumen, or any other reason. If you have any concerns, please let me know or contact the department chair, Prof. Stefan Boettcher.
