---
title: "Lecture 15"
group: "physics-212-2019"
wiki_title: "Physics 212, 2019: Lecture 15"
order: 160
---

## Optimization is hard

While a lot more can be added here (see the appropriate section of the Numerical Recipes book), it suffices to say that optimization is hard. And the more dimensional the optimization problem is, the harder it is, generally. Overall, this in because

- In large dimensions, the volume of the parameter space grows quickly. If one needs to find the minimum to the accuracy $\Delta x$, and the typical size of the system along each dimension is $L$, then there are $(L/\Delta x)^d$ spaces to explore in $d$ dimensions, which very quickly becomes hard even for relatively small $d$.
- There's usually just one global minimum, but many local minima that we are not interested in. The optimizers get stuck in the local minima and can't escape them to find the global ones. This is more likely in large dimensional problems.
- There are also regions of space where the loss function ${\cal L}$ is nearly flat, so that the optimizer does not know which way to go towards the minimum. Again, this is more likely in higher dimensions.
- In higher dimensions there are a lot of other exotic situations, such as valleys, narrow canyons, funnels, discontinuous walls -- and all those make optimization harder.

There are some exceptions -- problems like the multivariate linear regression one -- that are known as "convex", which means that there's just one minimum (global or local), and there are no flat regions, and so one can easily find the minimum. Nonetheless, even in non-convex problems, one often can find at least a local minimum by simply following the gradient, and sliding downhill. We will explore this in the later lectures.

## General structure of optimizers

Quite generally, optimizers are divided along the following dimensions:

- Number of derivatives required (none, first derivatives -- gradient, or second derivatives -- which allows one to deal with flat regions).
- Deterministic vs stochastic \*General considerations for nonlinear minimization (with and without derivatives; with and without second derivatives)

## 1-d optimization

1-d optimization is special. While for larger-dimensional problems finding a minimum is never guaranteed, in 1-d we are guaranteed to find a minimum if we bracketed it (that is, know the value of the function in three points, and the value is higher for the two exterior points than the interior one). This can be done with the golden section 1-d search -- see page 397 in [Numerical Recipes](http://apps.nrbook.com/c/index.html) book. There's no equivalent method in higher dimensions.

Additional methods for 1-d optimization, which actually have equivalents in higher dimensions, are

- Parabolic interpolation -- approximating the function based on three points as a parabola, and jumping to the putative minimum of the parabola. See pages 402 in [Numerical Recipes](http://apps.nrbook.com/c/index.html) book.
- Newton's method. Since the minimum corresponds to the zero of the derivative of a function, one can solve for the zero of the derivative similarly to how we did this for the Newton-Raphson method.

## Maximum accuracy of optimization

What is the maximum precision that we should request of an optimizer looking for the optimal point? Remember that floating point numbers at double precision are stored in the memory to the relative error of $\epsilon \approx 10^{-16}$. Also recall that most functions near an optimum behave like $f(\theta)\approx \frac{1}{2}\left.\frac{\partial^2 f}{\partial \theta^2}\right|_{\hat{\theta}}(\theta-\hat{\theta})^2$. To find the position of a minimum of a function, we must be able to compare the function values to each other near the minimum: indeed, we need to know, which of the function values is smaller than the others. However, comparisons of floating point numbers are never perfect, and can only be performed up to a certain relative precision. That is, we can only know that $f(\theta_0+\Delta \theta)$ is greater than $f(\theta_0)$ (and hence $\theta_0$ is the position of the minimum) if .. more to be added..

## Your turn

Write down a parabolic interpolation or Newton method minimizer of 1-d functions. Minimize a ${\rm cosh} x$ using your minimizer. Do you get the expected result?
