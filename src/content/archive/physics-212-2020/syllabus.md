---
title: "Syllabus"
group: "physics-212-2020"
wiki_title: "Physics 212, 2020: Syllabus"
order: 10
---

**Course Title:** Computational Modeling for Scientists and Engineers

**Course Numbers:** Physics 212/Biology 212

**Time/Place:** M, W 10-11:15, MSC N304

**Lab:** Th or F 2:30-5:30; MSC N303

**Professor:** Ilya Nemenman ilya.nemenman@emory.edu (best way to contact me)

**TA:** Qihan Liu (Thursday lab)

**TA:** Emma Dawson (Friday lab)

**Office Hours**

- Ilya Nemenman -- Monday and Thursday 12:00-1:00 (subject to change), and by appointment, MSC N240 or N117A if too many people.
- TA: Qihan Liu (Thursday lab), Office hour Monday 1:00-2:00, MSC N117E
- TA: Emma Dawson (Friday lab), Office hour Wednesday 2:30-3:30, MSC N209

**Class Web Page:** [/archive/physics-212-2020/](/archive/physics-212-2020/)

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

Note that coming to class (starting class 2) without a working Python distribution or without a laptop will result in a failing class participation grade.

### Pre-requisites

Pre-requisites: two semesters of calculus and PHYS 151, or instructor consent. I do not require prior computing experience.

This class differs from most other classes in that we will use mathematical modeling and computer simulations as a language that glues students from very diverse backgrounds. Thus we will be spending many of our class hours *programming in Python in class*. It is thus essential to have a laptop access *in class* and *for homework". You will be working in groups of 3-4 students, depending on the eventual class enrollment (up to 10 groups in the class), and everyone is required to have laptops and a working Anaconda distribution.*

### Class structure

I request a lot from my students, but also provide them with all the necessary resources to succeed in the class. As a result, students will work hard, but will likely learn more than in a typical class. In practice, this philosophy is implemented as follows.

**Modules:** The class will consists of modules of a few weeks long. Typically, each module will consist of traditional in-class lectures or tutorials, where the necessary concepts will be introduced (though we might deviate from this as needed). These will be interspersed with short coding exercises, which you will submit through a provided portal in-class; presence of these will be graded. These are designed to help you grasp the concepts studied in class and to get your feet wet with Python programming. The TAs and the professor will help you in these exercises.

**Labs:** A core component of the class are the labs, conducted by the TAs, where you will be solving larger coding/modeling problems, eventually culminating in the final projects for each module, as well as gaining even more experience with Python. The lab problems will start simple, but will become more complex towards the end of the class.

**Quizzes:** The last class period of each module will end with a 20-30 min quiz, which will test your comprehension of the material in the module. Barring extraordinary circumstances discussed with me ahead of the quiz class, there will be no makeup quizzes. One worst (or missing) quiz grade will be dropped.

**Reports:** You will need to submit reports on projects for each module for grading, multiple times as you are developing these reports over the duration of the module. All the work that you do for in-class coding problems, lab coding projects, and final module projects will need to be completed by you at home, and then submitted for grading. The reports will need to be done using *Jupyter Notebooks*, and you will submit the notebooks to me via Canvas. Don't worry if you do not know what Jupyter notebook is; we will study this in class. While you can do the programming collectively with other students (I encourage this, in fact), your submissions will be individual. Submissions are due by **9 am on Monday** every week (unless Monday is a holiday), starting the first week of class. I will accept **one late submission** (up to 48 hours) per student over the course of the semester; you do not need to notify me of a submission delay for this one time. Submissions late by more than 48 hours, or more than one late submission will not be graded and **will receive a grade of zero**, unless an extension has been requested and granted not later than Friday before the deadline, or there is a documented last-minute emergency.

- The notebooks you submit -- even if they are just progress reports -- must not be rough drafts. Each cell must be executable with no errors, and you must document your code. The notebooks should start with
  1.  Header: your name, module number, names of other group members.
