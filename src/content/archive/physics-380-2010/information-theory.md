---
title: "Information Theory"
group: "physics-380-2010"
wiki_title: "Physics 380, 2010: Information Theory"
order: 40
---

## Lectures 6 and 7

In these lectures, we cover some background on information theory. A good physics style introduction to this problem can be found in the upcoming book by Bialek (Bialek 2010).

- Setting up the problem: How do we measure information transmitted by a biological signaling system?
- Shannon's axioms and the derivation of entropy: if a variable $x$ is observed from a distribution $P(x)$ then the amount of the information we gain from this observation must obey the following properties.
  1.  If the cardinality of the distribution grows and the distribution is uniform, then the measure of information grows as well.
  2.  The measure of information must be a continuous function of the distribution $P(x)$
  3.  The measure of information is additive. That is, for a fine graining of $x$ into $\xi$, we should have $S[\xi]=S[x]+\sum P(x) S[\xi|x]$.

Up to a multiplicative constant, the measure of information is then $S=-\sum P \log P$, which is also called the Boltzman-Shannon entropy. And we fix the constant by defining the entropy of a uniform binary distribution to be 1. Then $S=-\sum P \log_2 P$. The entropy is then measured in *bits*.

- Meaning of entropy: Entropy of 1 bit means that we have gained enough information to answer one yes or no (binary) question about the variable $x$.
- Properties of entropy (positive, limited, convex):
  1.  $0\le S[X]\le \log_2k$, where $k$ is the cardinality of the distribution. Moreover, the first inequality becomes an equality iff the variable is deterministic (that is, one event has a probability of 1), and the second inequality is an equality iff the distribution is uniform.
  2.  Entropy is a convex function of the distribution
  3.  Entropies of independent variables add.
  4.  Entropy is an extensive quantity: for a joint distribution $P(x_1,x_2,\dots,x_n)$, we can define an entropy *rate* $S_0=\lim_{n\to\infty} S[X_1,\dots,X_n]/n$.
- Differential entropy: a continuous variable $x$ can be discretized with a step $\Delta x$, and then the entropy is $S[X]=-\sum P(x)\Delta x\log_2 \left(P(x)\Delta x\right)\to \int dx P(x)\log_2P(x)  +\log_21/\Delta x$. This formally diverges at fine discretization: we need infinitely many bits to fully specify a continuous variable. The integral in the above expression is called the *differential entropy*, and whenever we write $S[X]$ for continuous variables, we mean the differential entropy.
- Entropy of a normal distribution with variance $\sigma^2$ is $S=1/2\log_2\sigma^2 + {\rm const}$.
- Multivariate entropy is defined with summation/integration of log-probability over multiple variables, cf. entropy rate above.
- Conditional entropy is defined as averaged log-probability of a conditional distribution
- Mutual information: what if we want to know about a variable $x$, but instead are measuring a variable $y$. How much are we learning about $x$ then? This is given by the difference of entropies of $x$ before and after the measurement: $\begin{array}{ll}I[X;Y]&=S[X]-\langle S[X|Y]\rangle_y\\&=S[X]+S[Y]-S[X,Y]\\&=\langle\log_2\frac{P(x,y)}{P(x)P(y)}\end{array}$.
- Meaning of mutual information: mutual information of 1 bit between two variables means that by querying one of them as much as possible, we can get one bit of information about the other.
- Properties of mutual information
  1.  Limits: $0\le I[X;Y]\le \min(S[X],S[X])$. Note that the first inequality becomes an equality iff the two variables are completely statistically independent.
  2.  Mutual information is well-defined for continuous variables.
  3.  Reparameterization invariance: for any $\xi=\xi(x),\, \eta=\eta(y)$, the following is true $I[X;Y]=I[\Xi;\mathrm{H}]$.
  4.  Data processing inequality: For $P(x,y,z)=P(x)P(y|x)P(z|y)$, $I[X;Z]\le \min (I[X;Y], I[Y;Z])$. That is, information cannot get created in a transformation of a variable, whether deterministic or probabilistic.
  5.  Information rate: Information is also an extensive quantity, so that it makes sense to define an information rate $I_0=\lim_{n\to\infty}I[X_1,\dots,X_n;Y_1\dots Y_n]/n$.
