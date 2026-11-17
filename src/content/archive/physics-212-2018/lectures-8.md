---
title: "Lectures 8"
group: "physics-212-2018"
wiki_title: "Physics 212, 2018: Lectures 8"
order: 80
---

How do we solve systems on nonlinear ODEs in the first place? The Euler method, which we introduced before, is good. But how accurate is it? We will talk about $O(dt^n)$ notation, and we will show that the Euler method is $O(dt)$. We will verify this by using the scripts that I have uploaded below. We will run the simple Euler method of solving differential equations on the malthusian grows problem with different $dt$, and show by plotting the error at the end that the error goes down in proportion to $dt$.

We then will talk about Runge-Kutta methods of solving differential equations. I will add additional notes later on, but for now please use these lecture notes <http://web.mit.edu/10.001/Web/Course_Notes/Differential_Equations_Notes/node5.html> . Additionally, we discussed how RK2 method is a prediction-correction method.

You will write a different differential equation and will solve it, to show that Runge-Kutta 2 has error $O(dt^2)$, and the scaling of the error is not a scaling due to the equation being solved, but largely due to the methods used to solve it.

Please submit your work.
