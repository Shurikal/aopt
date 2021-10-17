#pragma once

#include <Functions/FunctionQuadratic2D.hh>
#include <Functions/FunctionQuadraticND.hh>
#include <Functions/FunctionNonConvex2D.hh>
#include <vector>
//== NAMESPACES ===================================================================

namespace AOPT {

    //== CLASS DEFINITION =========================================================
    class GridSearch {
    public:
        using Vec = FunctionBase::Vec;
        using Mat = FunctionBase::Mat;

        GridSearch(const int _n_cells = 10) : n_cells_(_n_cells){}
        ~GridSearch() {}

    public:

        /** Evaluation of a 2D function over the whole grid to find its minimum
         *
         * \param _func a pointer to any 2D function inheriting from FunctionBase
         *              (see include/FunctionBase/FunctionBase.hh)
         * \param _x_l the coordinates of the lower corner of the grid
         * \param _x_u the coordinates of the upper corner of the grid.
         *             _x_l and _x_u together define a square in which the grid lies
         * \return 0 if all went well, -1 if not.*/
        int grid_search_2d(FunctionBase* _func, const Vec& _x_l, const Vec& _x_u, double& _f_min) const {
            std::cout<<"Grid searching the minimum of a 2-D function..."<<std::endl;
            double f = 0., fmin = std::numeric_limits<double>::max();
            
            Vec x_min(2);


            
            //------------------------------------------------------//
            //Todo: implement the 2d version of the grid search
            // algorithm to find minimum value of _func between _x_l and _x_u
            //------------------------------------------------------//


            double deltaX = (_x_u[0]-_x_l[0])/n_cells_;
            double deltaY = (_x_u[1]-_x_l[1])/n_cells_;

            Vec xEval;

            for (int i = 0; i< n_cells_+1;i++) {
                for(int j= 0; j<n_cells_+1;j++){

                    xEval = _x_l + Eigen::Vector2d(i*deltaX,j*deltaY);

                    f = _func->eval_f(xEval);
                    if(f < fmin){
                        fmin = f;
                        x_min = xEval;
                    }
                }

            }
            
            //------------------------------------------------------//
            _f_min = fmin;
            std::cout<<"Minimum value of the function is: "<<fmin<<" at x:\n"<<x_min<<std::endl;
            return 0;
        }


        /** Evaluation of an ND function over the whole grid to find its minimum
         *  using an iterative approach
         *
         * \param _func a pointer to any ND function inheriting from FunctionBase
         *              (see include/FunctionBase/FunctionBase.hh)
         * \param _x_l the coordinates of the lower corner of the grid
         * \param _x_u the coordinates of the upper corner of the grid.
         *             _x_l and _x_u together define an ND cuboid in which the grid lies
         * \return 0 if all went well, -1 if not.*/
        int grid_search_nd(FunctionBase* _func, const Vec& _x_l, const Vec& _x_u, double& _f_min) const {
            int n = _func->n_unknowns();
            if (_x_l.size() != n || _x_u.size() != n) {
                std::cout << "Error: input limits are not of correct dimension!" << std::endl;
                return -1;
            }
            std::cout << "Grid searching the minimum of a " << n << "-D function..." << std::endl;

            double f_min = std::numeric_limits<double>::max();
            Vec x_min(n);
            //------------------------------------------------------//
            //Todo: implement the nd version of the grid search
            // algorithm to find minimum value of a nd quadratic function
            // set f_min with the minimum, which is then stored in the referenced argument _f_min

            Vec xEval;
            Vec deltas;

            deltas = (_x_u - _x_l) / n_cells_;
            xEval = _x_l;

            forLoop(0,n,n_cells_,xEval,deltas,f_min,_func,x_min,_x_l);

            
            //------------------------------------------------------//
            _f_min = f_min;
            std::cout << "Minimum value of the function is: " << f_min << " at x:\n" << x_min << std::endl;

            return 0;
        }


    private:

        void forLoop(int currentDim,const int maxDim,const int n_cells, Vec &xEval,const Vec &deltas, double &f_min, FunctionBase* _func, Vec &x_min,const Vec &_x_l) const {
            if(currentDim >= maxDim){
                // calculate
                double f = _func->eval_f(xEval);
                if(f < f_min){
                    f_min = f;
                    x_min = xEval;
                }
                return;
            }
            for(int i = 0;i <= n_cells;i++){
                xEval[currentDim] = _x_l[currentDim] + i * deltas[currentDim];
                //std::cout << "xEval =  \n" << xEval << "\n";
                //std::cout << "New Minimum at " << x_min << " with: " << f_min << "\n";
                forLoop(currentDim+1,maxDim,n_cells,xEval,deltas, f_min,  _func, x_min,_x_l);
            }
        }
    private:
        int n_cells_;



    };

    //=============================================================================
}