- For each of the final module reports, Jupyter notebook report should contain the following sections. Each section can be one or multiple cells.
  1.  Name of the specific project you chose.
  2.  Short analysis of the problem: Using Scientific American level language, provide a short (few sentences) description of the problem you are solving. Focus on objectives of the study, on what the result of your simulations / analysis will be.
  3.  Model design: Explain in one paragraph or so how you translate a problem into a computational model. Explain your assumptions and why you made them. Define every symbol you use. Use figures (import them into Jupyter) to illustrate the model and label the diagram of relations among variables.
  4.  Model solution: This will be the Python code solving the problem per se. Note that the code must be documented -- annotations must explain the general logic of the code, and what specific functions and language constructs do.
  5.  Results, verification, and conclusion or discussion: Include results (typically numerical values or graphs; importantly, all figures should have titles, axes labels, legends, etc.) of your solution. Explain how you have convinced yourself that the results are valid (that is, how you verified the code). Interpret and explain your results. Explain what, if anything, should have been done differently.

**Partitioning into groups:** There will be 5 modules in the class. I expect you to work in groups of 3-4 on each module. You must not be in the same group with any other student more than twice over the course of the semester. Beyond this, please subdivide in your working groups on your own. Notice that no group should be larger than 4 people, but they may be smaller. In fact, you may work on your own if you'd like -- though I don't encourage this.

**Homework:** Besides coding problems, discussed above in the *Reports* section, there will be no other graded homework sets. However, preparing the reports will require substantial work at home / in the lab.

**Office hours:** I will have regular office hours every week. So will the TA (at a different time). In addition, we will have review sessions before the exams, or when it becomes clear that many of you have similar concerns that must be addressed.

**Exams:** We will have one **midterm** and **the final exam** in addition to the quizzes. During these exams, you will be required to answer questions about the concepts we studied in class, as well as to sketch pseudocode or write Python code solving smaller modeling problems. Having a laptop is mandatory during exams. **Final exam: May 5, 8 am**

**Laptops:** Having a laptop with a working Anaconda installation is mandatory starting the second class.

**Special note:** I will need to travel professionally during the semester. As a result, a few classes will be conducted by guest lecturers and/or the TAs. As of the beginning of the semester, I will be away on Feb 19, Mar 4 and possibly Apr 8. I will update the dates of classes that will be taught by guests as I get more informations.

**Updates:** Updates will be posted in the News section of the class web site and emailed to the enrolled students through Canvas. It's your responsibility to check your email and the News section the night before each class.

**Weather closures:** For *Short-term University Closures* (defined as one or two days), changes will be made to the course syllabus to cover the appropriate content during regular class sessions upon return from closure. For "Long-term University Closures" (defined as three or more days), the College has reserved all Registrar scheduled classrooms over the course of two weekends to allow for in-person class meetings to account for the time missed. I will announce these make-up days as needed.

### Grading

- Lab participation / attendance -- 5%.
  - You need to be present at 11 labs (80% of 14 labs) to get the full grade. Please don't inundate the TAs with notes from coaches, doctors, etc. It is your responsibility to make sure that your attendance is recorded by the TA.
- Quizzes -- 15% (cumulative for all modules, one worst/missing quiz grade will be **dropped**).
- Reports -- 45% (cumulative for all modules, one worst/missing report grade will be **dropped** for the final report and cumulative progress). Of these, 25% will be the grades you get for the final reports for each module, and 20% of the grade will be accumulated for the weekly progress sumbissions.
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

The schedule of topics covered during each lecture is subject to change. I may need to revise it to reflect the pace of the class. The current schedule can be found on the class web site. Labs start on Jan 16

**Module 1:** Introduction to modeling process, Python programming language, Spyder, Jupyter Notebooks, simple plotting. Review of some calculus concepts. Projects Topic: solving an algebraic equation.

- Jan 15, 22, 27, 29, Feb 3
- Feb 3: Quiz 1
- *Progress Report: Jan 27, Feb 3*
- *Final Report: Feb 10*

**Module 2:** Modeling dynamics of systems described by multiple variables, computational errors, simulation techniques for deterministic dynamics, Python functions, modules, and scopes, advanced plotting. Project Topics: solving systems of coupled differential equations describing various natural phenomena.

- Feb 5, 10, 12, 17, 19
- Feb 19: Quiz 2
- *Progress Report: Feb 17*
- *Final Report: Feb 24*

**Module 3:** Data Driven Models -- Fitting Models to Data: Linear regression and other empirical models, optimization and optimization methods, curve fitting. Project Topics: fitting nonlinear curves to experimental data.

