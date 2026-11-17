---
title: "Lecture 2"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Lecture 2"
order: 30
---

During these lectures, we will review some basic concepts of probability theory, such as probability distributions, conditionals, marginals, expectations, etc. We will discuss the central limit theorem and will derive some properties of random walks. Finally, we will study some specific useful probability distributions. In the course of this whole lecture block, we should be thinking about *E. coli* chemotaxis in the background -- all of these concepts will be applicable.

*Workup questions* for the previous lecture:

1.  Is one photon a lot for a human or not? Let's estimate how many photons we get per photoreceptor per behavioral time scale.
2.  We discussed *E. coli* swimming last time. Let's watch a demo. A question is: how does the spiral motion propel the bug? In other words: how will a tilted bar fall in corn syrup?

A very good introduction to probability theory can be found in [Introduction to Probability](http://www.dartmouth.edu/~chance/teaching_aids/books_articles/probability_book/pdf.html) by CM Grinstead and JL Snell.

- Random variables: motion of *E. coli*, time to neural action potential; diffusion and first passage
  - Sample space, events, probabilities -- probability space
  - nonnegativity: $P_i\ge0$
  - unit normalization: $\sum_{i=1}^N P_i=1$
  - nesting: if $A\subset B$ then $P(A)\le P(B)$
  - additivity (for non-disjoint events): $P(A\cup B)=P(A)+P(B)-P(A\cap B)$
  - complementarity $P(not\, A)=1-P(A)$
- Continuous and discrete events: probability distributions and densities $P_i$ or $P(x)$
  - Cumulative distributions $C(x)=\int_{-\infty}^x P(x')dx'$
  - Change of variables for continuous and discrete variates $P(x')=P(x)\frac{dx}{dx'}$, for multi-dimensional variables $P(\vec{x'})=P(\vec{x})\left|\frac{dx_\alpha}{dx'_\beta}\right|$
- Distributions:
  - uniform: probability of doing a tumble by an *E.coli* in any moment of an interval of duration $T$ if we know that. $P(t)=1/T,\; 0\le t\le T$
  - exponential: time to the next *E. coli* tumble at constant tumbling rate $P(t)=r e^{-rt}$. We derived this in class.
  - Poisson: number of *E. coli* tumbles in a given time; $P(n)=\frac{(rT)^n}{n!}e^{-rT}$. Derived in class
  - For all of these examples, can replace bacterial tumbling with a neural spike.
- Expectations, Moments, central moments
  - moments: $\mu_n=E(x^n)=\int x^nP(x)dx$
  - central moments: $m_n=E((x-\mu)^n)$: distribution mean, width, asymmetry, flatness, etc..
- Frequencies and probabilities: Law of large numbers. If $S=\frac{1}{n}\sum x_i$, then $\mu_S=\mu_x$ and $\sigma^2_S=\sigma^2_x/n$. Thus the sample mean approaches the true mean of the distribution. See one of the homework problems for this week.

We have also discussed our first program in class. The *E. coli* motion program is available here:

- [ecoli.m](/archive/files/Ecoli.m)
