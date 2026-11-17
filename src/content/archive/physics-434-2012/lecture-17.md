---
title: "Lecture 17"
group: "physics-434-2012"
wiki_title: "Physics 434, 2012: Lecture 17"
order: 180
---

Here we introduce the idea of Fourier series and Fourier transforms. We have discussed in the previous lecture why we need them.

### Main Lecture

1.  Consider a function $f(t)$ periodic on $-\pi\le t\le \pi$.
2.  We would like to approximate this function as $f(t)=\sum_{k=0}^N a_k \cos kt + \sum_{k=1}^N b_k \sin kt$, takin $N\to\infty$ at some point.
3.  From this expression, we can find the coefficients $a_k, b_k$ self-consistently. Indeed, let's multiply the equation by $\cos mt$ and integrate from $-\pi$ to $\pi$.
4.  All terms containing products $\cos kt\sin mt$ are zero.
5.  For the $\cos kt\cos mt$ terms, we have $\cos kt\cos mt=1/2 ( \cos (k+m)t +\cos(k-m)t)$.
6.  Completing the integrals, we have: $\int_{-\pi}^{\pi}dt f(t) \cos mt= \sum_m \int_{-\pi}^{\pi} dt \frac{a_k}{2} \left( \cos (k+m)t +\cos(k-m)t\right) = \sum_m \pi a_k (\delta_{k,m}+\delta_{k,0}\delta_{m,0})=\pi a_m (1+\delta_{m,0}$.
7.  We can do similar to find $b_k$: multiply by $\cos mt$, and integrate.
8.  This gives: $a_{k>0}= \frac{1}{\pi}\int_{-\pi}^{\pi}dt f(t)\cos k_t$, $a_{0}= \frac{1}{2\pi}\int_{-\pi}^{\pi}dt f(t)$, $b_{k>0}= \frac{1}{\pi}\int_{-\pi}^{\pi}dt f(t)\sin k_t$.
