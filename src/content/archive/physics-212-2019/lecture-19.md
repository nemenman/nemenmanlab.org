---
title: "Lecture 19"
group: "physics-212-2019"
wiki_title: "Physics 212, 2019: Lecture 19"
order: 200
---

In today's lecture, we will study how to generate different types of random numbers using just a standard, uniformly distributed random number. If time permits, we will also study how random errors scale with the number of random trials.

Follow the [Random Numbers](/archive/files/RandomNumbers.txt) notebook in this lecture.

## Different types of random numbers

In the previous lecture, we discussed how a computer would generate pseudorandom floating point numbers, uniformly distributed between zero and one. How do we use these random numbers to generate other random number types?

### Uniform continuous random numbers

The standard linear congruential generator allows us to generate a uniform pseudo-random floating point number between 0 and 1, called the *standard* uniform random number. How do we then generate a number between, say, $a$ and $b$? For this, we only need to scale and shift the standard number. That is, if we say that $y=a + (b-a)*x$, where $x$ is the standard uniform number, then $y$ is the uniform random number between the two required limits.

### Multinomial random number

A dice is an example of a multinomial random number with six equally probable outcomes. In general, a multinomial random variable is a random variable that can have a finite, discrete set of values, with a given probability of each of these values. We generate these random numbers by sub-dividing the interval between zero and one into subintervals. The number of the sub-intervals is equal to the number of possible outcomes of the multinomial variable, and the length of each sub-interval is equal to the probability of each outcome. We then generate a uniform floating point number between zero and one and check which of the sub-intervals it fell into. The index of the subinterval is then the generated multinomial number. See the code in the script uploaded for this module.

### Exponential random number

Real-valued variables that have an exponential distribution are also very common. For example, the time between two subsequent nuclear decays, or the time between two nearby spikes in the simplest models of neuronal dynamics is exponentially distributed. Why is that? Nuclear decay has a finite probability $\rho dt$ of happening in any interval of time $dt$. For the next event to happen at time $T$, it must not happen in all of the $T/dt$ previous windows of the width $dt$, and then it should happen in the window $(T,T+dt)$. Combining this, we get $P(T,T+dt)=(1-\rho dt)^{T/dt}\rho dt\to e^{-\rho T}\rho dt$, so that the probability density is $P(T)=e^{-\rho T} \rho$. More generally, a random variable $x$ is called exponentially distributed with the mean $x_0$ if the probability density function for this variable obeys $P(x)=1/x_0 \exp(-x/x_0)$. The distribution with $x_0=1$ is called the *standard* exponential distribution. Generation of exponential random numbers illustrates a few important properties of probability distributions. First of all, if we have an access to a standard exponential pseudo-random number, then by just multiplying it by $x_0$ we will get the exponentially distributed number with a mean of $x_0$. This means that we only need to figure out how to generate standard numbers.

For this, let's go back to our definition of continuous random numbers as a limit of an ever-finer discretization of the real axis. Suppose we have a real valued variable $x$, which is distributed according to $P(x)$. This means that the probability of having a sample land in the interval $[x,x+\Delta x)$ tends to $P(x)\Delta x$. Suppose now we have defined a new variable $y=y(x)$, or, alternatively, $x=x(y)$, where $x(y)$ is the inverse function to $y(x)$ (note that we are now assuming that such inverse exists!) Of course, $y$ is also a random variable. How is it distributed? We note that the probability of a sample to land in our interval should not depend on whether we marked its end points as $[x,x+\Delta x)$, or as $[y(x),y(x+\Delta x))\approx [y(x),y(x) + dy/dx \Delta x)$. In other words, $P(x)|\Delta x|=P(y)|\Delta y|$, where we added the absolute value signs to ensure that, even if an interval is negative (read from right to left), the probability is still positive. This gives, in the limit of small $\Delta x$, $P(y) = P(x(y))\left|\frac{dx}{dy}\right|$.

