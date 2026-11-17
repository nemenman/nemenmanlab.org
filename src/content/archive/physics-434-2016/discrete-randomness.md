---
title: "Discrete randomness"
group: "physics-434-2016"
wiki_title: "Physics 434, 2016: Discrete randomness"
order: 30
---

During these lectures, we study concepts of probability theory, such as probability distributions, conditionals, marginals, expectations, etc. We derive the law of large numbers. We study some specific useful probability distributions over discrete variables. In the course of this whole lecture block, we should be thinking about *E. coli* chemotaxis, neural firing, and bacterial mutations in the background -- all of these concepts will be applicable.

#### Side story, Lecture 2

Let's talk a bit about life at low Reynolds number / high viscosity.

1.  We discussed *E. coli* swimming last time. Can *E. coli* swim by paddling an oar? It's fun to see the following movie of a [kinematic reversibility of Low Reynolds number flows movie](http://www.youtube.com/watch?v=PhsmOc7Hb8Q&t=3m6s).
2.  Let's now watch [a demo of *E. coli* flagellar bundling](http://www.youtube.com/watch?v=25FtMdIFtXM). A question is: how does the spiral motion propel the bug? In other words: how will a tilted bar fall in corn syrup?

The outcome of these discussions is that life for cells is very different from the life in the macroscopic world that we are so used to. So throw away all your preconceived notions and keep on asking questions!

### General notes

There are now two good collections of notes that you can follow for this block of lectures. The first are Chapters 3, 4 from the Nelson's book. Another good introduction to probability theory, one of my favorites, but more on the mathematical side, can be found at [Introduction to Probability](https://web.archive.org/web/20160108154003/http://www.dartmouth.edu:80/~chance/teaching_aids/books_articles/probability_book/pdf.html) by CM Grinstead and JL Snell.

As we discuss probability theory, think of an *E. coli* that moves in a run/tumble strategy, a neuron that fires randomly, or the Luria-Delbruck experiment. All of these should give you a good intuition about the random distributions that we are discussing.

During these lectures, we are also often stopping and doing some simple Matlab simulations -- to illustrate what we are discussing theoretically, and also to prepare us to do more interesting computational problems.

### Introducing concepts of randomness

Some examples of random variables are: position of *E. coli*, time to neural action potential; number of bacteria with a given mutation; number of molecules of a nutrient near a bacterium. To define the necessary probabilistic concepts, we need

- To define a set of outcomes that a random variable can take (e.g., head or tails, six sides of a die, etc.).
- Then we define a probability of a certain outcome $x$ as a limit of frequencies after many random draws, or events. That is, if after $N$ draws, the outcome happened $n_x$ times, then it's frequency is $f_x=n_x/N$, and the probability is $P(x)=\lim_{N\to\infty}f_x=\lim_{N\to\infty}\frac{n_x}{N}$.

Probabilities satisfy the following properties, which follow from their definition of limits of frequencies:

- nonnegativity: $P_i\ge0$
- unit normalization: $\sum_{i=1}^N P_i=1$
- nesting: if $A\subset B$ then $P(A)\le P(B)$
- additivity (for non-disjoint events): $P(A\cup B)=P(A)+P(B)-P(A\cap B)$
- complementarity $P(not\, A)=1-P(A)$

Good place for a randomness demo is <https://web.archive.org/web/20151221055118/http://faculty.rhodes.edu:80/wetzel/random/mainbody.html>. Test yourself -- can you generate a random sequence?

### What if we are studying more than one random variable?

Multivariate distributions $P(x,y)$ is the probability of both events happening. It contains all of the information about the variables, including

- Marginal distribution: $P(x)=\sum_{y\in Y} P(x,y)$
- The conditional distribution, which can then be defined as $P(y|x)=P(x,y)/P(x)$, so that the probability of both events is the probability of the first happening, and then the probability of the second happening given that the first one has happened.

The conditional distributions are related using the Bayes theorem, which says: $P(x,y)=P(x|y)P(y)=P(y|x)P(x)$, so that $P(x|y)=\frac{P(y|x)P(x)}{P(y)}$.

We can also now formalize the intuitive concept of dependence among variables. Two random variables are considered to be statistically independent if and only if $P(x,y)=P(x)P(y)$, or, equivalently, $P(x|y)=P(x)$ or $P(y|x)=P(y)$.

### Characterizing probability distributions

Probability distributions are typically characterized by what's known as *expectation values*, or the anticipated averaged of various functions of the random variables. That is, the expectation of $f(x)$ is defined as. $E(f(x))=\langle f(x)\rangle=\sum_{x\in X}f(x)P(x)$. Expectation values add, whether for the same or for different variables, so that $E(f(x)+g(x))=E(f(x))+E(g(x))$, $E(f(x)+g(y))=E(f(x))+E(g(y))$. Importantly, for independent variables $x$ and $y$, expectations of products are also products of expectations: $E(f(x)g(y))= \sum_{x\in X}\sum_{y\in y}f(x)g(y)P(x,y)=\sum_{x\in X}\sum_{y\in y}f(x)g(y)P(x)P(y)= E(f(x))E(g(y))$.

A certain set of particular expectations are very useful and commonly used to characterize probability distributions. These are expectations of powers of the random variable, and they are called *moments* $\mu_n=\langle x^n\rangle=\sum_{x\in X} x^nP(x)$. Moments do not always exist, specifically for long-tailed probability distributions, as discussed at length in Nelson's book. The lower order moments are the most commonly used, if exist, and they got their own names.

