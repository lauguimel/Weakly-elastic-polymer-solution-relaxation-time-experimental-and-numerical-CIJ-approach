import pandas as pd
import numpy as np
from numpy.polynomial import Polynomial as P
import matplotlib.pyplot as plt
import glob

for idx, fil in enumerate(glob.glob("tauxAccroissement/*.csv")):
    print(idx, fil)
    df = pd.read_csv(fil, sep=",")
    # Suppression des points négatifs car il y a deux interfaces (openFoam = volumes !)
    df['Points:1'] = df[df['Points:1'] > 0]['Points:1']
    df = df.loc[df['Points:2'] > (-3e-3)]
    df = df.dropna()
    print(df.nlargest(10, 'Points:0'))
    plt.figure(idx)
    x = df['Points:2'].to_numpy().flatten()
    y = df['Points:0'].to_numpy().flatten()
    plt.plot(x,y, 'o')
    plt.gca().invert_xaxis()
    # plt.axis('equal')
    plt.ylim(-1e-5, 1e-4)

    p = P.fit(x,y,100)

    xx,yy = p.linspace(1000)
    plt.plot(xx,yy, lw=2)
    plt.show()