- Feb 24, 26, Mar 2, 4, 16
- *Mar 9, 11: Spring break, no classes*
- Mar 16: Quiz 3
- *Progress Reports: Mar 2, 16*
- *Final Report: Mar 23*

**Mar 18 -- Midterm**

**Module 4:** Simulations with Randomness, random numbers and random walks, cellular automata and agent-based models. Project Topics: pattern formation in stochastic systems.

- Mar 25, 30, Apr 1, 6, 8
- Apr 8: Quiz 4
- *Progress Reports: Mar 30, Apr 6*
- *FInal Report: Apr 13*

**Module 5:** High Performance Computing. Project topics: solving partial differential equations on multiple cores.

- Apr 13, 15, 20, 22
- Apr 27: Quiz 5
- *Progress Reports: Apr 20*
- *Final Report: Apr 27*

**Apr 27 -- catch-up class; exam review.**

**May 5, 8:00 am -- Final Exam**

### Statement from the Department of Physics

Please treat your classmates with respect both in and out of the classroom. It is unacceptable to discriminate against your fellow students on the basis of race, gender, perceived physics acumen, or any other reason. If you have any concerns, please let me know or contact the department chair, Prof. Stefan Boettcher.

### COVID-19 related changes

**Summary:** the course will run largely in an asynchronous manner, save for lectures and labs that will turn into large discussion sessions and working-together sessions. You will need to do work reading for lectures before they start.

**Lectures:** I will make an effort of having my lecture notes at least 24 hours ahead of our regularly scheduled class times (MW, 10am EDT), posted on the course web site. I will not be recording video lectures, as these will be largely redundant with my lecture notes. For every lecture, I will post a questionnaire, which you will need to answer after reading the lecture materials, and at least an hour before the class time. I will use your answers to see which parts of the lecture are less clear for you, and adjust my teaching plan accordingly.

**Class sessions:** (MW, 10am-11:15am EDT) These will be flipped — in the sense that I will not be delivering lectures, but only responding to your questions that emerge from pre-lecture questionnaires, and during the lectures. I expect you to attend these lectures, and have video on (I tried to work with video off, but it’s hard without getting the facial expression feedback), however, I will not be grading on attendance — especially because many of you are now scattered over various time zones across the world. Thus, to get the most out of these sessions, you should come prepared — having read the material, and having formulated questions. Class sessions will be recorded and posted on the course web site. The College has asked me to add the following information to the syllabus:

- Lectures and other classroom presentations presented through video conferencing and other materials posted on Canvas are for the sole purpose of educating the students enrolled in the course. The release of such information (including but not limited to directly sharing, screen capturing, or recording content) is strictly prohibited, unless the instructor states otherwise. Doing so without the permission of the instructor will be considered an Honor Code violation, and may also be a violation of state or federal law, such as the Copyright Act. All University policies remain in effect for students participating in remote education.

**Quizzes and Midterm:** These will be asynchronous, not in class time. The due dates for Quiz 3 will be March 24 at 10am (the quiz will open on Sunday night, and you will have 30 minutes to do it on your own time). The due date for the Midterm will be March 26 at 10am (the midterm will open on Tuesday, and you will have 2 hours between when you download it and when you submit the result). I will communicate the deadlines for other quizzes later.

**Final:** Final will be asynchronous, you will be taking it on your own time. I don’t know when yet, and am waiting for instructions from the College.

**Labs:** The TAs will let you know their specific instructions for the labs. Generally, the labs will be big discussion sessions, where you work in groups, in breakout rooms, on the code in the lab notebooks. Lab participation will not be graded from now on — the entire lab participation grade will be based on the first half of the semester.

**Grading:** All of the grading policies remain the same except that the 5% lab participation grade will be split into: 2.5% for lab participation through the spring break and 2.5% for answering pre-lecture questionnaires for after the spring break. We had 7 labs before the break, and so you get full 2.5% for lab attendance if you attended 80% of those -- 5 out of 7 labs.

**Schedule:** The semester is not being extended. This means that we lost two lecture classes over the course of the break. I do not know yet how we will catch up with those, and whether we will. Let’s see how the first week shapes up, and I will let you know later.
