
x=1
p=0.5
teta=5
alpha=4
a=3
b=2
m=1
min_x=0.1
max_x=14
n=50
P_NTLKwIEx(x, teta, alpha, a, b, m)
C_NTLKwIEx(x, teta, alpha, a, b, m)
Q_NTLKwIEx(p, teta, alpha, a, b, m)
Plot_CNTLKwIEx(teta, alpha, a, b, m, min_x, max_x)
Plot_PNTLKwIEx(teta, alpha, a, b, m, min_x, max_x)
R_NTLKwIEx(n, teta, alpha, a, b, m)
E_NTLKwIEx(R_NTLKwIEx(n, teta, alpha, a, b, m))
Sim_NTLKwIEx(R_NTLKwIEx(n, teta, alpha, a, b, m))
