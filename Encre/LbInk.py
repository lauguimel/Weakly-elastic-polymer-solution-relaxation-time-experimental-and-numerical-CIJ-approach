import matplotlib
matplotlib.rcParams['text.usetex'] = True
import matplotlib.pyplot as plt
import numpy as np
from scipy import interpolate
import scipy.optimize as opt

plt.rcParams.update({'font.size': 18})
plt.rcParams.update({'figure.autolayout': True})

# This is the function we are trying to fit to the data.
def func(x, a, b, c):
     return a * np.exp(-b * x) + c


fig = plt.figure()

r1,r2,r3,r4,r5,r6,r7 = np.loadtxt('./Encre/LB_9651_GS_k.csv', delimiter=',',skiprows=2, unpack=True)

# # Spline
# tck,u     = interpolate.splprep( [r6,r4] ,s = 0 )
# xnew,ynew = interpolate.splev( np.linspace( 0, 1, 62 ), tck,der = 0)

# The actual curve fitting happens here
optimizedParameters, pcov = opt.curve_fit(func, r6, r4)



# plt.plot( xnew ,ynew, '-k')

# plt.semilogx(r6, func(r6, *optimizedParameters), '-k')
plt.semilogx(np.linspace(15,15,50),np.linspace(2,10,50), '--k')
plt.semilogx(r6, r4, 'ob', label='$\mathcal{L}_{exp}^b$')

plt.legend()

plt.xlabel('Disturbance amplitude ($V$)')
plt.ylabel('Breakup length ($mm$)')
plt.savefig("LbInk_logLin.eps", dpi=300)
plt.show()