How does this help with generating exponential numbers? Suppose that $x$ is a standard uniform number, so that $P(x)=1$. Let's choose $y=-\log x$, and then $x= e^{-y}$. Then $P(y)=P(x(y))\left|\frac{d e^{-y}}{dy}\right|=e^{-y}$. In other words, the variable $y$ is a pseudo-random standard exponential variable! So generating samples of such random variables is easy -- just generate standard uniform pseudo-random variables and take the negative log of them. The script that goes with this module shows that built-in functions for generation of exponential random samples (*nprnd.exponential*) generate output that is indistinguishable from our approach of taking the negative log.

### Uniform random number in a square

I hope you see that this is easy -- just generate a random $x$ and a random $y$ coordinates using the uniform pseudo-random number, and the job is done.

## Your work

### Uniform random number in a circle

Let's suppose we need a uniform random number in a circle around $(0,0)$ with a radius of 1. **You work: of the following methods that might seem to generate such a random number in a circle, choose the one that you think will be the most accurate and the fastest and implement it. Or create your own method and implement it. Generate a 1000 such random points and plot them. Do you see what you expected to see?**

**Random angle / random scale:** Generate a random pair $(x,y)$ between -1 and 1. The pair defines a ray from zero to this point. Now generate a random distance between 0 and 1, and then scale the point to be this random distance from zero on the ray.

**Random radius / random angle:** Generate a random angle between 0 and $2\pi$ and a random radius between 0 and 1. The point will be at this angle and this radius.

**Random radius-squared / random angle:** Generate a random angle between 0 and $2\pi$ and a random radius-squared between 0 and 1. Take a square root of the second number to get the random radius. The point will be at this angle and this radius.

**Rejection method:** Generate a random pair $(x,y)$ between -1 and 1. Verify that the pair landed within a circle. Reject it if it's outside and accept otherwise. Note that you will need to generate more than $N$ such random pairs to generate $N$ points inside the circle.

Once you do these, you will see that some of these methods will generate too many points at the center of the circle compared to the edges. Those of you who know multivariate calculus should extend the calculation we did for generation of exponential random numbers to the multivariate case and relate the higher density of points near the center of the circle to the Jacobian of the transformation we make when we generate such two-dimensional random numbers from uniform standard numbers.

The notebook uploaded with this module demonstrate these methods. Which one of the ones that work would be the fastest? Why? Verify your guess yourself and explain what you see.

## Gaussian random variables

A Gaussian (or normal) random variable is a variable with the probability density function $P(x) = \frac{1}{\sqrt{2\pi\sigma^2}}\exp \left[-\frac{(x-\mu)^2}{2\sigma^2}\right]$. $\mu$ is called the mean, and $\sigma$ is called the standard deviation. This is the familiar bell-shaped distribution centered around $\mu$ with the width of $\sigma$. The standard normal distribution has $\mu=0$ and $\sigma^2=1$. Clearly, if one can generate a standard normal random variable, one can get a more general normal variable from it by multiplying by $\sigma$ and shifting by $\mu$. So we only need to figure out how to generate a standard normal variable.

While we will skip the details, the generation of a random variable on a circle hints how to generate such standard random variables easily. First, imagine that I generate not one, but a pair of standard random normal variables $(x,y)$. Then $r^2=x^2+y^2$, and $P(x,y)=  \frac{1}{2\pi}\exp \left(-\frac{x^2+y^2}{2}\right)=\frac{1}{2\pi}\exp \left(-\frac{r^2}{2}\right)$. Thus the radius-squared is exponentially distributed. So maybe if one should generate a random angle $\phi$ between 0 and $2\pi$ and a random exponentially distributed variable, which one views as $r^2$. Then taking it's square root and choosing $x=\sqrt{r^2}\cos \phi$ and $y=\sqrt{r^2}\sin \phi$ generates a pair of random standard normal samples. The code uploaded with this module compares this method against the built-in *nprnd.randn* function provided by Python for generation of Gaussian numbers.

## Scripts

[Random Numbers](/archive/files/RandomNumbers.txt) -- the Random Numbers notebook, which we will be exploring over multiple lectures.
