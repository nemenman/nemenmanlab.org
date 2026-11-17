---
title: "Homework 2"
group: "physics-434-2014"
wiki_title: "Physics 434, 2014: Homework 2"
order: 110
---

Please turn on the assignment either as a PDF file to me by email, or as a printout to my mailbox in physics. Detailed derivations (with explanations) and calculations must be present for the problems for full credit.

1.  Let $\{a,b,c\}$ be three possible outcomes of an experiment. Let $p(a) = 1/2,\,p(b) = 1/3$. What is the probability that $a$ or $c$ will happen? That $c$ won't happen?
2.  Let's calculate some expectation values:
    - Calculate the mean and the variance of a binomial distribution.
    - Calculate the mean and the variance of a Poisson distribution, $P(n|n_0)=\frac{n_0^n}{n!}e^{-n_0}$, directly, without using MGF method.
3.  In class we discussed an approximation for the motion of *E. coli*, where the bacterium, moving in two dimensions, would tumble and reorient completely, moving with the velocity of $v$ between the tumbles. Suppose the *E. coli* tumbles at random times, and the distribution of intervals between two successive tumbles is the exponential distribution with the mean $\tau$.
    - What is the distribution of the number of times the *E.coli* will tumble over a time $T$.
    - Remember that means and variances of independent random variables add and use this fact repeatedly to calculate the mean and the variance of the displacement of *E. coli* in this model. How does the variance of the displacement grow with time?
4.  Let's verify the law of large numbers numerically (that is, let's show that the deviation between an expectation value and a sample mean decreases as $\sim 1/\sqrt{N}$. Take a variable that can have three outcomes, with probabilities as in Problem 1 above. Using Matlab/Octave, generate 10 random realizations of this variable. Calculate the observed frequency of the outcome $a$. What is the squared difference of the frequency from the true probability of 1/2? Repeat the procedure 100 times to get a good estimate of the variance of the difference between the frequency and the probability. Now do the same for 30, 100, 300, 1000, 3000, and 10000 samples from the distribution. Plot the variance of the frequency-probability difference vs.\\ the number of samples. Do you see the expected 1/N trend?
5.  Do problem 3.4 (page 83) *Gambler's Fallacy* in Nelson's book.
6.  Do problem 3.12 (page 85) *Effect of New Information* in Nelson's book.
7.  Do problem 4.3 (page 108) *Gene Frequency* in Nelson's book.
8.  **This problem will not be graded for undergraduates**, but it is required for **Graduate Students** -- it's again an exercise to get you up to speed with Matlab/Octave quicker. Finish the problem 4.11 (page 111) *Luria Delbruck experiment* in Nelson's book, which we started in class. Don't write your own function to generate Poisson random numbers but use the poissrnd.m function (if your Matlab installation has it).
9.  **This problem will not be graded** -- it's again an exercise to get you up to speed with Matlab/Octave quicker. Write a Matlab code that would generate random *E. coli* trajectories as described in Problem 3: constant velocity motion, exponential waiting time between tumbles, and random re-orientation during a tumble. Make sure your code can build trajectories of arbitrary durations.
10. **For Graduate Students**: If we complicate the *E. coli* motion model, and say that the velocity for each run is sampled independently from a Gaussian distribution $N(v_0,\sigma_v^2)$, how does the variance grow with time then? How should the bacterium move to make the variance grow faster than linearly with the time?
