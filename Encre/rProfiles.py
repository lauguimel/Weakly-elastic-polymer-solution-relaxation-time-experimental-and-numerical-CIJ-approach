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

r1,r2,r3,r4 = np.loadtxt('./Encre/tau0_profile_15.txt', delimiter='\t',skiprows=1, unpack=True)
s1,s2,s3,s4 = np.loadtxt('./Encre/tau05_profile_15.txt', delimiter='\t',skiprows=1, unpack=True)
t1,t2,t3,t4 = np.loadtxt('./Encre/tau1_profile_15.txt', delimiter='\t',skiprows=1, unpack=True)

plt.plot(r3, r4, '-b', label='$Newtonian$')
plt.plot(s3, s4, '--r', label='$\\tau_e=0.5 \mu s$')
plt.plot(t3, t4, '-.g', label='$\\tau_e=1 \mu s$')

plt.legend()

plt.xlabel('Dimensionless radius $\\frac{r}{R}$')
plt.ylabel('Dimensionless velocity $\\frac{v_z}{v_{max}}$')
plt.savefig("rProfilesInk.eps", dpi=300)
plt.show()
