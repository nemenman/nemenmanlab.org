---
title: "Lecture 5"
group: "physics-212-2019"
wiki_title: "Physics 212, 2019: Lecture 5"
order: 60
---

## An example of a model: Solving for an equilibrium position, harder version

**Problem formulation:**

A charged particle free to move on a rod is put in the between the first and the second of three immovable particles with an electric charge of the same sign affixed to the rod at various points. Where will the charge come to rest?

**Analysis:** The same analysis as in the simpler version applies here: it's a static, deterministic, continuous space model. We again need the friction for the solution to exist, and the moving particle with come to rest, and the solution will exist.

**Model building:** As before, the equilibrium for the system will be given by $\sum {F}=0$. There are now three Coulomb forces acting on the particle from the fixed charges. Let's say the charges are at positions $p_1<x_2<p_3$, with charges $q_1$, $q_2$, and $q_3$, respectively. Let's suppose again that the position of the movable particle is $x_1<x<x_2$. Then the solution of the problem will be given by $\frac{q_1}{(x-p_1)^2}-\frac{q_2}{(x-p_2)^2}-\frac{q_3}{(x-p_3)^2}=0$. We notice again that the three charges and fixed charge positions are the only things that are needed for the solution. This is equivalent to ${q_1}{(x-p_2)^2}(x-x_3)^2-{q_2}{(x-p_1)^2}(x-p_3)^2 -{q_2}{(x-p_2)^2}(x-p_1)^2=0$. This is not a quartic equation in $x$, and solving this problem would be equivalent to finding the root of this quartic equation between $p_1$ and $p_2$. This is going to be more interesting!

**Model implementation:** The analysis above suggests that the entire model consists of solving for roots of a fourth order polynomial. How do we do this? For this we will introduce the Newton-Raphson method for finding a root of an equation $F(x)=0$. This is the first of many computational algorithms that we will introduce in this class, and it allows to find roots (zero crossings) of more-or-less arbitrary functions, not just of polynomials.

Let's suppose that we have a guess $x_0$ for a root of a function $F(x)$. We evaluate the function, $F_0=F(x_0)$, and it turns out that the guess is not quite right, $F_0\neq 0$. We can then write the Taylor expansion for the function $F$ for the values of $x$ around $x_0$. Namely, $F(x)\approx F_0 + G_0(x-x_0)$, where $G_0$ is the value of the derivative of $F$ evaluated at $x_0$, $G_0=\left(dF/dx\right)_{x_0}$. But then we can get a better estimate of where the root is by solving the equation $F_0+G_0(x-x_0)=0$. This would give $x_1=x_0-F_0/G_0$ for the next estimate. Iterating this, one will get $x_{i+1}=x_i -F_i/G_i$. This way we will approach the solution progressively better and better, as we iterate more. At some point we will need to stop the iteration. Usually, this is yet another parameter that one adds to the initialization in the experiment: the tolerance $\epsilon$ for finding the solution. That is, one interrupts the recursion when $\left|x_{i+1}-x_i\right|<\epsilon$. Note that one can also choose to interrupt the solution choice when the function itself is approximately zero, and both approaches are valid. They are, in fact, equivalent for typical functions, but may give different results for various special cases -- and the discussion of this in "Numerical recipes" is illuminating.

A few notes about the algorithm are in order. First, the algorithm will only find a root if it is initialized with the initial guess in the root's vicinity. So if one wants to find a root, one needs to have good guesses. And to find all roots, one needs to have initial guesses near all of the roots, and then run the algorithm for each of the guesses. Even then the solution may not exist -- there is no guarantee that the the iterations converge; they can enter cycles or diverge instead. Most of such problems can be tracked to the fact that the iteration step involves dividing by $G$, derivative of the function $F(x)$. When this derivative becomes small, changes to $x$ will be large, and all sorts of problems will emerge. We will explore this in the *your work* section. A more detailed description of the method can be found in the [Numerical Recipies](http://www.aip.de/groups/soe/local/numres/bookcpdf/c9-4.pdf) book.

**Your work:** with the provided skeletal code implementing the Newton-Raphson method, try to find **all** roots of the following functions $F(x)= {\rm atan} 3x$ and $F(x)=\frac{1}{3+x^2}-\frac{1}{6}$. Do you need to modify the code to deal with convergence of the iterations for some conditions? If so, do the modification. Can you understand why some of your attempts converged to a solution, and some did not? **Don't forget to submit your code.**

Once the Newton solver for roots has been implemented, the rest of the model design is simple. We start with initializing variables, verifying various possible exceptions, finding the root of the force equal to zero equation, and then outputting the root. A script for this is available for download, as a [Jupyter notebook](/archive/files/Newton2019.txt).

**Model verification:** To verify the model, we need to check that it produces results that we know to be correct for various special cases. As a general rule, every term, every function in the model must be verified. For this, you set all of the parameters in turn to values that make the problem easy, and compare the output to what you should have expected. In this particular case, the following verifications would be reasonable:

- Set the initial condition outside of the leftmost or the rightmost charge. Then there should be no equilibrium, and the charge will move to infinity -- which will mean that the Newton solver won't converge. Do we observe this?

- If we have three fixed charges, but one of them is zero, then the problem is equivalent to having two fixed charges only. And that problem we already solved previously. So we can set, in turn, the values of each of the three fixed charges to zero, and compare that the output of the program is the same as that of the two-charges quadratic solver program. An even simpler first step could be setting one of the charges to zero, and the two other equal to each other. Then the movable charge should settle exactly in the middle between the two non-zero charges. Does this?

  Notice that with these checks, we verify the effects of the initial condition and the value and the position of the fixed charges to be what we expect them to be. Thus the verification is more or less complete. In addition, none of the verification steps is useless -- if you only checked the initial condition, then the effect of the fixed charges would not be explored, and so on.

**Discussion:** Here we implemented a solution for the equilibrium position of the charge in the background of three fixed charges. The program, based on the Newton-Raphson algorithm, found the solution. Exceptions for position of the charges and the charge values were encoded. The program output has been verified against solution of a simpler problem with only two fixed charges, and the results (hopefully) matched. We assumed here that only the equilibrium position mattered. In principle, we could have written the problem as a dynamical model, and used the Newton's laws to find the position of the charge as a function of time. The value of the position at large time would be the equilibrium position, provides there is some friction in the problem that would force the charge to stop eventually. Another simplification we assumed was that the charges are positioned in just one dimension (on a rod). For a 2-d or a 3-d configuration of the charges, we would need to extend the Newton-Raphson algorithm to be useable for multi-dimensional root finding, which goes slightly outside of the scope of this class (would require knowing multivariate calculus).

## New Python Concepts

- Loops of different types (for and while).
- We started talking about scopes: what happens to the variable *i* after the *for* loops finishes executing?
- Variables vs objects, yet again.
- Vector math is always faster than element-by-element math -- we showed this in a simple script in class.

## Old Math Concepts

- Make sure you review Taylor series. These will be useful in the rest of the course.
