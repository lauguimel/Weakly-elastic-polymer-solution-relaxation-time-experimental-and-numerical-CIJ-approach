import matplotlib
matplotlib.rcParams['text.usetex'] = True
import matplotlib.pyplot as plt
import numpy as np

plt.rcParams.update({'font.size': 18})
plt.rcParams.update({'figure.autolayout': True})

fig = plt.figure()


def f(x):
    return 0.2*x+2.7



x1 = np.arange(0, 1, 0.01)


exp_x,exp_y = np.loadtxt('./Encre/DP_tau.txt', delimiter=';', unpack=True)

plt.plot(x1, f(x1), '-k')
plt.plot(exp_x, exp_y, 'ob')

# plt.tight_layout()

plt.xlabel('$\\tau_e (\mu s)$')
plt.ylabel('$P_{tank}$(bar)')
plt.grid(True)
plt.savefig("dP.eps", dpi=300)
plt.show()
