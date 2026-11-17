---
title: "Lecture 5"
group: "physics-434-2012"
wiki_title: "Physics 434, 2012: Lecture 5"
order: 60
---

We are continuing our review of some basic concepts of probability theory, such as probability distributions, conditionals, marginals, expectations, etc. We will discuss the central limit theorem and will derive some properties of random walks. Finally, we will study some specific useful probability distributions. In the course of this whole lecture block, we should be thinking about *E. coli* chemotaxis in the background -- all of these concepts will be applicable.

A very good introduction to probability theory can be found in [Introduction to Probability](https://web.archive.org/web/20160108154003/http://www.dartmouth.edu:80/~chance/teaching_aids/books_articles/probability_book/pdf.html) by CM Grinstead and JL Snell.

#### Main Lecture

- We are still answering the question: what will the distribution of *E. coli* positions be if it starts at 0 and moves for time $T$.
- Using the addition of CGFs, we show that **when independent random variables add, their cumulants, and, in particular, their means and variances add.**
- *Why do measurements of a quantity many times improve the measurement?*
  - Frequencies and probabilities: **Law of large numbers**. If $S=\frac{1}{n}\sum x_i$, then $\mu_S=\mu_x$ and $\sigma^2_S=\sigma^2_x/n$. This follows from the addition of means and variances. So, we can calculate the mean and the variance of the *E. coli* motion.
- **Warmup question:** Now consider an idealized spherical cell of radius $A$ whose entire surface is covered with disk-like receptors of radius $a$. This is a reasonably good model for an immune cell, such as a mast cell. There are $N\approx 4\pi A^2/(\pi a^2)=4(A/a)^2$ of such receptors. Using the Berg-Purcell limit from the first lecture, we know that the accuracy of determination of the concentration by a single receptor is $\delta C/C \sim 1/\sqrt{aCDt}$, where $D$ is the diffusion coefficient and $t$ is the observation time. Since we have $N$ receptors, we use the law of large numbers to calculate that the overall accuracy of the concentration determination by the cell should be $\delta C/C \sim 1/\sqrt{aCDtN}\propto 1/\sqrt{CDtA^2/a}$. On the other hand, if we consider the entire cell a single large receptor of size $A$, the Berg-Purcell limit gives: $\delta C/C \sim 1/\sqrt{ACDt}$. Can you reconcile the differences between these two estimates?
- **Central limit theorem**: sum of many i.i.d. random variables (with finite variances) approaches a certain distribution, which we call a Gaussian distribution. This is the most remarkable law in the probability theory. It is supposed to explains why experimental noises are often Gaussian distributed as well. More precisely, suppose $x_i$ are i.i.d. random variables with mean $\mu$ and variance $\sigma^2$. Then the CLT says that $S_N=\frac{1}{\sqrt{N}}\sum_{i=1}^N \frac{x_i-\mu}{\sigma}=\frac{1}{\sqrt{N}}\sum_{i=1}^N \xi_i$ is distributed according to $N(0,1)$ (called the *standard* normal distribution), provided $n$ is sufficiently large. We prove this assuming that none of the cumulants of the i.i.d. variables is infinite.
  - The same holds if the $N$ variables have different variances and means, but all variances are bounded. Convergence will be slower though.
- The central limit distribution has only the first two cumulants that are nonzero. What is this distribution?
  - It's a Gaussian with a given mean and a variance. We show this but explicitly computing the CGF of a Gaussian
  - Numerical simulation of the CLT for exponential and binary distributions: [CLT.m](/archive/files/CLT.m)
  - *E. coli* motion has a Gaussian distribution of end points. Moreover, we will show in a homework that $\langle x^2\rangle\propto t$ for *E. coli*. It's a *diffusive* motion as well, just like diffision of small molecules. We demonstrate this by numerical simulations (homework)
- Additional distributions to remember:
  - normal: diffusive motion $P(x)={N}(\mu,\sigma^2)=\frac{1}{\sqrt{2\pi}\sigma}\exp{\left[-\frac{(x-\mu)^2}{2\sigma^2}\right]}$
  - $\delta$-distribution: deterministic limit $\delta(x-\mu)=\lim_{\sigma\to0}\frac{1}{\sqrt{2\pi}\sigma}\exp{\left[-\frac{(x-\mu)^2}{2\sigma^2}\right]}$; $\delta(0)\to\infty,\;\delta(x\neq0)=0$.
  - multivariate normal: $P(\vec{x}|\vec{\mu},\Sigma)=\frac{1}{[2\pi]^{d/2} \left|\Sigma\right|^{1/2}}\exp\left[-\frac{1}{2} \left(\vec{x}-\vec{\mu}\right)^T\Sigma^{-1}\left(\vec{x}-\vec{\mu}\right)\right]$, here $\Sigma$ is the covariance matrix $\Sigma = \left[\begin{array}{llll} \langle(x_1 - \mu_1)(x_1 - \mu_1)\rangle & \langle(X_1 - \mu_1)(X_2 - \mu_2)\rangle & \cdots & \langle(X_1 - \mu_1)(X_n - \mu_n)\rangle \\ \langle(X_2 - \mu_2)(X_1 - \mu_1)\rangle & \langle(X_2 - \mu_2)(X_2 - \mu_2)\rangle & \cdots & \langle(X_2 - \mu_2)(X_n - \mu_n)\rangle \\ \vdots & \vdots & \ddots & \vdots \\ \langle(X_n - \mu_n)(X_1 - \mu_1)\rangle & \langle(X_n - \mu_n)(X_2 - \mu_2)\rangle & \cdots & \langle(X_n - \mu_n)(X_n - \mu_n)\rangle \end{array}\right].$
