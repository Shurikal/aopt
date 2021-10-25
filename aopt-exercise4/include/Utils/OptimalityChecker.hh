#pragma once

#include <FunctionBase/FunctionBase.hh>
#include <vector>
//== NAMESPACES ===============================================================

namespace AOPT {

//== CLASS DEFINITION =========================================================
    class OptimalityChecker {
    public:
        using Vec = Eigen::VectorXd;

        OptimalityChecker(const double _epsilon = 1e-13) : eps_(_epsilon) {}


        /** Checks whether a particular optimization problem satisfies the KKT conditions
         *
         * \param _objective pointer to the objective function, which should be any function
         *        inheriting from FunctionBase
         *
         * \param _inequality_constraints an array containing the inequalities,
         *        each representend as a function inheriting from FunctionBase,
         *        such that _inequality_constraints[i].eval_f(x) <= 0 for all i
         *        if x is in the feasible set
         *
         * \param _equality_constraints an array containing the equalities,
         *        each representend as a function inheriting from FunctionBase,
         *        such that _equality_constraints[i].eval_f(x) == 0 for all i
         *        if x is in the feasible set
         *
         * \param _query_point the point at which the KKT conditions should be checked
         *
         * \param _lambda the lambda coefficients of the dual problem.
         *        It should be of the same dimension as _inequality_constraints since
         *        there is one lambda factor per inequality in the dual problem
         * \param _nu the nu coefficients of the dual problem.
         *        It should be of the same dimension as _equality_constraints since
         *        there is one nu factor per equality in the dual problem
         * */
        bool is_KKT_satisfied(FunctionBase *_objective, const std::vector<FunctionBase *>& _inequality_constraints,
                              const std::vector<FunctionBase *>& _equality_constraints,
                              const Vec& _query_point, const Vec& _lambda, const Vec& _nu) {
            //------------------------------------------------------//
            //Todo:
            //1. check only condition 4 in case there are no constraints
            //2. check inequality constraints (cond. 1.)
            //3. check equality constraints (cond. 1.)
            //4. check lambda (cond. 2.)
            //5. check complementary slackness (cond. 3.)
            //6. check gradient (cond. 4.)
            //------------------------------------------------------//

            double epsilon= 1e-8;

            //check inequality, lambda
            if(!_inequality_constraints.empty()){
                for (int i = 0; i < _inequality_constraints.size(); ++i) {
                    double eval_f = _inequality_constraints[i]->eval_f(_query_point);
                    //check inequality
                    if(eval_f>epsilon){
                        return false;
                    }
                    //lambda
                    if(_lambda[i]<-epsilon){
                        return false;
                    }
                    //complementary slackness
                    if(abs(_lambda[i]*eval_f) > epsilon){
                        return false;
                    }
                }
            }

            //check equality
            if(!_equality_constraints.empty()){
                for (int i = 0; i < _equality_constraints.size(); ++i) {
                    std::cout <<abs(_equality_constraints[i]->eval_f(_query_point))<<"\n";
                    if(abs(_equality_constraints[i]->eval_f(_query_point))>epsilon){
                        return false;
                    }
                }
            }

            Vec lagrangian_gradient;
            _objective->eval_gradient(_query_point, lagrangian_gradient);

            if(!_inequality_constraints.empty()){
                for (int i = 0; i < _inequality_constraints.size(); ++i) {
                    Vec in_gradient;
                    _inequality_constraints[i]->eval_gradient(_query_point,in_gradient);
                    lagrangian_gradient += _lambda[i] * in_gradient;
                }
            }



            //check equality
            if(!_equality_constraints.empty()){
                for (int i = 0; i < _equality_constraints.size(); ++i) {
                    Vec eq_gradient;
                    _equality_constraints[i]->eval_gradient(_query_point,eq_gradient);
                    lagrangian_gradient += _nu[i]*eq_gradient;
                }
            }

            for(int i = 0; i < lagrangian_gradient.size();i++){
                if(abs(lagrangian_gradient[i])>epsilon){
                    return false;
                }
            }

            return true;
        }

    private:
        double eps_;
    };
//=============================================================================
}



