---
title: "Stochastic chemical kinetics"
group: "physics-434-2014"
wiki_title: "Physics 434, 2014: Stochastic chemical kinetics"
order: 90
---

We are finishing the last topics to be covered in this block. Namely, we will introduce the master equation, the diffusion equation, and the Langevin equation. We will study their relation to each other and solve a few simple problems using each of the methods.

Brian Munsky has a great tutorial presentation discussing the master equation and the related stochastic modeling techniques. These lectures are also a lot less detailed in places because Chapter 8 in Nelson's book does a very good job of introducing the subject. We will largely follow it in our lectures.

#### Warmup questions

We have discussed in class the model of the lac operon, where presence of lactose in the cell lifts inhibition of transcription of the mRNA that codes for the permease, which brings the lactose into the cell, and the enzyme, which metabolizes it. But here's a problem: what came first, the chicken or the egg? In other words, to get lactose into the cell, the cell needs to transcribe the premise gene. But to transcribe the gene, the cell needs to first have lactose in the cell. So, what happens first? Can you explain how the transcriptional suppression gets broken in *E. coli*?

#### Main Lecture

What saves the bacterium from the eternal starvation and allows it to start eating is our old friend, the noise. Molecules get created and destroyed by chance -- and sometimes it happens that there are too few *LacI* molecules in the system to sustain inhibition, and the cell turns on spontaneously. If there's lactose in the medium, it will start eating it. If there's none, it will turn the transcription of the operon off soon. Now let's figure out how this happens mathematically.

Let's suppose that the *LacI* protein is produced (translated) at a certain constant rate randomly and it gets degraded constantly at some fixed rate as well. With the average number of *LacI* molecules around 10 per cell, what is the probability that, at any given moment of time, the cell will have no of very few lac repressor molecules, and hence *LacY* and *LacZ* start getting transcribed?

- We assume that molecules get created/diluted independently one at a time. The deterministic equation describing this is $\frac{dn}{dt}=\alpha-rn$. We can write what's known as a *master equation* for the number of molecules, which would account for the stochasticity: $n$: $\frac{dP(n)}{dt}=-P(n)(rn+\alpha)+P(n+1)r(n+1)+P(n-1)\alpha$, and for $n=0$ this changes to $\frac{dP(0)}{dt}=-P(0)\alpha+P(n+1)r(n+1)$
- We can then ask what is the *steady state* solution of this equation. For this, we set $d/dt=0$ above.
- We can verify explicitly that the Poisson equation $P(n)=e^{-\alpha/r}\frac{(\alpha/r)^n}{n!}$ is a solution of the above equation.
- Hence probability of having very few (and some time zero) molecules of the lac repressor is not small -- and some cells will spontaneously initiate transcription. These cell will then grow faster than the cells that do not transcribe, making the whole colony look like it's metabolizing lactose. Great experimental work on this subject is Ozbudak et al., 2004.
- We claim thus that both shutting off and initiating transcription are processes that are related to properties of random walks. This was pretty obvious for the shut-off. But it is not yet fully clear that the master equation above has much to do with random walks.
- Imagine a particle moving as a continuous time, discrete space random walk on a 1-d lattice. What is the equation that describes the dynamics of the number of particles with time?
  - Let the left/right rates be $\alpha_\pm$.
  - The master equation is $\frac{dP(x)}{dt}=-P(x)(\alpha_+(x)+\alpha_-(x))+P(x+1)\alpha_-(x+1)+P(x-1)\alpha_+(x-1)$. This is very close to the master equation we wrote above. Seems like, indeed random walk has much to do with transcriptional initiation, but this is a biased walk in the number space, not in the physical space.
- We now assume that the probability has a width of $\sigma$ which is much larger than the lattice step size $\Delta x$. Then we can say that $P(x)$ changes little between nearby sites, and $P(x\pm1)\approx P(x)+\frac{\partial P}{\partial x}(\pm 1) +\frac{1}{2}\frac{\partial^2 P}{\partial x^2}$.
  - We further assume that $\alpha_\pm$ are independent of $x$.
  - We then get $\frac{\partial P(x,t)}{\partial t}=(\alpha_+-\alpha_-)\frac{\partial P(x,t)}{\partial x}+(\alpha_++\alpha_-)\frac{\partial^2 P(x,t)}{\partial x^2}$
  - This is called the diffusion equation, often written as $\frac{\partial P(x,t)}{\partial t}=v\frac{\partial P(x,t)}{\partial x}+D\frac{\partial^2 P(x,t)}{\partial x^2}$
  - An unbiased diffusion equation (also called diffusion without drift) would be $\frac{\partial P(x,t)}{\partial t}=D\frac{\partial^2 P(x,t)}{\partial x^2}$
- We can also interpret $\rho=NP$, and then the equation becomes not the equation for diffusion of a probability of a single particle, but rather the equation for diffusion of the particle density. For linear problems and large molecular numbers, these descriptions are equivalent.
- Let's solve this equation for a few special cases.
  - For the initial condition of $\rho(x,0)=\delta(x)$ (that is, all particles are at 0), the solution is given by a Gaussian distribution $P(x,t)=\frac{1}{4\pi Dt}\exp\left[-\frac{x^2}{4Dt}\right]$. We can verify this explicitly in class.
  - If drift is present (verify this yourselves), then $P(x,t)=\frac{1}{4\pi Dt}\exp\left[-\frac{(x-vt)^2}{4Dt}\right]$.
- Does a similar diffusion description also exist for the repressor production model?
  - Assuming that $\sigma\gg \Delta x$ is now equivalent to saying that $\sqrt{\langle n\rangle}\gg1$ because the Poisson distribution has the width $\sqrt{\langle n\rangle}$. This potentially could be a problematic assumption.
  - We then derive a diffusion-like equation, typically called the Fokker-Planck equation in this context, out of this master equation: $\frac{\partial P}{\partial t}=\frac{\partial}{\partial n}\left\{(rn-\alpha)P(n) +\frac{1}{2}\frac{\partial }{\partial n}\left[(\alpha+rn)P(n)\right]\right\}$.
  - Notice that the derivatives structure is somewhat different from the diffusion equation above -- this is because now production and degradation depend on $n$.
- Let's again solve for the steady state. We set $\partial/\partial t=0$.
  - Then $(rn-\alpha)P(n) +\frac{1}{2}\frac{\partial }{\partial n}\left[(\alpha+rn)P(n)\right]=C$.
  - Near a peak of the distribution, $n=\alpha/r$ thus: $(rn-\alpha)P(n) +\alpha\frac{\partial }{\partial n}P(n)=C$.
  - $C=0$ since $P,\partial P\to0$ at infinity. Thus $n=\alpha/r$ thus: $(rn-\alpha)P(n) +\alpha\frac{\partial }{\partial n}P(n)=0$.
  - Then $P(n)\sim \exp\left(-\frac{(n-\alpha/r)^2}{\alpha/r}\right)$. Notice that the Poisson approximates as a Gaussian in this regime.
- This is a manifestation of the previous CLT result -- many distributions tend to Gaussians when $n$ is large.
- Generally, Diffusion approximation is an approximation that replaces the underlying distributions by a combination of Gaussians. This is good for calculating the means, but has problem with the tails.
