---
title: "Lecture 3"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Lecture 3"
order: 40
---

We are continuing our review of some basic concepts of probability theory, such as probability distributions, conditionals, marginals, expectations, etc. We will discuss the central limit theorem and will derive some properties of random walks. Finally, we will study some specific useful probability distributions. In the course of this whole lecture block, we should be thinking about *E. coli* chemotaxis in the background -- all of these concepts will be applicable.

A very good introduction to probability theory can be found in [Introduction to Probability](https://web.archive.org/web/20160108154003/http://www.dartmouth.edu:80/~chance/teaching_aids/books_articles/probability_book/pdf.html) by CM Grinstead and JL Snell.

#### Warmup question

1.  The famous Luria-Delbruck (1943) experiment has shown that mutations appear at random in bacteria, rather than directly in response to an environmental pressure. In the experiment, the grew a small number of bacteria in culture tubes, and then plated samples from these tubes onto agar and provided stress with application of a phage. If bacteria have a low probability of directly responding to a phage, what should a distribution of the number of colonies that survive the phage application be?

#### Main lecture

- Multivariate distributions
  - Conditional and joint probabilities, Bayes theorem: $P(A,B)=P(A|B)P(B)=P(B|A)P(A)$
  - independence: two variables are independent if and only if $P(A,B)=P(A)P(B)$, or, equivalently, $P(A|B)=P(A)$ or $P(B|A)=P(B)$.
- Expected values: $E(f(x))=\int_{-\infty}^{+\infty}f(x)P(x)dx$. In particular, a few of the expectation values are very common: the mean, $\langle x\rangle=\mu=\int_{-\infty}^{+\infty}xP(x)dx$, and the variance $\langle x^2\rangle-\langle x\rangle^2=\sigma^2=\int_{-\infty}^{+\infty}x^2P(x)dx - \mu^2$.
  - addition of independent variables: in general, $E(f(x)+g(x))=E(f(x))+E(g(x))$, and $E(f(x)g(y))=E(f(x))E(g(y))$, provided $x$ and $y$ are independent, that is, $P(x,y)=P(x)P(y)$.
- Moments, central moments, and cumulants -- *What are the moments of the*E. coli*trajectory?*
  - Cumulants: $c_n$, $c_1=\mu$, $c_2=\sigma^2$, and higher order cumulants measure the difference of the distribution from a Gaussian (all higher cumulants for a Gaussian are zero)
- Moment and cumulant generating functional
  - Moment generating function (MGF): $M_x(t)=E(e^{tx})$. The utility of MGF comes from the following result: $\mu_n=\left.\frac{d^n M_x(t)}{dt^n}\right|_{t=0}$. That is: $M(t)=1+ \mu_1t+\frac{\mu_2}{2}t^2+\frac{\mu_3}{3!}t^3+\cdots$.
  - Properties of MGF:$M_{x+a}(t)=e^{at}M_x(t)$. From this we can show that if $P(y|x)=P_1(y-x)$, that is, $P_3(y)=\int P_1(y-x)P_2(x)$, then $M_3(t)=M_1(t)M_2(t)$. Alternatively, if $z=x+y$, then the MGF of z is a product of the MGF's of x and y.
  - Cumulant generating function (CGF): $C_x(t)=\log M_x(t)$. Then the cumulants are: $c_n=\left.\frac{d^n C_x(t)}{dt^n}\right|_{t=0}$. That is: $C(t)=c_1t+\frac{c_2}{2}t^2+\frac{c_3}{3!}t^3+\cdots$. CGF of independent variables add.
- Using the addition of CGFs, we show that **when random variables add, their means and variances add.**
- *Why do measurements of a quantity many times improve the measurement?" Frequencies and probabilities: Law of large numbers. If $S=\frac{1}{n}\sum x_i$, then $\mu_S=\mu_x$ and $\sigma^2_S=\sigma^2_x/n$. This follows from the addition of means and variances. So, we can calculate the mean and the variance of the*E. coli*motion.*
