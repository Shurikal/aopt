#include <Utils/OptimalityChecker.hh>
#include <Functions/FunctionQuadraticND.hh>
#include <vector>
#include <iostream>


int main(int _argc, const char* _argv[]) {
    AOPT::FunctionQuadraticND::Mat A(2, 2);
    A.setZero();
    AOPT::FunctionQuadraticND::Vec b(2);
    b.setZero();

    //-------------------------------------------------------------------------------//
    //Todo: set up the optimization problem by populating the various
    //matrices and vectors coefficients
    //1. set objective function

    A << 2, 0,
        0, -4 ;
    AOPT::FunctionQuadraticND obj_func = AOPT::FunctionQuadraticND(A,b,0);


    //2. inequality constraints
    std::vector<AOPT::FunctionBase *> ineq_cons;

    AOPT::FunctionQuadraticND::Mat A_in0(2, 2);
    A_in0.setZero();
    AOPT::FunctionQuadraticND::Vec b_in0(2);
    b_in0.setZero();

    A_in0 << 2,0,
            0,0;
    b_in0 << 8,-1;

    AOPT::FunctionQuadraticND _inequality0 = AOPT::FunctionQuadraticND(A_in0,b_in0,14);
    ineq_cons.push_back(&_inequality0);

    AOPT::FunctionQuadraticND::Mat A_in1(2, 2);
    A_in1.setZero();
    AOPT::FunctionQuadraticND::Vec b_in1(2);
    b_in1.setZero();


    b_in1 << -1,0;

    AOPT::FunctionQuadraticND _inequality1 = AOPT::FunctionQuadraticND(A_in0,b_in0,-10);
    ineq_cons.push_back(&_inequality1);

    //3. equality constraints

    std::vector<AOPT::FunctionBase *> eq_cons;

    AOPT::FunctionQuadraticND::Mat A_eq0(2, 2);
    A_eq0.setZero();
    AOPT::FunctionQuadraticND::Vec b_eq0(2);
    b_eq0.setZero();

    b_eq0 << 1,-1;

    AOPT::FunctionQuadraticND _equality0 = AOPT::FunctionQuadraticND(A_eq0,b_eq0,4);
    eq_cons.push_back(&_equality0);
    //4. set lambdas and vs

    AOPT::FunctionQuadraticND::Vec lambda(2);

    lambda << 4,0;

    AOPT::FunctionQuadraticND::Vec nu(1);

    nu << -12;

    //5. set query point

    AOPT::FunctionQuadraticND::Vec x(2);

    x << -2,2;
    
    //-------------------------------------------------------------------------------//

    //TODO: uncomment this to test your implementation
    //NOTE: you can change the variables name if you want
    //check
    
    AOPT::OptimalityChecker oc;
    if(oc.is_KKT_satisfied(&obj_func, ineq_cons, eq_cons, x, lambda, nu))
        std::cout<<"\nThe query point satisfies the KKT condition."<<std::endl;
    else
        std::cout<<"\nThe query point does NOT satisfy the KKT condition."<<std::endl;


    return 0;
}

