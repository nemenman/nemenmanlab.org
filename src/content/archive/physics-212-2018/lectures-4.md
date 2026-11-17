---
title: "Lectures 4"
group: "physics-212-2018"
wiki_title: "Physics 212, 2018: Lectures 4"
order: 50
---

In this lecture, we continue learning the basics of computational modeling and Python language using the simple linear (,malthusian) growth model.

## Finishing up from the previous lecture

**Your work:** explore how the solution spends on dt. Output results only when t is an integer.

## New Python constructions

- Objects -- mutable (arrays and lists) vs. immutable (numbers)
  - Object attributes and object methods, using dir
  - Overloading methods
- Variables vs. objects
- Lists vs. Numpy arrays
  - Why np.zeros((2,4)) and not np.zeros(2,4)?
- Creation, concatenation (stacking).
- Slicing -- doesn't create new arrays
- Flatten copies data, ravel and reshape does not
- Strings
- Loops
- Vector math is always faster than element-by-element math

## Basic plotting

- Section 3.3.1

- [Malthusian growth with a loop and with plotting](/archive/files/Malthus1.txt)

  **Your work:** plot sin(x) for x between 0 and pi. Only plot the positive part of the vertical axis. Label axes.

[Submit your work](https://docs.google.com/forms/d/e/1FAIpQLSeNvrPddCgvMfHdlSA8uYDddBFqLK81Rrr4l7jfozud6J7iww/viewform).

## Our simplest model

A real environment won't have resources that are capable of supporting an infinite bacterial population. Thus as the population grows, the growth rate should decrease. The simplest assumption is that it decreases linearly $r(n)=r_0-r_1n$. This gives for the growth: $\frac{dn}{dt}=(r_0-r_1n)n=r_0n\left(1-\frac{n}{r_0/r_1}\right)$. Or, in other words, $\frac{dn}{dt}=r_0n\left(1-\frac{n}{N_0}\right)$, where $N_0$ is the carrying capacity -- the number of bacteria where there growth rate is equal to 0, and the population stabilizes.
