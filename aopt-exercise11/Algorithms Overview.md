# Algorithms Overview

## A quadratic problem which is strictly convex with linear equality constraints

+ Augmented Lagrangian method using Newton's solver
Infeasible Start Newton's method
Active Set Method using Newton’s solver
Primal-Dual Interior Point method using Newton's solver with Hessian modification

The augmented Lagrangian is the fastest solver for this problem.
We start feasible so the infeasible solver is not necessary.
The active Set and Interior Point method are designed for inequality constraints
problem and converge there fast.

## A linear program with inequality constraints

Active Set Method using Newton’s solver
+ Primal-Dual Interior Point method using Newton's solver with Hessian modification

It is faster than the Active Set Method because it does not go to the boundaries of the constraints as fast as the Active Set Method. On the boundaries the step size is much smaller and it needs more iteration steps.

## A convex quadratic problem with linear inequality constraints which can be solved via a sequence of convex quadratic subproblems with small number of linear equality constraints

Active Set Method using Newton’s solver
Primal-Dual Interior Point method using Newton's solver with Hessian
modification


## An unconstrained non-convex problem

Gradient Descent method, will give a local minimum.
+ Newton's method, will give a local minimum.
Newton's Method is faster than Gradient Descent because it uses also second order derivative information. It is faster than the other problems because the others are adapted to solve different problems which are not useful in this case and only increase computation time.
Augmented Lagrangian method using Newton's solver
Infeasible Start Newton's method
Active Set Method using Newton’s solver
L-BFGS method
## A non-convex least-squares problem of the form $f(x)=\sum_{i=1}^m f_i(x)^2$ with $x \in R^n$. The gradient of $f_i$ is dense and the hessian is not available

- Gradient Descent method, will give a local minimum
+ Gauss-Newton method

The Gauss–Newton algorithm iteratively finds the value of the variables that minimizes the sum of squares, which is exactly what is needed for this problem. It is therefore the fastest algorithm for this problem
L-BFGS method
