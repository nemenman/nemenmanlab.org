---
title: "Lectures 10-11"
group: "physics-434-2012"
wiki_title: "Physics 434, 2012: Lectures 10-11"
order: 120
---

In these lectures, we cover some background on information theory. A good physics style introduction to this problem can be found in the upcoming book by Bialek (Bialek 2010). A very nice, and probably still the best, introduction to information theory as a theory of communication is (Shannow and Weaver, 1949). A standard and very good textbook on information theory is (Cover and Thomas, 2006).

## Warmup questions

1.  We would like to characterize how much information is transmitted by a cellular signaling pathway, say the NF-$\kappa$B pathway depicted on the right (Cheong et al. 2011) , or in *E. coli* transcription (Guet et al., 2002; Ziv et al., 2007), as shown on the left. What characteristics of the system should we measure in order to be able to quantify this? Specifically, do we need:
    - $<r>$, $<r|s>$ only?
    - $<r>$, $<r|s>$, and $\sigma^2_r$, $\sigma^2_{r|s}$ only?
    - $P(r|s)$ for all s only?
    - $P(r|s)$ for all s and $P(s)$, that is, the entire $P(r,s)$?
2.  For transmitting information through a synthetic transcriptional circuit in *E. coli* (Guet et al., 2002) -- see picture on the board -- which of the following quantities might constrain the mutual information between the chemical signal and the expressed reporter response?
    - The mean molecular copy number of the reporter molecule.
    - The mean molecular copy number of the other, non-reporter genes.
    - The probability distribution of the input signals.

## Main lecture

- Setting up the problem: How do we measure information transmitted by a biological signaling system?
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
