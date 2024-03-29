#pragma once

#include <Utils/RandomNumberGenerator.hh>
#include <FunctionBase/FunctionBase.hh>

//== NAMESPACES ===================================================================

namespace AOPT {

    //== CLASS DEFINITION =========================================================

    class ConvexityTest {
    public:
        using Vec = FunctionBase::Vec; ///< Eigen::VectorXd
        using Mat = FunctionBase::Mat; ///< Eigen::MatrixXd

        ConvexityTest() {}

        ~ConvexityTest() {}

    public:

        /** Checks whether the function given as argument is convex or not.
         * If it is not, it should output a point not satisfying the convexity property
         * before returning false.
         * \param _function a function pointer that should be any class inheriting
         * from FunctionBase, e.g. FunctionQuadraticND
         * \param min the minimum value of all tested points' coordinate
         * \param max the maximum value of all tested points' coordinate
         * \param n_evals the number of evaluations/samples tested on the
         *        line between the two points on the function */
        static bool isConvex(FunctionBase* _function, const double min = -1000., const double max = 1000., const int n_evals = 10) {
            const int n = _function->n_unknowns();
            //randomly generate number from min to max
            RandomNumberGenerator rng(min, max);
            
            const int max_sampling_points(1000000);

            //------------------------------------------------------//
            double deltaTheta = 1.0/(n_evals+1);
            double theta,evalX,evalY;

            Vec x, y;

            for (int i = 0; i < max_sampling_points; ++i) {

                //generate 2 random points
                x = rng.get_random_nd_vector(n);
                y = rng.get_random_nd_vector(n);

                evalX = _function->eval_f(x);
                evalY = _function->eval_f(y);

                for (int j = 0; j < n_evals; ++j) {
                    // ignore theta = 0 and theta = 1 -> always correct
                    theta = deltaTheta * (1.0+j);

                    // f (θx + (1 −θ)y) > θf (x) + (1 −θ)f (y)
                    // if this is true, function is not convex
                    // no need to calculate more points
                    if (_function->eval_f(theta * x + (1 - theta) * y) > theta * evalX + (1 - theta) * evalY){
                        return false;
                    }
                }
            }
           
            //------------------------------------------------------//
            return true;
        }


    private:
        static void printPathInfo(FunctionBase::Vec p1, FunctionBase::Vec p2, FunctionBase::Vec p, double t) {
            std::cout << "path: p(t) = (1 - t) * p1 + t * p2; \nwith:\n"
                      << "  p1 = (" << p1.transpose() << ")\n"
                      << "  p2 = (" << p2.transpose() << ")\n"
                      << "  p (t = " << t << ") = (" << p.transpose() << ")" << std::endl;
        }

    };




}
