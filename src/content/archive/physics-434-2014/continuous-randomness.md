---
title: "Continuous randomness"
group: "physics-434-2014"
wiki_title: "Physics 434, 2014: Continuous randomness"
order: 50
---

## General Notes

In these lectures, we are extending our ideas of randomness from discrete to continuous variables. After introducing basic concepts, we study some specific useful probability distributions. In the course of this whole lecture block, we should be thinking about *E. coli* chemotaxis in the background -- all of these concepts will be applicable, when answering questions like: What is the duration of a single run? How far away would the *E. coli* move after many runs? etc.

Here we are largely following Chapter 5 in the Nelson's book. However, an additional very good introduction to probability theory can be found in [Introduction to Probability](http://www.dartmouth.edu/~chance/teaching_aids/books_articles/probability_book/pdf.html) by CM Grinstead and JL Snell.

Since there are good books to follow here, the notes are not very detailed.

## Main lecture

#### Introduction

Some random variables that we discussed were discrete, like heads or tails of a coin toss, or existence or non-existence of a mutation. However, other random variables can be continuous. For example, the heigh of people in the room, or a position of an *E. coli* in an experiment, or a time to neural action potential -- all of these variables are, in principle, continuous. It makes little sense to ask what is the probability that an individual has *exactly* a certain height; every two people in the room will have the height which is different, if only by a bit. it does make sense, however, to ask what is the probability that the height of a person is close to a certain number$x_0$, within $\Delta x$ from it. Clearly, in the limit of small $\Delta x$, this probability will be proportional to $\Delta x$ itself, $P(x\in[x_0,x_0+\Delta x])=p(x_0)\Delta x$. Thus, having defined the set of possible outcomes of an experiment as a real number, we can define a *probability density*, as a double limit -- a limit of frequencies of observing a certain interval after many independent draws, and the limit of taking the interval size small, $\Delta x\to0$:

$$
p(x_0)=\lim_{\Delta x\to\infty}\lim_{N\to\infty}\frac{f_{[x_0,x_0+\Delta x]}}{\Delta x}=\lim_{\Delta x\to\infty}\lim_{N\to\infty}\frac{n_{[x_0,x_0+\Delta x]}}{N\Delta x}.
$$

Probability density satisfy most of the same properties that we discussed for probability distributions. For example, they must normalize to one: $\int dx p(x) =1$. One distinction of probabilities is that probability densities can actually be larger than one (as long as they normalize). Joint, marginal, and conditional probability densities can be defines just like probabilities. Expectation values and, in particular, moments can be defined similarly, by replacing summations with integrals.

Additionally, for continuous variables (or more generally, for continuous or discrete ordinal variables), one can define the cumulative distribution, which is the probability that a random draw will be smaller than $x$, $C(x)=\int_{-\infty}^x P(x')dx'$.

### Specific probability distributions

Just like for the discrete case, there are some continuous distributions that happen more commonly than others, and are thus more useful. These include

- Uniform probability density. An example of this would a probability of *E.coli* tumbling at any moment of an interval of duration $T$. Then $P(t)=1/T,\; 0\le t\le T$. Note that uniform random numbers between 0 and 1 are generated in Matlab using the function rand. $\mu_{\rm uni}=T/2, \, \sigma^2_{\rm uni}=\frac{1}{12}T^2$.
- Exponential probability density: distribution of time to the next *E. coli* tumble event, if such tumbles happen at a constant tumbling rate. You can take the geometric distribution, and take a limit of very many time steps, and small probability of tumbling at any given time. As a result, we get $p(t)=r e^{-rt}$. $\mu_{\rm exp}=1/r,\, \sigma^2_{\rm exp}=1/r^2$. Notice also the connection between exponential, uniform, and Poisson distributions: an event that happens at a uniform rate happens with an exponential waiting time between two successive events, and a number of such events in a fixed period of time is Poisson.
- Finally, taking a Poisson distribution with the large parameter $\lambda$, we see that it starts looking similarly to another probability distribution that many of you have seen before, namely the normal, or the Gaussian distribution: $p(x) = \frac{1}{\sqrt{2\pi\sigma^2}}\exp \left[-\frac{(x-\mu)^2}{2\sigma^2}\right]$ (for the normal distribution resulting from the Poisson, we have a specific relation between the mean and the variance; namely, $\mu=\sigma^2$.
- One can also define a multivariate extension of the normal distribution: $P(\vec{x}|\vec{\mu},\Sigma)=\frac{1}{[2\pi]^{d/2} \left|\Sigma\right|^{1/2}}\exp\left[-\frac{1}{2} \left(\vec{x}-\vec{\mu}\right)^T\Sigma^{-1}\left(\vec{x}-\vec{\mu}\right)\right]$, here $\Sigma$ is the covariance matrix $\Sigma = \left[\begin{array}{llll} \langle(x_1 - \mu_1)(x_1 - \mu_1)\rangle & \langle(X_1 - \mu_1)(X_2 - \mu_2)\rangle & \cdots & \langle(X_1 - \mu_1)(X_n - \mu_n)\rangle \\ \langle(X_2 - \mu_2)(X_1 - \mu_1)\rangle & \langle(X_2 - \mu_2)(X_2 - \mu_2)\rangle & \cdots & \langle(X_2 - \mu_2)(X_n - \mu_n)\rangle \\ \vdots & \vdots & \ddots & \vdots \\ \langle(X_n - \mu_n)(X_1 - \mu_1)\rangle & \langle(X_n - \mu_n)(X_2 - \mu_2)\rangle & \cdots & \langle(X_n - \mu_n)(X_n - \mu_n)\rangle \end{array}\right].$
- To connect probabilistic and deterministic calculus, we can define a random variable with a probability distribution that forces it to take just one value. This is called a $\delta$-distribution: $\delta(x-\mu)=\lim_{\sigma\to0}\frac{1}{\sqrt{2\pi}\sigma}\exp{\left[-\frac{(x-\mu)^2}{2\sigma^2}\right]}$. In other words, $\delta(0)\to\infty,\;\delta(x\neq0)=0$. An interesting property of the $\delta$ distribution is that $f(x)=\int_{-\infty}^{\infty}dx' \delta(x-x')f(x')$. In other words, convolving with a $\delta$-distribution simply replaces the variable name.

### Reparameterization and generation of continuous random variables

Suppose we define a new variable $x'=x'(x)$. The number of counts that land into a certain interval is the same, irrespective of whether this interval is indexed by $x$ or by $x'$. Therefore, $p(x')|dx'|=p(x)|dx|$, or $p(x')= p(x(x'))\left|\frac{dx}{dx'}\right|$. This can be used to generate continuous random variables with different probability distributions. For example, suppose that $x$ is uniform between 0 and 1. Then $p(x)=1$. If I want to generate and exponentially distributed $x'$, I need to find such a function $x'(x)\left|\frac{dx}{dx'}\right|=\exp(-x')$. One can see that $x'=-\log x$, or $x=\exp(-x')$, satisfies this condition. In other words, to generate an exponentially distributed random variable we take a log of a uniform random number. More generally, one can generate other random variables (e.g., Cauchy, as we do in a homework), by finding an reparameterization with an appropriate derivative.

More generally, for multi-dimensional variables $P(\vec{x'})=P(\vec{x})\left|\frac{dx_\alpha}{dx'_\beta}\right|$
