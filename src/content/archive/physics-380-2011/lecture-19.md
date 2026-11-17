---
title: "Lecture 19"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Lecture 19"
order: 220
---

This is the last lecture following the article by Detwiler et al., 2000.

## Student Presentation

A student will present the paper Vergassola et al., 2007.

**unfinished**

## Main lecture

1.  Why are there cascades of enzymatic amplifiers? The total time delay is $\max \tau_i$, and the gain is $\prod g_i$, while for each specific amplifier $\tau_ig_i\le {\rm const}$ (aka, the gain-bandwidth tradeoff). So one can have faster, stronger amplifiers with cascades.
2.  But one should be careful since each new step introduces extra noise.
    - We should have the amplified fluctuations of the input be larger than the intrinsic fluctuations of the amplifier.
    - Since, at minimum, we have input fluctuations (but no input signal), we should, at minimum, have $\int \frac{d\omega}{2\pi} \frac{k_{XE}S_{\delta E_a}(\omega)}{k_{XX}^2+\omega^2} > \int \frac{d\omega}{2\pi} \frac{\Omega}{k_{XX}^2+\omega^2}$
    - This sets the minimum value of $k_{XE}$.
    - Plugging in the numbers, this sets the limit on the minimum $X_{\rm tot}$ and hence on the minimum gain $X_{\rm tot}>\frac{1}{\tau k_a}\frac{1}{\tau k_d \bar{E}_d}\frac{\bar{E}_a}{<\delta E_a^2>}$.
3.  Why are the enzymatic amplifiers so great? They are tunable. Let's look at one simple version of the tunability: linear negative feedback.
