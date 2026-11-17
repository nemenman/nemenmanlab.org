---
title: "Homework 8"
group: "physics-434-2012"
wiki_title: "Physics 434, 2012: Homework 8"
order: 270
---

1.  Consider the following Langevin differential equation that we discussed in class: $\frac{dx}{dt}=-kx+c\eta$, where $\eta$ is a Wiener process, that is, it is a Gaussian variable with $\langle\eta\rangle=0$, $\langle\eta(t)\eta(t')\rangle=\delta(t-t')$.
    - Write simple program that would solve this equation using Euler stepping. That is, following our discussion in one of the previous homeworks, for a given $k$, $c$ and the temporal step size $\Delta t$, we can define $x_n\equiv x(n\Delta t)$, and then $\frac{x_{n+1}-x_{n}}{\Delta t}= -kx_n+\frac{c}{\sqrt{\Delta t}}\nu$, where $\nu$ is a Gaussian random variable with zero mean and unit variance. This then gives $x_{n+1}=x_{n} -kx_n\Delta t+c\sqrt{\Delta t}\nu$, which can be turned into a simple for-loop code for simulating a sequence of x's.
    - Simulate $N=1e5$ steps of this dynamics of $x$. Plot $x$. Describe what you see.
    - Take a Fourier transform of this $x$ using the Matlab build-in $fft$ function.
    - Plot (in log-log scale) the power spectrum (that is $\left|x_\omega\right|^2\equiv x_\omega x_{-\omega}$.
    - Using the expressions we derived in class, show that the power spectrum for this $x$ should look like $\langle x_\omega x_{-\omega}\rangle=\frac{c^2}{k^2+\omega^2}$. Compare this to your plot. Do they look similar? Think about why or why not. (Hint -- they will be similar for about half of your plot).
2.  Write down an expression for the mutual information through an enzymatic amplifier, derived in class. Suppose the input signal is band limited, so that its spectrum is $\langle \Delta E_{a,\omega}\Delta E_{a,-\omega}\rangle= \frac{\epsilon^2}{1+\omega^2\tau_E^2}$, where $\epsilon$ is some constant depending on the system kinetic rates. We suppose that there's no input noise, and only intrinsic noise in the amplifier. Remembering that $g_0\frac{1}{\tau}\le {\rm const}$ (recall what this constant is), can you find the best setting for an amplifier (that is, the choice of $\tau$), which would improve the mutual information between the input or the output of the amplifier? That is, can filtering improve the information? Now suppose there is input noise $\delta E_{a,\omega}$. Does it change the result? Explain your results.
