import matplotlib
matplotlib.rcParams['text.usetex'] = True
import matplotlib.pyplot as plt
import numpy as np

plt.rcParams.update({'font.size': 18})

def f(x):
    return np.sqrt(0.5*(np.power(x,2) - np.power(x,4)) + (9 / 4) * 0.04* np.power(x,4)) -1.5 * 0.2*np.power(x,2)

x1 = np.arange(0.0, 1.0, 0.001)

x2 = np.array([[0.400792079207921	,	0.203804347826087],
[0.499405940594059	,	0.223731884057971],
[0.600396039603961	,	0.241847826086956],
[0.70019801980198	,	0.231884057971014],
[0.8	,	0.193840579710145],
[0.89980198019802	,	0.111413043478261]])

plt.figure()
# plt.subplot(211)
rayleigh,  = plt.plot(x1, f(x1), 'k', label='Linear theory') 
of, =plt.plot(x2[:,0], x2[:,1], 'ob', label='interFoam')
plt.legend(handles=[rayleigh, of])
plt.xlabel('$x$')
plt.ylabel('$\gamma\displaystyle \\tau_c $')
plt.savefig("dispersion.eps", dpi=300)
plt.show()