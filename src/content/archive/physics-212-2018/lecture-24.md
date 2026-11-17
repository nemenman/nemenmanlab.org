---
title: "Lecture 24"
group: "physics-212-2018"
wiki_title: "Physics 212, 2018: Lecture 24"
order: 220
---

The heat diffusion equation -- one of many partial differential equations (differential equations involving partial derivatives).

- Fick's first law of diffusion $J=-D\frac{d\phi}{dx}$ or $\vec{J}=-D\nabla \phi$ (also known as Newton's law of cooling if $\phi=T$, or the Fourier law of heat conduction)
- Fick's second law of diffusion $\partial_t \phi = -D\nabla^2 \phi$.
- Finite difference form of the heat diffusion equation; need boundary conditions to complete the solution
- Boundary conditions (implemented with extending the grid matrix):
  - Absorbing
  - Reflecting
  - Peeriodic
- Solution of the equation using Python code.
