---
title: "Lecture 6"
group: "physics-212-2019"
wiki_title: "Physics 212, 2019: Lecture 6"
order: 70
---

## Introduction to verification of models

The most important thing to remember here is that a computer does exactly what you ask it to do. And we are pretty bad at following our own instruction in an unbiased manner. You will be reading the code and thinking that it does what you want it to do, but you will be wrong. Your biases and expectations will have the best of you. Thus it is almost useless to verify the code line by line for correctness (unless we are dealing with a simple syntactic error). Instead one needs to run the code many times, to look at what it outputs, and to ask if the output makes sense.

This is not very precise -- and, indeed, verifying a computational model is often as much an art as it is science. But some simple rules of thumb apply. First, *do not verify your model all at once!* Instead, just like we build models hierarchically, we need also to verify them hierarchically. For this, you verify and seal every leaf on the tree that is your model. Then you verify blocks that consist of many leafs, then the blocks of blocks, and so on. Do not attempt to write (and certainly not to verify) a larger piece of a model when its constituent pieces are not yet verified to your satisfaction.

Second, when verifying an piece of the code, every free parameter, every variable in the code must be verified. For this, you need to set every one of the parameters (and some parameter combinations) in turn to values that make the problem easier. These could be value that make your problem analytically solvable, or reduce your problem to something that you already solved before. And then you must ensure that the output of your code with such *special cases* parameter values is exactly what you expect it to be from the previous solutions. There's something called the thirteenth strike rule -- if a clock strikes 13 times, then all of them (not just the thirteenth) are wrong. If you see that the problem does something unreasonable for these special cases, it's more likely than not that it is also wrong in general. If you found a mistake -- fix it.

Third, spend time on verification and try all sorts of initializations, even if you do not expect that the initialization simplifies the problem, allowing you to compare to the prior knowledge. Instead, what is likely to happen is that, for some of the initial conditions, your model will produce obviously wrong results. For example, it may crash, or may produce NaN outputs, or will enter an infinite loop, or produce negative numbers for physical quantities that can only be positive, or something similar. And once you see a problem, do not just step over it -- solve it! Figure out what's going on, and fix things by either introducing more exception checks, or by fixing the logic of the solution. The more things you try, the likely you are to detect more errors. But also remember -- small changes in parameters are almost useless. Go for large changes, explore the edges of the parameter spaces. You are more likely to identify problems this way.

The end of the [Lecture 5](/archive/physics-212-2019/lecture-5/) has an example of how one would verify a computational model, namely the model of finding the equilibrium position of a charge surrounded by three other charges. Much of the course this semester is about how to verify models -- and as you practice this, you will become better at this task.

## Jupyter notebooks and writing reports

Appendix B in the textbook has a nice introduction of what Jupyter notebooks are. They are basically lab notebooks for computational experimentation and are a great way of writing lab reports. They allow for easy embedding and execution of Python code, of equations, of external pictures, and of Python graphics output.

I provided for you a few sample Jupyter notebooks, including

- [Jupyter notebook for solving the equilibrium position of a charge problem](/archive/files/Newton2019.txt).
- [Sample project report in a Jupyter notebook](/archive/files/SampleReport2019.txt) for the problem referenced above.

There are many online resources about Jupyter notebooks -- and I suggest you read some of them (see below for one link). These notebooks may be a very useful tool for you in the future. For example, in my own research group, students write weekly progress reports and presentations for group meetings using Jupyter notebooks.

- [Introductory tutorials for Jupyter notebooks](https://github.com/jupyter/jupyter/wiki/A-gallery-of-interesting-Jupyter-Notebooks#introductory-tutorials)

## Quiz 1

At the end of the lecture, Quiz 1 will open up on Canvas, and you must finish it and submit by the end of the class.
