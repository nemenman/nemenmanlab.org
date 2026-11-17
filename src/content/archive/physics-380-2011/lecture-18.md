---
title: "Lecture 18"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Lecture 18"
order: 210
---

We are proceeding with the dynamical information processing block. In the next couple of lectures, we will follow the article by Detwiler et al., 2000.

## Warm up question

How do we calculate the amount of information processed in the vertebrate photoreceptor?

## Main lecture

1.  We follow Detwiler et al., 2000, article in this lecture as well.
2.  Let $\delta,\Delta$ denote the noise and the signal in a quantity, respectively. Then $\frac{d\Delta X^*}{dt}=-k_{XX}\Delta x^*+k_{XE}\Delta E_a$. This can be rewritten as $\frac{d\Delta X^*}{dt}=-\frac{1}{\tau}(\Delta x^*-g_0\Delta E_a)$.
3.  With noise, this gives: $\frac{d\delta X^*}{dt}=-k_{XX}\delta x^*+k_{XE}\delta E_a+\eta(t)$. Here we use $<\eta(t)\eta(t')>=(\Gamma_a+\Gamma_d)\delta(t-t')$. In reality, noises in complex reactions are not as simple. See Sinitsyn and Nemenman, 2007.
4.  The noise clearly contributes to the variance of $\delta X*$, but so does the noise in the enzyme. Overall: $\delta X_\omega=\frac{k_{XE}\delta E_{a\omega}+\eta_\omega}{k_{XX}+i\omega}$.
5.  What is $\eta_\omega$? It's a random variable. Hence $\delta X_\omega$ is also a random variable. We need to calculate its mean and variance.
6.  Let's calculate the mean and the variance of each Fourier component. The mean is zero.
7.  To calculate variances, we will need the Fourier transforms of $\delta$ functions. $\delta_\omega=\int dt \delta(t) e^{-i\omega t}=1$. And hence $\delta(t)=\int e^{i\omega t}\frac{d\omega}{2\pi}$
8.  Variance is the mean square of the distance of the random variable from its mean (zero in this case). Recalling that components are now complex, we need for the variance $<\eta_\omega\eta_{-\omega}>$. This is given by the Wiener-Khinchin theorem as $<\eta_\omega\eta_{-\omega}>=\int dt e^{-i\omega t} <\eta(t) \eta(t')>=\int dt e^{-i\omega t} (\Gamma_a+\Gamma_d)\delta(t-t')=\Gamma_a+\Gamma_d\equiv \Omega$
9.  The expression $<X_\omega X_{-\omega}>=S_X(\omega)$ for any quantity X is called the spectrum.
10. Thus: $<\delta X^*_\omega \delta X^*_{-\omega}>=S_{\delta X^*}(\omega)=\frac{k_{XE}S_{\delta E_a}(\omega)+\Omega}{k_{XX}^2+\omega^2}$
11. The signal and the noise get "filtered" by the system. But notice that all frequency components are independent from each other. So each component will have its own signal and noise.
12. We have studied information transmission in such systems: each component independently contributes to information. We have $I[\Delta X^*;\Delta E_a]=\int \frac{d\omega}{2\pi}\frac{1/2} \log_2\left(1+SNR\right)=\int \frac{d\omega}{2\pi}\frac{1/2} \log_2\left(1+\frac{S_{\Delta X^*}(\omega)}{S_{\delta X^*(\omega)}}\right)$, where the spectrum of the signal is given by $S_{\Delta X^*}(\omega)=\frac{k_{XE}S_{\Delta E_a}(\omega)}{k_{XX}^2+\omega^2}$
