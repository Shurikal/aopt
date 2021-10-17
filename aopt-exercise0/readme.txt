# General

The first challenge was to compile the files.


# Implementing objective functions

2D -> no problem
      csv and screenshot in folder generated/
      -> plot2Dconvex.png
      -> points2Dconvex.csv from [-1,-1] to [1,1] with 20x20 points

ND -> Apparently there is a difference between
      double f = 0.5 * _x.transpose().eval() * A_ * _x + b_.dot(_x) + c_ ;
      and
      double f = 0.5 * (_x.transpose().eval() * A_ * _x + b_.dot(_x) + c_ );


Non-Convex -> no idea how to square in c++ so we had to look this up.
      csv and screenshot in folder generated/
      -> plot2Dnonconvex.png
      -> points2Dnonconvex.csv from [-1,-1] to [1,1] with 20x20 points

# Grid Search

2D -> wasn't a big problem, just two nested for loops

ND -> this was a bit trickier, due to n-dimensions used a recursive approach.
      We're both not c++ programmers, so maybe there is a better, more efficient way to program this, but it works perfectly.