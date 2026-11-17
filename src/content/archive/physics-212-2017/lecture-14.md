---
title: "Lecture 14"
group: "physics-212-2017"
wiki_title: "Physics 212, 2017: Lecture 14"
order: 130
---

Why is fitting hard: Large dimensionality, multiple minima, flat regions. What is the maximum accuracy of optimization?

For future lectures, start reading:

- <http://docs.scipy.org/doc/scipy/reference/optimize.html> -- Optimization with Python/SciPy

In the class lectures for this module, we will talk about the following methods:

- Multi-dimensional linear regression (no derivations) using numpy.linalg.lstsq <http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.linalg.lstsq.html>
- General considerations for nonlinear minimization (with and without derivatives; with and without second derivatives)
- Golden mean 1-d search
- Parabolic interpolation
- Newton method

**Your turn:** Write down a parabolic interpolation or Newton method minimizer of 1-d functions. Minimize a ${\rm cosh} x$ using your minimizer. Do you get the expected result?

- [Submit your work](https://docs.google.com/forms/d/e/1FAIpQLSeNvrPddCgvMfHdlSA8uYDddBFqLK81Rrr4l7jfozud6J7iww/viewform).
