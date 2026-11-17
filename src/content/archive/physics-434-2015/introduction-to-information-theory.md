---
title: "Introduction to Information theory"
group: "physics-434-2015"
wiki_title: "Physics 434, 2015: Introduction to Information theory"
order: 20
---

References (Nemenman, 2012) and (Levchenko and Nemenman, 2014) will be a useful reading.

- Setting up the problem: How do we measure information transmitted by a biological signaling system?
  1.  Dose-response curves examples in (Levchenko and Nemenman, 2014) show us that this should be a property of the entire joint distribution.
  2.  Information is the difference between the uncertainty pre and post the measurement.
  3.  How do we define the uncertainty?
- Shannon's axioms and the derivation of entropy: if a variable $x$ is observed from a distribution $P(x)$ then the amount of the information we gain from this observation must obey the following properties.
  1.  If the cardinality of the distribution grows and the distribution is uniform, then the measure of information grows as well.
  2.  The measure of information must be a continuous function of the distribution $P(x)$
  3.  The measure of information is additive. That is, for a fine graining of $x$ into $\xi$, we should have $S[\xi]=S[x]+\sum P(x) S[\xi|x]$.
- Up to a multiplicative constant, the measure of information is then $S=-\sum P \log P$, which is also called the Boltzman-Shannon entropy. And we fix the constant by defining the entropy of a uniform binary distribution to be 1. Then $S=-\sum P \log_2 P$. The entropy is then measured in *bits*.
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
- Mutual information: what if we want to know about a variable $x$, but instead are measuring a variable $y$. How much are we learning about $x$ then? This is given by the difference of entropies of $x$ before and after the measurement: $\begin{array}{ll}I[X;Y]&=S[X]-\langle S[X|Y]\rangle_y\\&=S[X]+S[Y]-S[X,Y]\\&=\langle\log_2\frac{P(x,y)}{P(x)P(y)}\rangle\end{array}$.
- Meaning of mutual information: mutual information of 1 bit between two variables means that by querying one of them as much as possible, we can get one bit of information about the other.
- Properties of mutual information
  1.  Limits: $0\le I[X;Y]\le \min(S[X],S[X])$. Note that the first inequality becomes an equality iff the two variables are completely statistically independent.
  2.  Mutual information is well-defined for continuous variables.
  3.  Reparameterization invariance: for any $\xi=\xi(x),\, \eta=\eta(y)$, the following is true $I[X;Y]=I[\Xi;\mathrm{H}]$.
  4.  Data processing inequality: For $P(x,y,z)=P(x)P(y|x)P(z|y)$, $I[X;Z]\le \min (I[X;Y], I[Y;Z])$. That is, information cannot get created in a transformation of a variable, whether deterministic or probabilistic.
  5.  Information rate: Information is also an extensive quantity, so that it makes sense to define an information rate $I_0=\lim_{n\to\infty}I[X_1,\dots,X_n;Y_1\dots Y_n]/n$.
- Mutual information of a bivariate normal with a correlation coefficient $\rho$ is $I=1/2 \log_2(1-\rho^2)$.
- For Gaussian variables $y=g(x+\eta)$, where $x$ is the signal, $y$ is the response, and $\eta$ is the noise related to the input, $I[X;Y]=\frac{1}{2}\log_2\left(1+\frac{\sigma^2_x}{\sigma^2_\eta}\right)=\frac{1}{2}\log_2(1+SNR)$.
