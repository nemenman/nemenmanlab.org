---
title: "Homework 6"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Homework 6"
order: 360
---

1.  Analytically calculate the entropy of a Gaussian random variable.
2.  We start with a simple problem. In class, we have defined the mutual information between $X$ and $Y$ as a difference between a marginal and a conditional entropy, $I[X;Y]=S[X]- S[X|Y]$. Rewrite this expression to depend only on unconditional entropies. What does it say about the relation between the joint entropy of two variables and the two marginal entropies?
3.  How much information can a spiking neuron transmit? This is limited from above by its entropy rate. Let's represent a neuron as releasing action potentials with a Poisson process with a certain rate $r$, and let's calculate the entropy rate of the Poisson process. First represent this process by discretizing time in intervals $\Delta t$. Explain why the entropy of the Poisson generated sequence of duration $T$ (or, alternatively, $n=T/\Delta t$ symbols) is exactly proportional to time, that is $S=sn$, where $s$ is some constant. Thus we only need to calculate the entropy of a single symbol, this $s$, in order to find the entropy rate as $R=\frac{sT}{\Delta t T}$. Does this rate have a finite value as $\Delta t\to0$? Why or why not?
4.  *Graduate students:* Suppose now the neuron has what's called a *refractory period*. That is, after a spike, a neuron cannot fire for the time $\tau_r$. What is the entropy rate of such neuron?
5.  Consider information transmission in a simple model of a molecular circuit. The input signal of $s$ molecules is distributed as a Gaussian random variable with the mean $\mu_s$ and the variance $\sigma_s$. The elicited mean response is $\mu_r=g\mu_s$, and it has the usual counting (a.k.a, Poisson or square root) fluctuations around the mean. Assuming that the response molecule count is large, $r\gg1$, what is the mutual information between $s$ and $r$? (To answer this, you will need to understand what the marginal distribution of $r$ is.) Now suppose that there are $N$ independent signals $s_n$, and each is measured by an independent response $r_n$, such that, as above, $\mu_{r_n}=g_n\mu_{s_n}$. What is the total mutual information between all signals on the one hand, and all responses on the other?
