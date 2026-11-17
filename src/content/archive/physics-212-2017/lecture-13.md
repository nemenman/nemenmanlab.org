---
title: "Lecture 13"
group: "physics-212-2017"
wiki_title: "Physics 212, 2017: Lecture 13"
order: 120
---

*Follow Module 3 Python scripts for illustration of these notes.*

Typically when we build a model, parameters of the model are not known a priori. We may know that bacteria grow according to a simple exponential growth with carrying capacity, but neither the maximum growth rate, nor the capacity itself are usually known. Instead, we need to *fit* these from data. That is, we need to find the parameter values that create the dynamics such that the graphs of solutions of the dynamics match the measured experimental data. Sometimes it may be possible to get the predictions and the data to coincide completely, but this is rare. Indeed, the model itself may not be totally accurate, or, what is even more common, experimental data may come with measurement noise. Thus we only try to get the modeling curves pass as close as possible to experimental data, but we cannot require that they match perfectly.

Such fitting of models from data is an example of a huge (and still largely unsolved) field of computational sciences -- namely, the field of **optimization**. The main problem within the field is typically formulated as follows. A *loss function* ${\mathcal L}$ is given, which depends on a certain set of parameters $\vec{\theta}$. Given maybe some addition properties of the loss function and the expected range of the parameters that are given to us, we need to find the minimum of the loss function ${\mathcal L}_0={\rm min}_{\vec{\theta}}{\mathcal L}(\vec{\theta})$ and the the values of the arguments (parameters) that minimize it $\vec{\theta}_0={\rm arg}\,{\rm min}_{\vec{\theta}}{\mathcal L}(\vec{\theta})$. Note that while it is traditional to talk about minimizing the loss function, minimization of ${\mathcal L}$ is equivalent to maximization of $-{\mathcal L}$; so that the field is called more generally as optimization and not as minimization.

While optimization is a common thread in many computational science problems, specifically those involved in fitting models to data, optimization is also all around us. In physics, the state with maximum entropy is the equilibrium state of matter; further, much of physics can be formulated as the nature finding systems trajectories that optimize the quantity known as action. Focusing on neuroscience, the trajectory that your arm will take in a reaching task can be predicted through optimization of time and applied force. And life itself cannot be understood without focusing on optimization of fitness -- the number of offsprings that reach maturity. In societies, from decisions made to individuals to policy choices, we keep on trying to optimize expected rates of return on our investments of time, energy, money. It's not surprising maybe that, since optimization is so broad and can account for so many natural and social phenomena, the most general optimization problem is far from solved.

In this class we, will provide just a simple survey of various useful optimization methods, specifically as they apply to fitting models to data. But there's much more to learn. You may want to read up on optimization in a canonical textbook Numerical Recipes (http://apps.nrbook.com/c/index.html -- look at the chapter on Optimization). However, don't overdo it -- the text book is aimed at beginning graduate students, and so goes into more details than we will cover in class.

## Blind fits: Empirical statistical models

The simplest fitting procedure that many of you are familiar with is linear regression, which you certainly have done in analysis of laboratory science classes. Here the model of data is not dynamic, but rather static. We are interested, in the simplest case, in the relation between two variables $x$ and $y$. The simplest relation that one can postulate is that the variables are linearly dependent, $y=kx$, with an unknown coefficient $k$. One measures a set of pairs $(x_i,y_i)$, $i=1,\dots N$, and the goal is to find $k$ that produces the best fit line, the closest line to the observed points.

What do we mean by "the closest"? The distance between the observation, $y_i$, and the fit line, $\hat{y}_i=kx_i$ is $\left|kx_i-y_i\right|$. While other choices are possible, a common choice is to say that the sum of squares (S.O.S.) of distances between the observations and the fit line, ${\mathcal L}=\sum_{I=1}^N (kx_i-y_i)^2$, should be minimized over the parameter $k$. We do this by taking the derivative of ${\mathcal L}$ with respect to $k$, and setting the derivative to zero: $\frac{d{\mathcal L}}{dk}=\sum_{I=1}^Nx_i(kx_i-y_i)=0$. This can be transformed to give us the optimal parameter value $k_0=\frac{\sum_{I=1}^Nx_iy_i}{\sum_{I=1}^Nx_i^2}$.

This example is the simplest case of what is known as *linear regression* -- dividing a coefficient that relates the dependent variable $y$ (also known as the regressand or the response variable), and the independent variable $x$ (also known as a regressor, input, or predictor variable). The linear regression can be extended to the *multivariate* regression case, when there are more than one predictor variable. This involves techniques from multivariate calculus and linear algebra, and we won't derive the method here. A special case of such multivariate linear regression, which we often encounter in practice, is $y=a+bx+cx^2+dx^3+\dots$. Note that even though $y$ is a nonlinear function of $x$, it is a linear function of $a,b,c,d$, and thus the optimization can be solved by linear regression methods. Here $1,x,x^2,x^3<math> act as four different predictors (with the predictor corresponding to <math>a$ being the same, 1, for every data point). In general, one should remember that linear regression may regress based on a nonlinear predictor!

Regression is the simplest, linear example of optimization. We will start with it, and then move on to more complicated examples. In Python, linear regression is implemented with [numpy.linalg.lstsq](http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.linalg.lstsq.html) function.

### Consistency checks when doing fits

**Your turn:** Look up the predicted maximum temperature for the next ten days online and build a linear regression model of what the temperature will be on day 11 using zeroth order, linear, quadratic, and cubic polynomial model.

- [Submit your work](https://docs.google.com/forms/d/e/1FAIpQLSeNvrPddCgvMfHdlSA8uYDddBFqLK81Rrr4l7jfozud6J7iww/viewform).

Module 3 -- the scripts I showed in class.