- Mutual information of a bivariate normal with a correlation coefficient $\rho$ is $I=1/2 \log_2(1-\rho^2)$.
- For Gaussian variables $y=g(x+\eta)$, where $x$ is the signal, $y$ is the response, and $\eta$ is the noise related to the input, $I[X;Y]=\frac{1}{2}\log_2\left(1+\frac{\sigma^2_x}{\sigma^2_\eta}\right)=\frac{1}{2}\log_2(1+SNR)$ (see the homework problem).

## Homework (due Sep 24)

1.  We start with a simple problem. In class, we have defined the mutual information between $X$ and $Y$ as a difference between a marginal and a conditional entropy, $I[X;Y]=S[X]- S[X|Y]$. Rewrite this expression to depend only on unconditional entropies.
2.  (Adapted from problem 76, Bialek 2010) In class we discussed that, naively adapting the definition of entropy to continuous variables, we get $S[\vec{X}]=-\int d^Dx P(\vec{x}) \log_2P(\vec{x})-D\log_2\Delta x$, where $D$ is the dimensionality of the space, and $\Delta x$ is the size of the grid, which we put on the space, and which we eventually take to zero. The integral (the differential entropy) in the above expression is some finite quantity, and so, as we take $\Delta x\to0$, we get $\lim \frac{S[\vec{X}]}{-\log_2\Delta x}=D$. In some sense, this scaling relation allows us to estimate the dimensionality of the space. Then we would expect that if we view some probability distribution as living in a high number of dimensions, but it in fact lives in its smaller dimensional subspace, we should see it if we calculate the relevant entropies. To see this, let's suppose that a certain variable is uniformly distributes along a circumference $x^2+y^2=1$. This is a 1-d subset of a 2-d space. Write a small Matlab/Octave program that
    - takes the region $x\in [-2, 2];y\in[-2,2]$ and partitions it into squares with a variable side of $\epsilon$
    - moves carefully along the circumference and marks every square into which it falls
    - calculates the entropy of the uniform distribution along the circumference as $S(\epsilon)=\log_2 n(\epsilon)$, where $n$ is the number of marked squares
    - repeats this for values of $\log_2\epsilon=[0:-0.5:-3]$, plots the dependence of $-S(\epsilon)/\log_2\epsilon$ on $\epsilon$ and shows that this dependence predicts the dimensionality of $D=1$.
3.  How much information can a spiking neuron transmit? This is limited from above by its entropy rate. Let's represent a neuron as releasing action potentials with a Poisson process with a certain rate $r$, and let's calculate the entropy rate of the Poisson process. First represent this process by discretizing time in intervals $\Delta t$. Explain why the entropy of the Poisson generated sequence of duration $T$ (or, alternatively, $n=T/\Delta t$ symbols) is exactly proportional to time, that is $S=sn$, where $s$ is some constant. Thus we only need to calculate the entropy of a single symbol, this $s$ to find the entropy rate as $R=\frac{sT}{\Delta t T}$. Does this rate have a finite value as $\Delta t\to0$? Why or why not?
4.  Consider the following simple model of signal transduction in photoreceptors. The ambient light intensity (the signal) $x$ is converted into the response current $y$ by means of many amplification steps, and a substantial amount of noise is added to the current in the process, that is $y=gx+\eta$, where $g$ is the amplification factor and $\eta$ is the noise. For simplicity, let's suppose that the signal is distribute as a Gaussian with the mean $\mu_x$ and the variance $\sigma^2_x$, and the noise is similarly Gaussian with zero mean and $\sigma^2_\eta$. What is the distribution of $y$? Calculate the mutual information between $x$ and $y$. Represent it as $\sim \frac{1}{2}\log_2[1+R]$. Would it make sense to call $R$ the *signal-to-noise ratio*?
