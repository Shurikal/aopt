import numpy as np
%matplotlib
import matplotlib.pyplot as plt

xx, yy = np.meshgrid(np.linspace(-3, 3, num=101),
                     np.linspace(-3, 3, num=101))


def f(x, y):
    return x*x+2*y*y

def f1(x,y):

x = np.linspace(-6, 6, 30)
y = np.linspace(-6, 6, 30)

X, Y = np.meshgrid(x, y)
Z1 = f(X, Y)

fig = plt.figure()
ax = plt.axes(projection='3d')
ax.contour3D(X, Y, Z1, 50,cmap="bwr")
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z');