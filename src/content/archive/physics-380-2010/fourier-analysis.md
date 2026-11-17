---
title: "Fourier Analysis"
group: "physics-380-2010"
wiki_title: "Physics 380, 2010: Fourier Analysis"
order: 60
---

## Lectures 11, 12

## Homework (due Oct 8)

1.  In class, we discussed the rate-distortion theorems, and in particular its Information Bottleneck form (Tishby et al, 2000), which, for a given distribution of a signal $x$ and the relevance variable $y$, $P(x,y)$, tries to compress $x$ into $z$, while preserving as much information in $z$ as possible about $y$. That is, the method maximizes $L=I(z,y)-\lambda I(x,z)$ over $P(z|x)$, and the parameter $\lambda$ controls the tradeoff between the strength of the compression and the amount of information retained about $y$. Let's explore this approach numerically.
    - Download the following program [bottle2.m](/archive/files/Bottle2.m), which takes on its input the joint distribution of $x$ and $y$, the suggested dimensionality of $z$, and the value of $\beta=1/\lambda$. The routine outputs $P(z|x)$ and $P(y|z)$.
    - You will also need auxiliary functions [llog2.m](/archive/files/Llog2.m) and [unzero.m](/archive/files/Unzero.m). Download them and place them into the same folder/directory as bottle2.m
    - Recall the homework problem from the last week and, as $P(x)$, take a distribution that allows 1, 5, 10, 20 molecules with an equal probability of 0.25. Use the code you wrote the last time to generate $P(x,y)$, where $y$ is obtained by Poisson smearing of $x$.
    - Run the Information bottleneck algorithm and plot $I(y,z)$ vs. $I(x,z)$ for different values of $\beta$ and for sizes of $z$ of 2, 3, 4, 5. How close do we come to recovering all of information about $y$ in $z$? That is, how close is $I(y,z)/I(x,z)$ to 1? How different are the plots for different sizes of $z$? Discuss.
2.  Calculate Fourier coefficients for the following three functions defined for $-1\le t\le 1$. (a) $x(t)=\left\{\begin{array}{ll}-1,&t<0\\0,&t=0\\+1,&t>0\end{array} \right.$; (b) $x(t)=\left\{\begin{array}{ll}t+1,&t<0\\1,&t=0\\1-t,&t>0\end{array} \right.$; (c)$x(t)=(t-1)^2(t+1)^2$. Plot the first ten partial sums of the Fourier series for all of these functions to observe how the sums converge. Use one figure per function (that is, plot the ten sums on the same figure). Note that the Fourier coefficients decrease the slowest for the function that is discontinuous, (a), and the fastest for the function that is smooth, (c).

## Homework (due Oct 15)

Let's play a bit today with Fourier transforms

1.  Consider the following Langevin differential equation that we discussed in class: $\frac{dx}{dt}=-kx+c\eta$, where $\eta$ is a Wiener process, that is, it is a Gaussian variable with $\langle\eta\rangle=0$, $\langle\eta(t)\eta(t')\rangle=\delta(t-t')$.
    - Write simple program that would solve this equation as a difference equation. That is, following our discussion in one of the previous homeworks, for a given $k$, $c$ and the temporal step size $\Delta t$, we can define $x_n\equiv x(n\Delta t)$, and then $\frac{x_{n+1}-x_{n}}{\Delta t}= -kx_n+\frac{c}{\sqrt{\Delta t}}\nu$, where $\nu$ is a Gaussian random variable with zero mean and unit variance. This then gives $x_{n+1}=x_{n} -kx_n\Delta t+c\sqrt{\Delta t}\nu$, which can be turned into a simple for-loop code for simulating a sequence of x's.
    - Simulate $N=1e5$ steps of this dynamics of $x$. Plot $x$. Describe what you see.
    - Take a Fourier transform of this $x$ using the Matlab build-in $fft$ function.
    - Plot (in log-log scale) the power spectrum (that is $\left|\hat{x}(\omega)\right|^2\equiv \hat{x}(\omega)\hat{x}({-\omega})$.
    - Using the expressions we derived in class, show that the power spectrum for this $x$ should look like $\langle\hat{x}(\omega)\hat{x}({-\omega})\rangle=\frac{c^2}{k^2+\omega^2}$. Compare this to your plot. Do they look similar? Think about why or why not. (Hint -- they will be similar for about half of your plot).
2.  *For grad students only*. Can you also calculate the power spectrum for $x$ that satisfies the following equations: $\begin{array}{l}\frac{dx}{dt}=-k_{xx}+k_{xy}y+c_x\eta_x\\\frac{dy}{dt}=-k_{yx}y+k_{yy}y + c_y\eta_y\end{array}$, where all $k$'s are positive, and $\eta_x,\eta_y$ are uncorrelated noises in the two variables. Are there any special features in the power spectrum. How do you think $x(t)$ might look like given this spectrum?

For these problems, we wrote the following functions:

- [JCondJ.m](/archive/files/JCondJ.m) -- takes a conditional distribution $Pzx=P(z|x)$ and the joint distribution $P(x,y)=pxy$ as an input and produces the joint $pzy=P(z,y)$ on the output.
- [FSerVal.m](/archive/files/FSerVal.m) -- takes the vector of time, the zeros cosine coefficient, and the rest of the cosine and the sine coefficients and produces the values of the corresponding partial sums.
