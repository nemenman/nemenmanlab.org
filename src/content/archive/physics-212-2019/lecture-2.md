---
title: "Lecture 2"
group: "physics-212-2019"
wiki_title: "Physics 212, 2019: Lecture 2"
order: 30
---

In this lecture, we discuss the basics of the modeling process, focusing on a simple static model of finding an equilibrium configuration of charges.

## What is a model?

The first question we need to address is: What is a model?

**Model:** A model in science is a simplified representation of a phenomenon, a system, or a process being studied.

Typically we build models because their simplified structure makes it easier for us to comprehend them, to analyze them, and to make predictions about how they will respond in yet un-tested scenarios compared to doing the same for the true system. In many respects, everything that you have learned about the scientific method in high school is wrong, or, at best, misleading: science is not about hypothesis testing. Science is about building, verifying, and improving models of Nature. (There is a great short recent article on this topic, which I encourage you to read: <https://www.wired.com/2017/01/dont-dare-try-teach-science-without-building-models/>). A globe is a model of the Earth. A double helix is a model of DNA. Newton's Second Law is a model of how material bodies affect each other. And a mouse, a fly, or an yeast are models of various aspects of human biology.

What is a good model? There's no unique answer to this question. Is Newton's Second Law a good model of interactions among bodies? It's an absurdly good model for the world we experience daily, which exists on scales of meters, kilograms, and seconds. But as soon as velocities become large (comparable to the speed of light), or masses become atomic or smaller, then the Second Law ceases being a good model, and relativistic equations of motion, or Schroedinger's equation of quantum mechanics become better. Similarly, a mouse is a good model of a human when we talk about basic cellular processes, but few would argue that it is a good model of higher level human cognition (indeed, unlike you, no mouse outside of the *Hitchhiker's Guide to The Galaxy* Universe will ever be able to read and comprehend this text). The upshot of this is that the quality of the model is determined by the question this model was designed to answer. The same model can be good in one context, and bad in another. The quality of the model is thus determined by comparing its predictions to those of experiments on a *real system* within the specific context of questions that this model is supposed to answer.

There are different kinds of models: physical models, material models, animal models, conceptual models, and many others. For example, a double helix is a model of DNA. A mouse is a model of some physiological processes in a human. However, in this class, we will talk about **mathematical** and *computational* models only, but all of the considerations above (and many from below) apply to many other kinds of models as well.

## Steps in the computational model-building process

**Analysis of a problem**

Here, by reading assignments, literature, or talking to your colleagues/users, you get answers to the following questions. What is the question being asked? Why is this an interesting question? What is known about the problem and the answer? What form is the answer expected to be in? You often need to slightly rephrase the question being asked as a result of this analysis, making it more precise and focused. You also figure out which kind of information you need in order to solve the problem, and what is missing.

**Model development/formulation**

This step involves translating the problem into the actual mathematical model. It consists of the following sub-steps.

- Gathering relevant data - Having analyzed the problem (above), we know which data are needed to be able to formulate it. These data need to be gathered from the prior literature, from experiments, or from other sources.
- Listing and substantiating assumptions - Models are always *simplified representations* of the real processes or systems, and, therefore, are by definition wrong. These simplified assumptions must be listed explicitly, so that we know when to expect the model to be drastically wrong (if the assumptions are violated), or approximately correct (if the assumptions are not violated).
- Determining variables and their units - Here we list all of the variables that are either dynamical (changing) or constant, and specify their units. Unit specification is important. Recall the story of the [Mars Climate Orbiter](https://en.wikipedia.org/wiki/Mars_Climate_Orbiter#Cause_of_failure), which disintegrated in the Martian atmosphere because of inconsistent specification of units of measurements.
- Determining relation among variables - Some variables will be *constant*, and these need to be specified. Other variables depend on the rest by means of algebraic relations, and we will call them *dependent* variables. Yet other variables dynamically change, so that their current state depends on their past state and the current state of other variables; we will call these *dynamical* or *container* variables by analogy with a physical container, amount of material in which depends on the instantaneous flow rate and the amount of material in the past. Specification of dependencies among variables is typically done in charts -- we will denote constants as triangles, dependent variables as circles, and containers by boxes. Relations between the variables are denoted by arrows.
- Writing down equations or rules - Finally, having identified all dependencies, we need to put a mathematical law at each arrow, identifying *precisely* how variables depend on each other

**Model implementation**

For computational models, this step involves writing a program to solve the problem using your favorite computer language (Python for our course).

- Writing the model in your computing language of choice - Following the discussion on algorithmic thinking, we first write down an algorithm for solving the problem, and write down implementation of the algorithm in the computer language that we use. Needless to say, here we also verify that our program actually works -- that is, executes on a computer.
- Solving the model using the tools of the language - Different languages will have different pre-programmed capabilities, implemented by previous generations of software developers. It is important to realize which tools are available to us and use such pre-developed tools in our implementation.

**Model verification**

This is a crucial step in the modeling process, which is often not discussed explicitly in many textbooks. As anecdote, I point out that almost every faculty member will be able to share a story with you, which will go roughly as follows. A student spends weeks on coding a solution to a certain problem, and then s/he comes to the professor with the result. It takes the professor just one question, one run of the program to show that the solution is wrong. And the student then leaves frustrated that s/he had spent so much time with nothing to show for it, and feeling very much down about himself or herself because of how easy it seemed it was for the professor to solve the problem. In fact, the professor didn't solve the problem. S/he just found a mistake in the student's solution, which was rather easy to do because the solution had not been tested/verified.

- We verify the correctness of the solution first by verifying our code line by line, then block by block. But, crucially, we also verify it by testing special cases. For every interesting parameter/variable/interaction in the problem, there are always special cases of values of the corresponding parameters where the problem becomes easy (or at least easier) to solve, sometimes even analytically. So one sets the parameter to the special value and verifies if the program outputs the simple solution that we know it should. If it doesn't -- the program is wrong. This needs to be repeated for every important parameter in the problem before one can conclude that the solution is probably verified and is probably correct. The more independent special cases are verified, the higher is the probability that there is not a mistake in the solution.

**Interpretation and reporting of the results**

This part will change depending on the specifics of the problem you are solving. However, generally, it involves:

- Making plots, tables, or other visualizations of the program output.
- Responding to the main question, for which the program was designed.
- Discussing if the found solution is what we expected, and why or why not.
- Discussing and interpreting the physical meaning of the solution.
- Discussing what would happen to the solution if some of the simplifying assumptions get relaxed.

Finally, your report of the problem solution should follow the same steps as the modeling process and should contain **all the same sections**.

## Types of models

There are a lot of different computational models that we will be exposed to in the course of this class. And there are even more that we won't be. Some specific types for you to keep in mind are the following:

**Probabilistic (stochastic) vs. deterministic models**

A probabilistic model is the one whose solution involves an element of chance, so that, even if run with the same conditions, detailed solutions of the model might be different in different runs. In contrast, a deterministic model does not have an element of chance, and so the solution is always the same if run with the same initial conditions.

**Static vs. dynamic models**

Static models are such that the variables we study do not depend on time. In dynamic models, the variables of interest depend on time.

**Spatially extended vs. point (or well-mixed) models**

In spatially-extended models, the solution is given by variables (field, as we will call them later) that are different at every point in space. In well-mixed models, only a small set of variables, independent of the spatial coordinates, characterizes the solution

**Continuous time vs. discrete time models**

In continuous time dynamic models, time changes continuously (though on a computer, time is always measured in discrete chunks). In discrete time models, time changes in specific, well-separated steps.

**Continuous space vs. discrete space models**

Similarly to the above, a spatially extended is discrete if the space is specified as a lattice, and it's continuous if every point in space can be considered.

Which specific models to use depends on the type of problem you study, and the choice, the explanation of it, and the assumptions involved, should figure prominently in the model-building process.

## How to build a computational model?

Model building proceeds by first identifying the things we know, and the things we need to find out, and listing them clearly. This includes accounting for dimensions of the variables, and for their type: deterministic or not, continuous or not, dynamic or not. From that point, the model building proceeds hierarchically. We first define a few large scale steps that will be needed to get the solution from the known variables. Usually these include the initialization step, a few large-scale computational steps, and then the termination/results output step. Then we move to the computational steps and, for each of them, we break it up into smaller pieces. We continue to break each piece into even smaller pieces until we realize that we already have an implementation for the pieces that we just constructed. In class, we considered the "shut the door!" program as a prototype for a computational model. Opening the door had to be broken down into finding the door, navigating to it, and then shutting it. Then finding the door had to be broken down into scanning the room, comparing snapshots with various door templates, and identifying if any of the snapshots includes an open door. In its turn, comparing to the templates meant loading the set of templates, and so on. Eventually, we come down to a a set of such atomic instructions, where an atom is either understood by the computer directly, or has already been coded by someone else, and can be reused. At this point, the hierarchical construction stops, and we start moving back on the hierarchy towards larger blocks are assembling both initialization and termination steps together: what are the pieces that are needed for each level of the hierarchy to work? And what are the pieces that each level of the hierarchy will output?

We have spent a lot of time on this in class, and also the "Python Student's Guide" has some relevant discussion in the "Algorithmic Thinking" section, Chapter 1.

A key concept that is illustrated by this approach to building computational models is code / model reuse. *Do not develop models from scratch!* Your time is valuable. Use the code that either you or somebody else wrote previously, even if this is not the most elegant solution, unless there's an educational value in writing the code on your own.
