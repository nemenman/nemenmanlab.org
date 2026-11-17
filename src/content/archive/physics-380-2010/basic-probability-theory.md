---
title: "Basic Probability Theory"
group: "physics-380-2010"
wiki_title: "Physics 380, 2010: Basic Probability Theory"
order: 20
---

## Lectures 2 and 3

During these lectures, we will review some basic concepts of probability theory, such as probability distributions, conditionals, marginals, expectations, etc. We will discuss the central limit theorem and will derive some properties of random walks. Finally, we will study some specific useful probability distributions.

A very good introduction to probability theory can be found in [Introduction to Probability](http://www.dartmouth.edu/~chance/teaching_aids/books_articles/probability_book/pdf.html) by CM Grinstead and JL Snell.

- Random variables: motion of *E. coli*, time to neural action potential; diffusion and first passage
  - Sample space, events, probabilities -- probability space
- Properties of distributions:
  - nonnegativity: $P_i\ge0$
  - unit normalization: $\sum_{i=1}^N P_i=1$
  - nesting: if $A\subset B$ then $P(A)\le P(B)$
  - additivity (for non-disjoint events): $P(A\cup B)=P(A)+P(B)-P(A\cap B)$
  - complementarity $P(not\, A)=1-P(A)$
- Continuous and discrete events: probability distributions and densities $P_i$ or $P(x)$
  - Cumulative distributions $C(x)=\int_{-\infty}^x P(x')dx'$
  - Change of variables for continuous and discrete variates $P(x')=P(x)\frac{dx}{dx'}$, for multi-dimensional variables $P(\vec{x'})=P(\vec{x})\left|\frac{dx_\alpha}{dx'_\beta}\right|$
- Distributions:
  - uniform: probability of emitting a spike or doing a tumble by an *E.coli*. $P(t)=1/T,\; 0\le t\le T$
  - exponential: time to the next action potential at constant rate $P(t)=r e^{-rt}$.
  - Poisson: number of action potentials in a given interval; number of *E. coli* tumbles; $P(n)=\frac{(rT)^n}{n!}e^{-rT}$
  - normal: diffusive motion $P(x)={N}(\mu,\sigma^2)=\frac{1}{\sqrt{2\pi}\sigma}\exp{\left[-\frac{(x-\mu)^2}{2\sigma^2}\right]}$
  - $\delta$-distribution: deterministic limit $\delta(x-\mu)=\lim_{\sigma\to0}\frac{1}{\sqrt{2\pi}\sigma}\exp{\left[-\frac{(x-\mu)^2}{2\sigma^2}\right]}$; $\delta(0)\to\infty,\;\delta(x\neq0)=0$.
- Conditional and joint probabilities, Bayes theorem: $P(A,B)=P(A|B)P(B)=P(B|A)P(A)$
  - independence: two variables are independent if and only if $P(A,B)=P(A)P(B)$, or, equivalently, $P(A|B)=P(A)$ or $P(B|A)=P(B)$.
- Distributions:
  - multivariate normal: $P(\vec{x}|\vec{\mu},\Sigma)=\frac{1}{[2\pi]^{d/2} \left|\Sigma\right|^{1/2}}\exp\left[-\frac{1}{2} \left(\vec{x}-\vec{\mu}\right)^T\Sigma^{-1}\left(\vec{x}-\vec{\mu}\right)\right]$, here $\Sigma$ is the covariance matrix $\Sigma = \left[\begin{array}{llll} \langle(x_1 - \mu_1)(x_1 - \mu_1)\rangle & \langle(X_1 - \mu_1)(X_2 - \mu_2)\rangle & \cdots & \langle(X_1 - \mu_1)(X_n - \mu_n)\rangle \\ \langle(X_2 - \mu_2)(X_1 - \mu_1)\rangle & \langle(X_2 - \mu_2)(X_2 - \mu_2)\rangle & \cdots & \langle(X_2 - \mu_2)(X_n - \mu_n)\rangle \\ \vdots & \vdots & \ddots & \vdots \\ \langle(X_n - \mu_n)(X_1 - \mu_1)\rangle & \langle(X_n - \mu_n)(X_2 - \mu_2)\rangle & \cdots & \langle(X_n - \mu_n)(X_n - \mu_n)\rangle \end{array}\right].$
- Expected values: $E(f(x))=\int_{-\infty}^{+\infty}f(x)P(x)dx$. In particular, a few of the expectation values are very common: the mean, $\langle x\rangle=\mu=\int_{-\infty}^{+\infty}xP(x)dx$, and the variance $\langle x^2\rangle-\langle x\rangle^2=\sigma^2=\int_{-\infty}^{+\infty}x^2P(x)dx - \mu^2$.
  - addition of independent variables: in general, $E(f(x)+g(x))=E(f(x))+E(g(x))$, and $E(f(x)g(y))=E(f(x))E(g(y))$, provided $x$ and $y$ are independent, that is, $P(x,y)=P(x)P(y)$.
- Moments, central moments, and cumulants
  - moments: $\mu_n=E(x^n)=\int x^nP(x)dx$
  - central moments: $m_n=E((x-\mu)^n)$: distribution mean, width, asymmetry, flatness, etc..
  - cumulants: $c_n$, $c_1=\mu$, $c_2=\sigma^2$, and higher order cumulants measure the difference of the distribution from a Gaussian (all higher cumulants for a Gaussian are zero)
- Moment and cumulant generating functional: the Gaussian integral
  - Moment generating function (MGF): $M_x(t)=E(e^{tx})$. The utility of MGF comes from the following result: $\mu_n=\left.\frac{d^n M_x(t)}{dt^n}\right|_{t=0}$.
  - Properties of MGF:$M_{x+a}(t)=e^{at}M_x(t)$. From this we can show that if $P(y|x)=P_1(y-x)$, that is, $P_3(y)=\int P_1(x-y)P_2(x)$, then $M_3(t)=M_1(t)M_2(t)$.
  - Cumulant generating function (CGF): $C_x(t)=\log M_x(t)$. Then the cumulants are: $c_n=\left.\frac{d^n C_x(t)}{dt^n}\right|_{t=0}$
- Frequencies and probabilities: Law of large numbers. If $S=\frac{1}{n}\sum x_i$, then $\mu_S=\mu_x$ and $\sigma^2_S=\sigma^2_x/n$. Thus the sample mean approaches the true mean of the distribution. See one of the homework problems for week 2.
- Central limit theorem: sum of i.i.d. random variables approaches a Gaussian distribution. See one of the homework problems for week 2.
- Random walk and diffusion:
  - Unbiased random walk in 1-d: $T$ steps of $\pm a$ length each. For the total displacement, $\mu=T\mu_{\rm one step}=T\times0=0$ and $\sigma^2=T\sigma^2_{\rm one step}=T\times a^2$
  - Conventionally, for a diffusive process: $\mu=vT$ and $\sigma^2=2DdT$, where $d$ is the dimension. So, random walk is an example of a diffusive process on long time scales, and for this random walk: $v=0$ and $D=a^2/2$.
  - Biased walk gets $v\neq0$.
  - multivariate random walk: $\vec{x}=0$, $\sigma^2_r=2Ddt$, where $d$ is the dimension, and $r=|\vec{x}|$. We derive this by noting that diffusion/random walk in every dimension is independent of the other dimensions.

## Homework (due Sep 10)

1.  (Problem 1.2.1 in Grinstead and Snell). Let $\Omega = \{a,b,c\}$ be a sample space. Let $p(a) = 1/2,\,p(b) = 1/3$, and $p(c) = 1/6$. Find the probabilities for all eight subsets of $\Omega$.
2.  Exponential, $P(x|a)=a e^{-at}$, Poisson $P(n|n_0)=\frac{n_0^n}{n!}e^{-n_0}$, and multivariate Gaussian $P(\vec{x}|\vec{\mu},\Sigma)=\frac{1}{[2\pi]^{d/2} \left|\Sigma\right|^{1/2}}\exp\left[-\frac{1}{2} \left(\vec{x}-\vec{\mu}\right)^T\Sigma^{-1}\left(\vec{x}-\vec{\mu}\right)\right]$ (where $d$ is the dimensionality of $\vec{x}$) probability distributions are some of the most important distributions that we will see in this class. Calculate the means and the variances for these distributions. Note that for the Gaussian distribution, the easiest way to calculate the mean and the variance is to calculate the moment generating functional first and then differentiate it. Undergraduates: work with 1-dimensional Gaussians, where $\Sigma^{-1}=1/\sigma^2$. *Graduate students: Calculate the covariance for the multivariate normal distribution.* Pay attention how we do integrals over Gaussians -- we will use this over and over in this class. Also note that logarithms of moment generating functionals are called cumulant generating functionals, and they are often easier to work with. We will denote them as $C_x(t)=\log M_x(t)$. Note that $\frac{d^2C_x(t)}{dt^2}=\sigma^2$.
3.  An *E. coli* moving on a 2-dimensional surface is being tracked in an experiment. It chooses a direction at random and runs, then tumbles and reorients randomly, runs for the second time, tumbles yet again, and keeps running. What is the probability that all three of the directions that it chooses all fall not farther than $\pi$ from each other. That is, what is the probability that the bacterium moves in roughly speaking the same direction all three times? *For graduate students: Can you generalize this for $n$ tumbles, instead of three?*
4.  In class we discussed an approximation for the motion of *E. coli*, where the bacterium would tumble every $\tau$ seconds, moving with the velocity of $v$ between the tumbles. We have concluded that the long-term displacement of the bacterium can be well characterized by diffusion: mean displacement is zero, and $\sigma\propto \sqrt{t}$.
    - Calculate the coefficient of proportionality for this relation for the bacterium in one dimension. By convention, for a diffusion in $d$ dimensions, we write: $\sigma^2=2dDt$, where $D$ is the diffusion coefficient. What is the diffusion coefficient for this model?
5.  Let's now improve the model and say that *E. coli* tumbles at random times, and the distribution of intervals between two successive tumbles is the exponential distribution with the mean $\tau$.
    - Derive the distribution of the number of times the *E.coli* will tumble over a time $T$.
    - Remember that means and variances of independent random variables add and use this fact repeatedly to calculate the mean and the variance of the displacement of *E. coli* in this model (still in 1 dimension). Is it still described well by a diffusion model? What is the diffusion coefficient?
    - *For Grads: If we complicate the model even further, and say that the velocity for each run is sampled independently from $N(v_0,\sigma_v^2)$, does this change the diffusive behavior?*
    - What should we do to the distributions run durations (and velocities) to violate the diffusive limit?
6.  The law of large numbers states that when a random variable is independently sampled from a distribution many times, its sample mean approaches the mean of the distribution. We have almost showed this in class, but stopped a bit short. Let's finish the work. Recall that, when independent random variables are summed, means add and variances add (if both exist). Use this to show that the mean of a sample of $N$ independent, identically distributed (denoted: i.i.d.) variables $x_i$ (with mean $\mu$ and variance $\sigma^2$), namely $S_n=\frac{1}{n}\sum_{i=1}^n x_i$, has the mean equal to $\mu$, and the variance equal to $\sigma_\Sigma^2=\sigma^2/n$. Therefore, as $n$ grows, $S_n$ becomes closer and closer to $\mu$, proving the law.
7.  The most remarkable law in the probability theory is the Central Limit Theorem (CLT). Its colloquial formulation is as follows: a sum of many i.i.d. random variables is almost normally distributed. This is supposed to explains why experimental noises are often normally distributed as well. More precisely, suppose $x_i$ are i.i.d. random variables with mean $\mu$ and variance $\sigma^2$. Then the CLT says that $S_n=\frac{1}{\sqrt{n}}\sum_{i=1}^N \frac{x_i-\mu}{\sigma}=\frac{1}{\sqrt{n}}\sum_{i=1}^N \xi_i$ is distributed according to $N(0,1)$ (called the *standard* normal distribution), provided $n$ is sufficiently large.
    - Using either Matlab, Excel, or any other package, generate a sequence of $n=25$ random variables uniformly distributed between 0 and 1. Calculate $S_{25}$ for them. Do this a 100 times and histogram the resulting 100 values of $S_{25}$. Does the histogram look as if it's coming from a standard normal?
    - *For graduate students*. Let's prove the CLT.
      - First show that if $z=x+y$ (where all three are random variables), then $M_z(t)=M_x(t)M_y(t)$, or, alternatively, $C_z=C_x+C_y$. In particular, this means that, for $z=\sum_{i=1}^n x_i$, we have $M_z=(M_x)^n$.
      - Write $M_\xi(t)$ to the first few orders in the Taylor series in $t$. Use the identity $\lim_{n\to\infty}\left(1+1/n\right)^n=e$ to show that $M_{S_n}$ approaches the moment generating functional for a standard normal as $n\to\infty$.
