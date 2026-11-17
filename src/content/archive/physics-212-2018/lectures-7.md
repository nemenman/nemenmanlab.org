---
title: "Lectures 7"
group: "physics-212-2018"
wiki_title: "Physics 212, 2018: Lectures 7"
order: 70
---

Most models we will work on in this class will be written mathematically in terms of systems of coupled ordinary differential equations. How do we verify if our solution is not obviously wrong? One way of doing this is first to see (by solving the system numerically) whether the solutions settle down to a steady state, also known as a stable fixed point or a point attractor. If we can verify in an independent way that the attractor is correct, this will provide a good verification for our system. How do we do this?

Let's focus for now on a system of a single differential equation, like the constrained growth problem. If the system settled down, then in the equation $dx/dt=f(x,a)$ the time derivative is zero, and the equation becomes $f(x,a)=0$. It's an algebraic equation! How do we find its roots? We use the [Newton-Raphson method](https://en.wikipedia.org/wiki/Newton%27s_method), which I will derive in class.

Your own work: use the scripts I provided and change them to solve a quadratic equation. Compare the solution to the output of a function that gives an exact solution, which you wrote last time. Verify that different roots can be obtained using different initial conditions. Then use the scripts to solve an equation $e^x-ax=0$ for arbitrary $a$

Please [submit your work](https://docs.google.com/forms/d/e/1FAIpQLSeNvrPddCgvMfHdlSA8uYDddBFqLK81Rrr4l7jfozud6J7iww/viewform).
