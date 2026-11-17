---
title: "Lecture 10"
group: "physics-434-2012"
wiki_title: "Physics 434, 2012: Lecture 10"
order: 110
---

We are wrapping up all the loose ends for the probability/random walks section of the class. We will return to some of the related questions in the later sections, of course. During this lecture, we also started the new block on information theory, [Physics 434, 2012: Lectures 10-11](/archive/physics-434-2012/lectures-10-11/).

### Main Lecture

- Langevin equation. If a chemical species is produced in a reaction $F$ and degraded in a reaction $G$, and all of reactions are independent, then the mean number of produced particles per time $t$ is $(F-G)\Delta t$ and the variance is $(F-G)\Delta t$. If the number of production and degradation events is large, $F,G\gg 1$, then these terms can be approximated as Gaussians. We can, therefore, write $x(t+\Delta t)=x(t)+\Delta x=x(t) + (F-G)\Delta t+\sqrt{(F+G)\Delta t}\eta$, where $\eta\sim N(0,1)$.
  - Notice that the noise term scales as $\sqrt{\Delta t}$ and is larger than the deterministic term for small $\Delta t$
  - We can transform this into a (stochastic) differential equation by taking a limit $\Delta t\to0$, $\frac{dx}{dt}=F-G+\sqrt{F+G}\eta$, where $\langle \eta\rangle =0$, and $\langle \eta(t)\eta(t')\rangle = \delta(t-t')$. Such $\eta$ is called a Wiener process, after [Norbert Wiener](http://en.wikipedia.org/wiki/Norbert_Wiener), or white noise -- we will understand why later.
- As the last item in this block of the class, we have talked about gradient sensing in another organism, *D. discoideum*. It's a large bug, and so many of the constraints that *E. coli* had do not apply. We have introduced the Local Excitation -- Global Inhibition (LEGI) (Levchenko and Iglesias, 2002), which allows an organism to do a spatial, rather than a temporal comparison of chemical concentrations. The question then is: does what we have discussed in this "probability" block of the class apply? We discussed that a comparison is made locally, by a small volume (about a size of a molecular complex), and hence the arrival of molecules is very stochastic. Even for a large organism, the noise may be quite important!
