#pragma once

#include <Eigen/Core>
#include <Algorithms/LineSearch.hh>
#include <FunctionBase/FunctionBaseSparse.hh>

//== NAMESPACES ===============================================================

namespace AOPT {

    //== CLASS DEFINITION =========================================================

    class LBFGS {
    public:
        using Vec = FunctionBaseSparse::Vec;
        using Mat = FunctionBaseSparse::Mat;
        using MapVec = Eigen::Map<Vec>;

        LBFGS(const int _m): m_(_m) {}


        /**
        * @brief solve
        * \param _problem pointer to any function/problem inheriting from FunctionBaseSparse
        *        on which the basic Newton Method will be applied
        * \param _initial_x starting point of the method
        * \param _eps epsilon under which the method stops
        * \param _max_iters maximum iteration of the method*/
        template <class Problem>
        Vec solve(Problem *_problem, const Vec& _initial_x, const double _eps = 1e-4, const int _max_iters = 1000000) {
            std::cout << "******** LBFGS ********" << std::endl;

            int n = _problem->n_unknowns();

            //allocate storage
            init_storage(n);

            //get starting point
            Vec x = _initial_x;

            if(m_ < 1) {
                std::cout<<"\nError: m should be larger than 0!"<<std::endl;
                return x;
            }

            //squared epsilon for stopping criterion
            double e2 = _eps * _eps;

            //allocate gradient storage
            Vec g(n), sk(n), yk(n);

            //initialize k
            int k(0);

            //initialize
            double f = _problem->eval_f(x);
            _problem->eval_gradient(x, g);

            xp_ = x;
            gp_ = g;


            do {
                double g2 = g.squaredNorm();

                //print status
                std::cout << "iter: " << k <<
                          "   obj = " << f <<
                          "   ||g||^2 = " << g2<< std::endl;

                if(g2 < e2) {
                    std::cout<<"Gradient norm converges!"<<std::endl;
                    return x;
                }

                //compute r_
                //------------------------------------------------------//
                //TODO: complete the function
                two_loop_recursion(g, sk, yk, k);
                //------------------------------------------------------//

                //compute the step size
                double t = LineSearch::backtracking_line_search(_problem, x, g, -r_, 1.);
//                double t = LineSearch::wolfe_line_search(_problem, x, g, -r_, 1.);
                std::cout<<t<<std::endl;
                if(t < 1e-16) {
                    std::cout<<"The step length is too small!"<<std::endl;
                    return x;
                }

                //update previous function value, x and gradient
                fp_ = f;
                xp_ = x;
                gp_ = g;

                //update x
                x -= t * r_;

                //evaluate current f
                f = _problem->eval_f(x);

                if(k > 0 && fp_ <= f) {
                    std::cout<<"Function value converges!"<<std::endl;
                    return x;
                }

                //current gradient
                _problem->eval_gradient(x, g);

                //update storage
                sk = x - xp_;
                yk = g - gp_;

                //------------------------------------------------------//
                //TODO: complete the function
                update_storage(g, sk, yk, k);
                //------------------------------------------------------//

                k++;

            } while (k < _max_iters);


            return x;
        }



    private:
        void two_loop_recursion(const Vec& _g, const Vec& _sk, const Vec& _yk, const int _k) {
            //------------------------------------------------------//
            //TODO: implement the two-loop recursion as described in the lecture slides
            Vec q = _g;
            for (int i = m_-1; i >= 0; i--) {
                alpha_[i] = rho_[i] * mat_s_.col(i).transpose()*q;
                q = q - alpha_[i]*mat_y_.col(i);//-alpha_[i];

            }
            r_ = q;
            for (int i = 0; i < m_ ; i++) {
                double beta = rho_[i]*mat_y_.col(i).transpose()*r_;
                r_ = r_ +mat_s_.col(i) * (alpha_[i]-beta);
            }
            
            
            //------------------------------------------------------//
        }

        void update_storage(const Vec& _g, const Vec& _sk, const Vec& _yk, const int _k) {
            //------------------------------------------------------//
            //TODO: update the si and yi stored in the mat_s_ and mat_y_ respectively
            //update rho_i stored in rho_[i]

            for(int i = 1; i< m_-1; i++){
                mat_s_.col(i-1) = mat_s_.col(i);
            }
            mat_s_.col(m_-1) = _sk;

            for(int i = 1; i< m_-1; i++){
                mat_y_.col(i-1) = mat_y_.col(i);
            }
            mat_y_.col(m_-1) = _yk;


            for(int i = 1; i< m_-1; i++){
                rho_[i-1] = rho_[i];
            }
            rho_[m_-1] = 1/(_yk.transpose()*_sk);
            //------------------------------------------------------//
        }


        void init_storage(const int _n) {
            mat_y_.resize(_n, m_);
            mat_s_.resize(_n, m_);
            xp_.resize(_n);
            gp_.resize(_n);
            r_.resize(_n);
            rho_.resize(m_);
            alpha_.resize(m_);
        }

    private:
        //variables' name convention follow the lecture slides
        //number of most recent pairs of s and y to store
        int m_;
        //store y
        Mat mat_y_;
        //store s
        Mat mat_s_;
        //previous function value
        double fp_;
        //previous x
        Vec xp_;
        //previous gradient
        Vec gp_;
        //move direction
        Vec r_;

        Vec alpha_;
        Vec rho_;

    };

//=============================================================================
}





