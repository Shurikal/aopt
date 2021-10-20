QCQP to SOCP

Solution in AO_exercise3.pdf

Linear Programming

Solution in AO_exercise3.pdf

Transform general LP to standard form

no solution found

Programming Exercise: Mass Spring System

The implementation of the basic functions (eval function, gradient, hessian) wasn't difficult.
We didn't understand first what we had to do in the MassSpringSystemT_impl.hh, so we had to ask for help in the forum.
With the short explanation we could implement the setup function.

A picture of a 10x10 spring graph is found with the name springGraph10_10.jpg.

With the Speed Comparison test which evaluates a 100x100 spring system the time difference between the dense and the sparse matrix is very large (7.011s vs. 0.194s).
For large systems the sparse matrix is the better choice.

Testing started at 17:22 ...
Evaluating the Dense MassSpringSystem...
MassSpring system energy is 1.97215e-27
MassSpring system gradient norm is 3.54382e-14
MassSpring system hessian norm is 3828.34
Evaluating on DENSE hessian takes: 7.011s
Evaluating the Sparse MassSpringSystem...
MassSpring system energy is 1.97215e-27
MassSpring system gradient norm is 3.54382e-14
MassSpring system hessian norm is 3828.34
Evaluating on SPARSE hessian takes: 0.194s
 ===> DENSE vs. SPARSE comparison: 7s vs. 0s