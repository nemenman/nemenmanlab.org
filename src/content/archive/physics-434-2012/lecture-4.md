---
title: "Lecture 4"
group: "physics-434-2012"
wiki_title: "Physics 434, 2012: Lecture 4"
order: 50
---

We are continuing our review of some basic concepts of probability theory, such as probability distributions, conditionals, marginals, expectations, etc. We will discuss the central limit theorem and will derive some properties of random walks. Finally, we will study some specific useful probability distributions. In the course of this whole lecture block, we should be thinking about *E. coli* chemotaxis in the background -- all of these concepts will be applicable.

A very good introduction to probability theory can be found in [Introduction to Probability](http://www.dartmouth.edu/~chance/teaching_aids/books_articles/probability_book/pdf.html) by CM Grinstead and JL Snell.

#### Warmup question

1.  What is the mean and the variance of the position of *E. coli* at the end of a single run, if the bacterium started at the origin? Let's suppose that the motion is 1-dimensional.
2.  Solve the same problem for 2 and 3 dimensional version at home.

#### Main lecture

- Multivariate distributions
  - Conditional and joint probabilities, Bayes theorem: $P(A,B)=P(A|B)P(B)=P(B|A)P(A)$
  - independence: two variables are independent if and only if $P(A,B)=P(A)P(B)$, or, equivalently, $P(A|B)=P(A)$ or $P(B|A)=P(B)$.
- Change of variables for continuous and discrete variates $P(x')=P(x)\frac{dx}{dx'}$
  - *Grad students:* for multi-dimensional variables $P(\vec{x'})=P(\vec{x})\left|\frac{dx_\alpha}{dx'_\beta}\right|$
  - How do we generate an exponentially distributed random variable? Log of a uniform random number is an exponentially distributed random number.
- Addition of variables:
  - $\langle f(x)+g(x)\rangle=\int dx\, P(x)[f(x)+g(x)] = \int dx\, P(x) f(x) +\int dx,P(x) g(x)=\langle f(x)\rangle+\langle g(x)\rangle$
  - If $x$ and $y$ are independent, that is, $P(x,y)=P(x)P(y)$, then we prove similarly that $\langle f(x)g(y)\rangle=\langle f(x)\rangle\langle g(y)\rangle$.
- Moment generating functional
  - Moment generating function (MGF): $M_x(\lambda)=\langle e^{\lambda x}\rangle$. The utility of MGF comes from the following result: $\mu_n=\left.\frac{d^n M_x(\lambda)}{d\lambda^n}\right|_{\lambda=0}$. That is: $M(\lambda)=1+ \mu_1\lambda+\frac{\mu_2}{2}\lambda^2+\frac{\mu_3}{3!}\lambda^3+\cdots$.
  - Properties of MGF:$M_{x+a}(\lambda)=e^{a\lambda}M_x(\lambda)$.
  - If $z=x+y$, then $M_z(\lambda)=M_x(\lambda)M_y(\lambda)$.
  - Example: We explicitly calculate the MGF for the Poisson distribution: $M_n(\lambda)=e^{rT(e^\lambda-1)}$.
- Cumulant generating function (CGF): $C_x(\lambda)=\log M_x(\lambda)$. Then the cumulants are: $c_n=\left.\frac{d^n C_x(\lambda)}{d\lambda^n}\right|_{\lambda=0}$. That is: $C(t)=c_1t+\frac{c_2}{2}t^2+\frac{c_3}{3!}t^3+\cdots$. Cumulants are another version of moments of the distribution.
  - We can show how the first few cumulants are related to the moments:
    - $c_1=\left.\frac{d C_x(\lambda)}{d\lambda}\right|_{\lambda=0}=\left.\frac{d \log M_x(\lambda)}{d\lambda}\right|_{\lambda=0}=\left.\frac{M_x'(\lambda)}{M_x(\lambda)}\right|_{\lambda=0}=\frac{\mu}{1}=\mu$
    - Similarly we show that$c_2=\sigma^2$.
  - CGF of independent variables add.