- The first moment is the mean: $\mu_1=\langle x\rangle=\mu$
- The second moment allows us to define the variance, or the spread of the distribution: $\sigma^2=\langle (x-\mu)^2\rangle=\langle x^2\rangle - \langle x\rangle^2$.

Interestingly, the additivity/multiplicativity of expectations discussed above then gives for two independent variables $x$ and $y$:

- $\mu(x+y)=\mu(x)+\mu(y)$, and
- $\sigma^2(x+y)=\sigma^2(x)+\sigma^2(y)$.

**That is, means and variances of independent variables ad!** This is a very important result, which will follow us through the entire course.

Finally, it some times makes sense to define what is called the *central moments*, which measure properties such as spread and skewness of the distribution relative to its mean. $c_n=\langle (x-\mu)^n\rangle=\sum_{x\in X} (x-\mu)^nP(x)$. Note that the variance is the second central moment.

### Specific probability distributions

We then discussed some useful discrete probability distributions. We built all of them from the simple coin-toss (Bernoulli) distribution, step-by-step. However, while working with coins, it is useful to keep some physics in mind. A coin coming heads up could be a mutation happening, an action potential generated in a neuron, or a ligand molecule grabbed by a bacterial receptor.

- Bernoulli distribution: $P(0)=q$, $P(1)=p$.
- Binomial distribution: the number $n$ of heads out of $N$ trials: $P(n|N,p)={m \choose n}p^nq^{N-n}$.
- Geometric distribution: the number of trials to the next head, $P(n|p)=pq^{n-1}$.
- Poisson: the number of heads out of $N$ trials, when the probability of a head is small. This is the $p\to0$, and $pN\to {\rm const}$ limit of the binomial distribution: $P(n|\lambda=pN)= \frac{e^{-\lambda}\lambda^n}{n!}$.

Again, for all of these distributions we can think of the number of mutations in a bacterium, or the number of spikes produced by a neuron, or a number of molecules captured by a cell. In class and in various homework problems, we then calculated the means and the variances of our basic discrete probability distributions.

- Bernoulli: $\mu=p$, $\sigma^2=pq$.
- Binomial distribution: $\mu=Np$, $\sigma^2=Npq$.
- Geometric distribution: $\mu=1/p$, $\sigma^2=q/p^2$.
- Poisson distribution: $\mu=\lambda$, $\sigma^2=\lambda$.

### Moment generating function

This is a complicated beast, and it's not immediately obvious why we even bother introducing it. So let's stay tuned for a few lectures.

Moment generating function (MGF) is defined as $M_x(\lambda)=\langle e^{\lambda x}\rangle$. It is thus an expectation of $e^{\lambda x}$. Of course, it won't always exist. For it to exist, the distribution must fall off exponentially or faster in its tails. The utility of MGF comes from writing down the exponential as its taylor series, which then gives: $M(\lambda)=1+ \mu_1\lambda+\frac{\mu_2}{2}\lambda^2+\frac{\mu_3}{3!}\lambda^3+\cdots$. In other words, $\mu_n=\left.\frac{d^n M_x(\lambda)}{d\lambda^n}\right|_{\lambda=0}$ -- one can calculate the MGF just once, and then get all moments of the distribution from it by a simple differentiation. Additionally, MGF has the following useful properties:

- $M_{x+a}(\lambda)=e^{a\lambda}M_x(\lambda)$.
- If $z=x+y$, and $x$ and $y$ are independent, then $M_z(\lambda)=M_x(\lambda)M_y(\lambda)$. That is, MGFs of sums of independent variables are products of their individuals MGFs.

To illustrate this, in class we explicitly calculated the MGF for the Poisson distribution $P(n|rT)$, obtaining $M_n(\lambda)=e^{rT(e^\lambda-1)}$. And, indeed, the known results for the mean and the variance of the poisson distribution follow from this immediately.

While we didn't do this in class, it does make sense to define another generating function, the so called *cumulant generating function*, $F_x(\lambda)=\log M_x(\lambda)$. One can similarly expand this function near $\lambda=0$ in a Taylor series, $F(\lambda)=1+ \xi_1\lambda+\frac{\xi_2}{2}\lambda^2+\frac{\xi_3}{3!}\lambda^3+\cdots$. In other words, one can define $\xi_n=\left.\frac{d^n F_x(\lambda)}{d\lambda^n}\right|_{\lambda=0}$. The quantities $\xi_n$ are called *cumulants.* These are combinations of various moments of probability distribution, utility of which will become useful when we study the Gaussian distribution. But notice that $\xi_1=\left.\frac{d F_x(\lambda)}{d\lambda}\right|_{\lambda=0}=\mu$ and $\xi_2=\left.\frac{d^2 F_x(\lambda)}{d\lambda^2}\right|_{\lambda=0}=\sigma^2$. That is, the first cumulant is the mean, and the second cumulant is the variance. This provides us a taste of what the cumulants are -- they are special moments of the probability distribution that characterize its features in such a way that measure of the distribution width (2nd cumulant) is not influenced by the mean (the 1st cumulant), and the one characterizing the skewness (3rd cumulant) is not influenced by the value of the 2nd, and so on. This is in contrast to the usual second moment, which is the sum of the variance and the square of the mean.
