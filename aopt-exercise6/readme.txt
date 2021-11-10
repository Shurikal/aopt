# Newton Methods vs Gradient descent

Computed on a MacBookPro 2020 ARM 16GB

All screenshots are in the folder screenshots.
We think that something is not right with the gradient descent...
The csv files are in the folder csvs.

## Newton Method:

### Without length:

5x5: newtMethod_wol_5_5

Initial MassSpring system energy is 1.634e+07
Saving initial spring graph to newtMethod_wol_5_5_*.csv
******** Newton Method ********
######## Timing statistics ########
total time    : 0.016275s
total time evaluation : 0.003423s  (21.0323 %)
eval_f time   : 0.00020s  ( #evals: 2 -> avg 0.00010s )
eval_grad time: 0.00053s  ( #evals: 2 -> avg 0.00026s, factor: 2.59606)
eval_hess time: 0.00269s  ( #evals: 2 -> avg 0.00135s, factor: 13.26601)
Saving optimized spring graph to newtMethod_wol_5_5_opt_*.csv


10x10: newtMethod_wol_10_10

Initial MassSpring system energy is 2.542e+07
Saving initial spring graph to newtMethod_wol_10_10_*.csv
******** Newton Method ********
######## Timing statistics ########
total time    : 0.097833s
total time evaluation : 0.00911s  (9.31179 %)
eval_f time   : 0.00038s  ( #evals: 2 -> avg 0.00019s )
eval_grad time: 0.00154s  ( #evals: 2 -> avg 0.00077s, factor: 4.09840)
eval_hess time: 0.00719s  ( #evals: 2 -> avg 0.00360s, factor: 19.13032)
Saving optimized spring graph to newtMethod_wol_10_10_opt_*.csv


20x20: newtMethod_wol_20_20

Initial MassSpring system energy is 1.29769e+08
Saving initial spring graph to newtMethod_wol_20_20_*.csv
******** Newton Method ********
######## Timing statistics ########
total time    : 1.21771s
total time evaluation : 0.029062s  (2.38662 %)
eval_f time   : 0.00118s  ( #evals: 2 -> avg 0.00059s )
eval_grad time: 0.00473s  ( #evals: 2 -> avg 0.00237s, factor: 4.00085)
eval_hess time: 0.02315s  ( #evals: 2 -> avg 0.01157s, factor: 19.56551)
Saving optimized spring graph to newtMethod_wol_20_20_opt_*.csv


### With length:

5x5: newtMethod_wl_5_5

Initial MassSpring system energy is 1.8061e+07
Saving initial spring graph to newtMethod_wl_5_5_*.csv
******** Newton Method ********
######## Timing statistics ########
total time    : 0.050482s
total time evaluation : 0.012061s  (23.8917 %)
eval_f time   : 0.00130s  ( #evals: 14 -> avg 0.00009s )
eval_grad time: 0.00165s  ( #evals: 8 -> avg 0.00021s, factor: 2.22141)
eval_hess time: 0.00910s  ( #evals: 8 -> avg 0.00114s, factor: 12.22717)
Saving optimized spring graph to newtMethod_wl_5_5_opt_*.csv


10x10: newtMethod_wl_10_10

Initial MassSpring system energy is 3.14344e+07
Saving initial spring graph to newtMethod_wl_10_10_*.csv
******** Newton Method ********
######## Timing statistics ########
total time    : 0.33788s
total time evaluation : 0.031417s  (9.29827 %)
eval_f time   : 0.00415s  ( #evals: 22 -> avg 0.00019s )
eval_grad time: 0.00424s  ( #evals: 9 -> avg 0.00047s, factor: 2.49922)
eval_hess time: 0.02302s  ( #evals: 9 -> avg 0.00256s, factor: 13.56166)
Saving optimized spring graph to newtMethod_wl_10_10_opt_*.csv



20x20: newtMethod_wl_20_20

Initial MassSpring system energy is 1.54049e+08
Saving initial spring graph to newtMethod_wl_20_20_*.csv
******** Newton Method ********
######## Timing statistics ########
total time    : 5.14133s
total time evaluation : 0.180699s  (3.51464 %)
eval_f time   : 0.02018s  ( #evals: 28 -> avg 0.00072s )
eval_grad time: 0.02415s  ( #evals: 15 -> avg 0.00161s, factor: 2.23362)
eval_hess time: 0.13637s  ( #evals: 15 -> avg 0.00909s, factor: 12.61452)
Saving optimized spring graph to newtMethod_wl_20_20_opt_*.csv


## Gradient Descent

5x5: gradDescent_wol_5_5

Initial MassSpring system energy is 7632.83
Saving initial spring graph to gradDescent_wol_5_51_*.csv
******** Gradient Descent ********
iter: 1   obj = 7632.83   ||g||^2 = 109046
iter: 2   obj = 7632.83   ||g||^2 = 109046
######## Timing statistics ########
total time    : 0.000832s
total time evaluation : 0.000787s  (94.5913 %)
eval_f time   : 0.00024s  ( #evals: 2 -> avg 0.00012s )
eval_grad time: 0.00055s  ( #evals: 2 -> avg 0.00027s, factor: 2.30672)
eval_hess time: 0.00000s  ( #evals: 0 -> avg nans, factor: nan)
Saving optimized spring graph to gradDescent_wol_5_51_opt_*.csv



10x10: gradDescent_wol_10_10

Initial MassSpring system energy is 27277.5
Saving initial spring graph to gradDescent_wol_10_101_*.csv
******** Gradient Descent ********
iter: 1   obj = 27277.5   ||g||^2 = 447384
iter: 2   obj = 27277.5   ||g||^2 = 447384
######## Timing statistics ########
total time    : 0.003114s
total time evaluation : 0.003043s  (97.72 %)
eval_f time   : 0.00091s  ( #evals: 2 -> avg 0.00045s )
eval_grad time: 0.00213s  ( #evals: 2 -> avg 0.00107s, factor: 2.34763)
eval_hess time: 0.00000s  ( #evals: 0 -> avg nans, factor: nan)
Saving optimized spring graph to gradDescent_wol_10_101_opt_*.csv


20x20: gradDescent_wol_20_20

Initial MassSpring system energy is 110883
Saving initial spring graph to gradDescent_wol_20_201_*.csv
******** Gradient Descent ********
iter: 1   obj = 110883   ||g||^2 = 1.89344e+06
iter: 2   obj = 110883   ||g||^2 = 1.89344e+06
######## Timing statistics ########
total time    : 0.009804s
total time evaluation : 0.009675s  (98.6842 %)
eval_f time   : 0.00294s  ( #evals: 2 -> avg 0.00147s )
eval_grad time: 0.00673s  ( #evals: 2 -> avg 0.00337s, factor: 2.28746)
eval_hess time: 0.00000s  ( #evals: 0 -> avg nans, factor: nan)
Saving optimized spring graph to gradDescent_wol_20_201_opt_*.csv


5x5: gradDescent_wl_5_5


Initial MassSpring system energy is 1.72869e+06
Saving initial spring graph to gradDescent_wl_5_51_*.csv
******** Gradient Descent ********
iter: 1   obj = 1.72869e+06   ||g||^2 = 2.34533e+10
iter: 2   obj = 1.72869e+06   ||g||^2 = 2.34533e+10
######## Timing statistics ########
total time    : 0.000932s
total time evaluation : 0.000886s  (95.0644 %)
eval_f time   : 0.00029s  ( #evals: 2 -> avg 0.00014s )
eval_grad time: 0.00060s  ( #evals: 2 -> avg 0.00030s, factor: 2.07639)
eval_hess time: 0.00000s  ( #evals: 0 -> avg nans, factor: nan)
Saving optimized spring graph to gradDescent_wl_5_51_opt_*.csv



10x10: gradDescent_wl_10_10

Initial MassSpring system energy is 6.04171e+06
Saving initial spring graph to gradDescent_wl_10_101_*.csv
******** Gradient Descent ********
iter: 1   obj = 6.04171e+06   ||g||^2 = 9.46503e+10
iter: 2   obj = 6.04171e+06   ||g||^2 = 9.46503e+10
######## Timing statistics ########
total time    : 0.003495s
total time evaluation : 0.003429s  (98.1116 %)
eval_f time   : 0.00112s  ( #evals: 2 -> avg 0.00056s )
eval_grad time: 0.00231s  ( #evals: 2 -> avg 0.00115s, factor: 2.05071)
eval_hess time: 0.00000s  ( #evals: 0 -> avg nans, factor: nan)
Saving optimized spring graph to gradDescent_wl_10_101_opt_*.csv



20x20: gradDescent_wl_20_20

Initial MassSpring system energy is 2.4391e+07
Saving initial spring graph to gradDescent_wl_20_201_*.csv
******** Gradient Descent ********
iter: 1   obj = 2.4391e+07   ||g||^2 = 3.99345e+11
iter: 2   obj = 2.4391e+07   ||g||^2 = 3.99345e+11
######## Timing statistics ########
total time    : 0.011093s
total time evaluation : 0.010936s  (98.5847 %)
eval_f time   : 0.00350s  ( #evals: 2 -> avg 0.00175s )
eval_grad time: 0.00744s  ( #evals: 2 -> avg 0.00372s, factor: 2.12457)
eval_hess time: 0.00000s  ( #evals: 0 -> avg nans, factor: nan)
Saving optimized spring graph to gradDescent_wl_20_201_opt_*.csv
