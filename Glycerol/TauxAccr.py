import matplotlib
matplotlib.rcParams['text.usetex'] = True
import matplotlib.pyplot as plt
import numpy as np

plt.rcParams.update({'font.size': 18})

fig = plt.figure()
ax1 = fig.add_subplot(111)
ax2 = ax1.twiny()

def f(x):
    return -1.741*np.log(x)+10.57

def g(x):
    return -2.182*np.log(x)+18.38

def h(x):
    return np.power(x/36.4, 1/0.792)


x1 = np.arange(30, 880, 1)
x2 = np.arange(1, 60, 0.1)


exp_x,exp_y = np.loadtxt('./Glycerol/BCTI_lb_mbar.csv', delimiter=';', unpack=True)
num_x,num_y = np.loadtxt('./Glycerol/OF_glycerol_lb_mbar.csv', delimiter=';', unpack=True)

ax2.set_xlim([h(30),h(880)])
# plt.subplot(211)
ax1.plot(x1, g(x1), 'k', label='Best Fit') 
ax1.plot(num_x, num_y, 'or', label='$\mathcal{L}_{num}^b$') 
ax1.plot(exp_x, exp_y, 'ob', label='$\mathcal{L}_{exp}^b$')
# ax2.plot(x2, f(x2), 'k', label='Best Fit') 
ax1.legend()
ax1.set_xlabel('P ($mbar$)')
ax2.set_xlabel('$V$')
ax1.set_ylabel('Breakup length ($mm$)')

# https://stackoverflow.com/a/6776578/4340559
plt.tight_layout()

plt.savefig("LbGlycerol.eps", dpi=300)
plt.show()
