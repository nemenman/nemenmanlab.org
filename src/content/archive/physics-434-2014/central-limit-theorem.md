---
title: "Central limit theorem"
group: "physics-434-2014"
wiki_title: "Physics 434, 2014: Central limit theorem"
order: 60
---

The **Central Limit Theorem** will be a crucial tool for us in later studies of random walk, diffusion, and related phenomena. It also explains why we are so fascinated with Gaussian distributions. Roughly speaking, the theorem states that a sum of many i.i.d. (independent and identically distributed) random variables with finite variances approaches a Gaussian distribution. In my opinion this is one of the most remarkable laws in the probability theory. It is supposed to explains why experimental noises are often Gaussian distributed. It also provides an explanation for why universalities in physical laws exist -- that is, why distinct, seemingly very different phenomena are often explained by the same simplified physical models. Richard Feynman, in his Messenger Lectures, has a very nice discussion of the subject.

### Theorem statement

More precisely, suppose $x_i$ are i.i.d. random variables with mean $\mu$ and variance $\sigma^2$. Then the CLT says that $S_N=\frac{1}{\sqrt{N}}\sum_{i=1}^N \frac{x_i-\mu}{\sigma}=\frac{1}{\sqrt{N}}\sum_{i=1}^N \xi_i$ is distributed according to $N(0,1)$ (called the *standard* normal distribution), provided $N$ is sufficiently large. Before proving this, we need to learn, as an aside, how to do Gaussian integrals.

### The Gaussian Integral

Suppose one wants to calculate $Z=\int_{-\infty}^{+\infty}dx \exp(-x^2/2)$. One writes it as $Z=\sqrt{Z^2}=\left[\int_{-\infty}^{+\infty}dx \exp(-x^2/2) \int_{-\infty}^{+\infty}dy \exp(-y^2/2)\right]^{1/2}$ $=\left[\int_{-\infty}^{+\infty}\int_{-\infty}^{+\infty}dxdy \exp(-x^2/2-y^2/2)\right]^{1/2}=\left[\int_{-\infty}^{+\infty}\int_{0}^{2\pi}rdrd\phi \exp(-r^2/2)\right]^{1/2}$ $= \left[2\pi\int_{-\infty}^{+\infty}d(r^2/2) \exp(-r^2)\right]^{1/2}=\sqrt{2\pi}$. That is, $Z=\sqrt{2\pi}$. I other words, the Gaussian probability distribution $P(x)=\frac{1}{\sqrt{2\pi\sigma^2}}\exp\left[-(x-\mu)^2/(2\sigma^2)\right]$, indeed, normalizes to one.

Suppose now we want to calculate the mean or the variance of the Gaussian distribution, or other moments or cumulants. It turns out that it easier to do this by first calculating its MGF (or the CGF), and then taking the derivatives. $M_{\rm G}(\lambda)=\frac{1}{\sqrt{2\pi\sigma^2}}\int_{-\infty}^{+\infty}dx e^{-(x-\mu)^2/(2\sigma^2)}e^{\lambda x}$ $=\frac{1}{\sqrt{2\pi\sigma^2}}\int_{-\infty}^{+\infty}dx e^{-(x-\mu)^2/(2\sigma^2)+\lambda x}=\frac{1}{\sqrt{2\pi\sigma^2}}\int_{-\infty}^{+\infty}dx e^{-(x-\mu)^2/(2\sigma^2)+\lambda x}=\frac{1}{\sqrt{2\pi\sigma^2}}\int_{-\infty}^{+\infty}dx e^{-(x-(\mu+\lambda\sigma^2))^2/(2\sigma^2)+\lambda \mu+\lambda^2\sigma^2/2}$ $=e^{\lambda\mu+\lambda^2\sigma^2/2}$.

In other words, the Moment Generating Function of a Gaussian distribution also has a polynomial of the order two in the exponent.

### The Central Limit Theorem

We prove only a special case of this theorem, assuming that none of the cumulants of the i.i.d. variables is infinite, and hence the moment generating functions exist. This is a stronger assumption then the finiteness of variances, but this will be sufficient for our purposes. Remember that, for independent variables, MGFs multiply (and CGFs add). Thus $M_{S_N}(\lambda)=\prod_{i=1}^N M_{\xi_i/\sqrt{N}}(\lambda)=\prod_{i=1}^Ne^{\lambda^2\sigma_i^2/(2N)}=e^{\lambda^2\sigma^2/2}$, which proves the theorem.

### Generalizations

The theorem holds also for the following cases:

- If the $N$ variables have different variances and means, but all variances are bounded. Convergence will be slower though.
- If only the first two moments of the constituent variables are defined, but the others are not.

In the case when the variance of the constituent variables is not defined, the central limit distribution is not a Gaussian. Some hints about what it would be were given in a homework problem. Namely, a sum of two Lorentzian variables is also a Lorentzian, suggesting that the Lorentzian is also a limit distribution of some sort. Indeed, there's a whole class of distributions with power law tails, which are limit distributions for sums of variables with power law tails.

### Simulations

The attached code does numerical simulation of the CLT for sums of many exponential or binary variables: [CLT.m](/archive/files/CLT.m)

Relating this back to our favorite *E. coli*, we notice thus that the motion of the bacterium consists of many run-tumbles steps, each of which has a finite variance. Thus the probability distribution of end points of *E. coli* motion over a certain long period of time is a Gaussian. To illustrate this, we will show in a homework that $\langle x^2\rangle\propto t$ for *E. coli*. It's a *diffusive* motion as well, just like diffision of small molecules. We demonstrate this by numerical simulations (homework, and also see this [Matlab code](/archive/files/Ecoli.m).)
