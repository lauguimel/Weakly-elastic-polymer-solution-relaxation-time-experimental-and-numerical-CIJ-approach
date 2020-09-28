import matplotlib
matplotlib.rcParams['text.usetex'] = True
import matplotlib.pyplot as plt
import numpy as np

plt.rcParams.update({'font.size': 18})
plt.rcParams.update({'figure.autolayout': True})

def f(x):
    return 5+0*x

x1 = np.arange(10, 1e6, 100)

exp_x,exp_y, exp_err = np.loadtxt('./Encre/9651_mVROC', delimiter=';', unpack=True)
exp_x1,exp_y1, exp_err1 = np.loadtxt('./Encre/9651_ARG2', delimiter=';', unpack=True)

fig, ax = plt.subplots()
ax.axis([10, 1e6, 1, 8])

ax.errorbar(exp_x, exp_y, yerr=0.25 , capsize=3, fmt='ob',  fillstyle='full',label='m-VROC')
ax.errorbar(exp_x1, exp_y1, yerr=0.25 , capsize=3, fmt='^r',  fillstyle='full',label='ARG2')
ax.plot(x1, f(x1), '-k')


ax.legend()
# plt.tight_layout()


ax.set_xlabel('$\dot{\gamma} \, (s^{-1}$)')
ax.set_ylabel('$\eta \, (mPa.s)$')
ax.set_xscale('log')
plt.savefig("visco.eps", dpi=300)
plt.show()