---
title: "Lecture 10"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Lecture 10"
order: 120
---

In these lectures, we cover some background on information theory. A good physics style introduction to this problem can be found in the upcoming book by Bialek (Bialek 2010). A very nice, and probably still the best, introduction to information theory as a theory of communication is (Shannon and Weaver, 1949). A standard and very good textbook on information theory is (Cover and Thomas, 2006).

## Finishing the previous leture

- Mutual information: what if we want to know about a variable $x$, but instead are measuring a variable $y$. How much are we learning about $x$ then? This is given by the difference of entropies of $x$ before and after the measurement: $\begin{array}{ll}I[X;Y]&=S[X]-\langle S[X|Y]\rangle_y\\&=S[X]+S[Y]-S[X,Y]\\&=\langle\log_2\frac{P(x,y)}{P(x)P(y)}\end{array}$.
- Meaning of mutual information: mutual information of 1 bit between two variables means that by querying one of them as much as possible, we can get one bit of information about the other.
- Properties of mutual information
  1.  Limits: $0\le I[X;Y]\le \min(S[X],S[X])$. Note that the first inequality becomes an equality iff the two variables are completely statistically independent.
  2.  Mutual information is well-defined for continuous variables.
  3.  Reparameterization invariance: for any $\xi=\xi(x),\, \eta=\eta(y)$, the following is true $I[X;Y]=I[\Xi;\mathrm{H}]$.
  4.  Data processing inequality: For $P(x,y,z)=P(x)P(y|x)P(z|y)$, $I[X;Z]\le \min (I[X;Y], I[Y;Z])$. That is, information cannot get created in a transformation of a variable, whether deterministic or probabilistic.
  5.  Information rate: Information is also an extensive quantity, so that it makes sense to define an information rate $I_0=\lim_{n\to\infty}I[X_1,\dots,X_n;Y_1\dots Y_n]/n$.
- Mutual information of a bivariate normal with a correlation coefficient $\rho$ is $I=-1/2 \log_2(1-\rho^2)$.
- For Gaussian variables $y=g(x+\eta)$, where $x$ is the signal, $y$ is the response, and $\eta$ is the noise related to the input, $I[X;Y]=\frac{1}{2}\log_2\left(1+\frac{\sigma^2_x}{\sigma^2_\eta}\right)=\frac{1}{2}\log_2(1+SNR)$.

## Warmup question

1.  For transmitting information through a synthetic transcriptional circuit in *E. coli* (Guet et al., 2002) -- see picture on the board -- which of the following quantities might constrain the mutual information between the chemical signal and the expressed reporter response?
    - The mean molecular copy number of the reporter molecule.
    - The mean molecular copy number of the other, non-reporter genes.
    - The probability distribution of the input signals.

In this lecture, we will try to derive the limits on the quality of information processing in molecular circuits.

## Main Lecture

- We follow the discussion of Ziv et al., 2007.
- Consider a chain: signal s -\> mean response $\rho$ -\> actual noisy response r. Due to signal processing inequality, $I[S,R]\le I[\rho, R]$.
- Assuming that $\rho\gg 1$, and following the general formula for noise propagation from two lectures ago, we get $r=\rho+\eta$, where $\sigma^2_\eta=\rho$.
- Simple counting argument suggests that for N molecules with $\sqrt{N}$ error, there are $\sqrt{N}$ distinguishable states, and the information is limited by $I\approx 1/2 \log_2 N$.
- For a fixed mean response N, we can calculate $P(\rho)$ that maximizes $I[\rho;R]$. We get $P(\rho)=\frac{1}{(2\pi \rho N)^{1/2}}\exp[-\rho/(2N)]$. And the information becomes $I\approx 1/2 \log_2 N+O(1/N)$.
- This is the best possible result. But in a biochemical system not every $P(\rho)$ is possible. Biochemical systems are modeled typically with Hill activation/suppression dynamics $\frac{dx}{dt}=\frac{Vy^n}{y_0^n+y^n}$ (activation of x by y) or $\frac{dx}{dt}=\frac{V}{y_0^n+y^n}$ (suppression of x by y). And different values of the chemical signals may switch the binding/MIchaelis constant $y_0$. To achieve good information transmission, one would need to make sure that mean responses to different chemical inputs are well-separated and narrow -- but one wouldn't be able to have the optimal distribution of $g$ as stated above (see picture on board how these distribution looks).
- Ziv et al., 2007, have shown that the inability of biochemical networks to have the optimal $P(g)$ is not very important. Even with this constraint, the maximum information that can be transmitted through these systems is still close to $\min(S[S], 1/2\log_2N)$.
- Biochemical systems can be very efficient in transmitting information, with their intrinsic stochastic noisiness being, essentially, the main constraint.
