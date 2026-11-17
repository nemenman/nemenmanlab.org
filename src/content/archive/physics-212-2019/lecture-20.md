---
title: "Lecture 20"
group: "physics-212-2019"
wiki_title: "Physics 212, 2019: Lecture 20"
order: 210
---

In today's lecture, we will introduce the first example of a Monte-Carlo simulation.

Follow the [Random Numbers](/archive/files/RandomNumbers.txt) notebook in this lecture.

## Monte-Carlo area estimation

We use random numbers to perform computations that are fundamentally random, and we will focus on those in the upcoming weeks. However, there are computations that are fundamentally deterministic, but may be easier to perform with random numbers. Suppose we want to calculate an integral under a curve $y=y(x)$, with the limits $x\in [a,b]$. We can, of course, do it analytically for some functions $y$ or numerically by subdividing the interval of $x$ into small segments $\Delta x$ and adding up the areas of all small rectangles, $y(x)\times \Delta x$. An alternative way is as follows. Suppose we know that $y(x)$ is positive and smaller than $f_{\rm max}$. Then the area under the curve can be written down as $(b-a)f_{\rm max}*\alpha$, where $\alpha$ is the fraction of the square $b-a$ by $f_{\rm max}$ that is actually under the curve. How do we estimate this fraction? Suppose I generate random points (dart throws), uniformly distributed over the square $b-a$ by $f_{\rm max}$. The fraction of those that end up under the curve (and it's easy to check which one does!) is an estimate of $\alpha$. The provided script performs such calculation for an arbitrary $y=y(x)$. This is called Monte-Carlo integration. Note that our implementation is incomplete -- we don't check if the function ever is below 0 or ever is above $f_{\rm max}$, which a better implementation should do.

## How precise are MC approaches?

A problem, of course, is that such calculation is probabilistic -- every time we perform it, the results are different. But how different? We can verify, first of all, that our probabilistic estimate of the area converges to to true one, where true is known, e.g, when we integrate a function $x^2$. We can also show the distribution of the estimates of the area when we perform the are estimate with $N$ dart throws. We see that the larger $N$ is, the more concentrated the estimates are. To quantify this, we use the provided script to calculate the standard deviation of the estimates as a function of $N$. We find that $\sigma^2 = A/N$, where $A$ is some constant. The claim is that the general $1/N$ law holds true for essentially any function being integrated. It's only the constant that changes -- and we can verify this by integrating other functions.

## Your work

Verify that MC integration of different function still converges as $1/\sqrt{N}$.

## Scripts

[Random Numbers](/archive/files/RandomNumbers.txt) -- the Random Numbers notebook, which we will be exploring over multiple lectures.
