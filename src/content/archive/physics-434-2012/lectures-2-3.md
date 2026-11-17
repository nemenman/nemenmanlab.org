---
title: "Lectures 2-3"
group: "physics-434-2012"
wiki_title: "Physics 434, 2012: Lectures 2-3"
order: 40
---

During these lectures, we will review some basic concepts of probability theory, such as probability distributions, conditionals, marginals, expectations, etc. We will discuss the central limit theorem and will derive some properties of random walks. Finally, we will study some specific useful probability distributions. In the course of this whole lecture block, we should be thinking about *E. coli* chemotaxis in the background -- all of these concepts will be applicable.

#### Warmup questions, Lecture 2

1.  We discussed *E. coli* swimming last time. Can E. coli swim by paddling an oar? It's fun to see the following movie of a [kinematic reversibility of Low Reynolds number flows movie](http://www.youtube.com/watch?v=PhsmOc7Hb8Q&t=3m6s).
2.  Let's now watch [a demo of *E. coli* flagellar bundling](http://www.youtube.com/watch?v=25FtMdIFtXM). A question is: how does the spiral motion propel the bug? In other words: how will a tilted bar fall in corn syrup?
3.  Is one photon a lot for a human or not? Let's estimate how many photons we get per photoreceptor per behavioral time scale.

#### Warmup question, Lecture 3

1.  The famous Luria-Delbruck (1943) experiment has shown that mutations appear at random in bacteria, rather than directly in response to an environmental pressure. In the experiment, the grew a small number of bacteria in culture tubes, and then plated samples from these tubes onto agar and provided stress with application of a phage. If bacteria have a low probability of directly responding to a phage, what should a distribution of the number of colonies that survive the phage application be?

### Main Lecture

A very good introduction to probability theory can be found in [Introduction to Probability](http://www.dartmouth.edu/~chance/teaching_aids/books_articles/probability_book/pdf.html) by CM Grinstead and JL Snell.

As we discuss probability theory, think of an *E. coli* that moves in a run/tumble strategy.

- Random variables: motion of *E. coli*, time to neural action potential; diffusion and first passage
  - Sample space, events, probabilities -- probability space
  - nonnegativity: $P_i\ge0$
  - unit normalization: $\sum_{i=1}^N P_i=1$
  - nesting: if $A\subset B$ then $P(A)\le P(B)$
  - additivity (for non-disjoint events): $P(A\cup B)=P(A)+P(B)-P(A\cap B)$
  - complementarity $P(not\, A)=1-P(A)$
- Continuous and discrete events: probability distributions and densities $P_i$ or $P(x)$
  - Cumulative distributions $C(x)=\int_{-\infty}^x P(x')dx'$
- Distributions:
  - uniform: probability of doing a tumble by an *E.coli* in any moment of an interval of duration $T$ if we know that. $P(t)=1/T,\; 0\le t\le T$
  - exponential: time to the next *E. coli* tumble at constant tumbling rate $P(t)=r e^{-rt}$. We derived this in class.
  - Poisson: number of *E. coli* tumbles in a given time; $P(n)=\frac{(rT)^n}{n!}e^{-rT}$. Derived in class
  - For all of these examples, can replace bacterial tumbling with a neural spike.
- Expectations, Moments, central moments
  - moments: $\mu_n=\langle x^n\rangle=\int x^nP(x)dx$
  - central moments: $m_n=\langle((x-\mu)^n\rangle$: distribution mean, width, asymmetry, flatness, etc..
- In particular, a few of the moments are very common:
  - mean: $\mu_1=\mu$
  - variance: $\sigma^2=m_2=\langle (x-\mu)^2\rangle=\langle x^2\rangle - \langle x\rangle^2$
- Means and variances for common distributions:
  - Uniform: $\mu=T/2$
  - Exponential: $\mu=1/r$
  - Poisson: $\mu=rT$.
- Variances:
  - Uniform: $\mu=1/12 T^2$
  - Exponential: $\mu=1/r^2$
  - Poisson: $\mu=rT$.
