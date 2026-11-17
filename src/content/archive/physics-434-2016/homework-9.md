---
title: "Homework 9"
group: "physics-434-2016"
wiki_title: "Physics 434, 2016: Homework 9"
order: 130
---

Please turn on the assignment either as a PDF file to me by email, or as a printout/writeup to my mailbox in physics. Detailed derivations (with explanations) and calculations must be present for the problems for full credit. Submit your code if a problem requires you to program.

### Undergraduates

1.  Problem 11.1
2.  What is the differential entropy of an exponential distribution?
3.  How much information can a spiking neuron transmit? This is limited from above by its entropy rate. Let's represent a neuron as releasing action potentials with a Poisson process with a certain rate $r$, and let's calculate the entropy rate of the Poisson process. First represent this process by discretizing time in intervals $\Delta t$. Explain why the entropy of the Poisson generated sequence of duration $T$ (or, alternatively, $n=T/\Delta t$ symbols) is *exactly* proportional to time, that is $S=sn$, where $s$ is some constant. Thus we only need to calculate the entropy of a single symbol, this $s$, in order to find the entropy rate as $R=\frac{sT}{\Delta t T}$. Does this rate have a finite value as $\Delta t\to0$? Why or why not? Estimate the maximum bitrate of a neuron that can control placement of its spikes to the accuracy of 1 ms.

### Graduate Students

1.  Problem 11.3
2.  What is the differential entropy of an exponential distribution?
3.  How much information can a spiking neuron transmit? This is limited from above by its entropy rate. Let's represent a neuron as releasing action potentials with a Poisson process with a certain rate $r$, and let's calculate the entropy rate of the Poisson process. First represent this process by discretizing time in intervals $\Delta t$. Explain why the entropy of the Poisson generated sequence of duration $T$ (or, alternatively, $n=T/\Delta t$ symbols) is *exactly* proportional to time, that is $S=sn$, where $s$ is some constant. Thus we only need to calculate the entropy of a single symbol, this $s$, in order to find the entropy rate as $R=\frac{sT}{\Delta t T}$. Does this rate have a finite value as $\Delta t\to0$? Why or why not? Estimate the maximum bitrate of a neuron that can control placement of its spikes to the accuracy of 1 ms.
4.  Suppose now the neuron has what's called a *refractory period*. That is, after a spike, a neuron cannot fire for the time $\tau_r$. What is the entropy rate of such neuron?
