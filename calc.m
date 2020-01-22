clear 
close all



% FENE-P
eta_s = 4.27;
eta_p = 0.43;
L = 1;
lbd = 0.0001;

##eta_s = 0.012;
##eta_p = 0.378;
##L = 2;
##lbd = 2;


gammaP = 1:1:1e6;

delta1 = 1 + sqrt(1+((2*L^6)./(27*(lbd^2).*(gammaP.^2).*(L^2-3)^2)));
delta2 = 1 - sqrt(1+((2*L^6)./(27*(lbd^2).*(gammaP.^2).*(L^2-3)^2)));


FeneP = eta_s + (eta_p*((L^6)./(4*(lbd^2)*(gammaP.^2)*((L^2)-3)^2)).^(1/3)).*(cbrt(delta1)+cbrt(delta2));

% Cross model parameters
eta_inf = 1;
eta_0 = eta_s+eta_p;
n = 0.72;
tau = 2e-7;

Cross = eta_inf + (eta_0-eta_inf)./((1+tau*gammaP).^n);

semilogx(gammaP, Cross(gammaP))
hold on 
semilogx(gammaP, FeneP, '-r')
axis([1,1e6, 2, 8])
##loglog(gammaP, FeneP, '-r')
##axis([0.1,1e3, 1e-2, 1e3])

##omegaP = 1e-2:1e-2:1e2;
omegaP = 1:1:1e6;
Gprime  = ((eta_p*lbd*(omegaP.^2)*(L^2-3))/L^2)./((1+lbd^2*(omegaP.^2)*(L^2-3)^2)/L^4);

figure
loglog(omegaP, Gprime)
##axis([0.1,1e2, 1e-2, 1e1])
