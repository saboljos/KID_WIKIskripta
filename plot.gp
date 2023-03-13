set terminal pdfcairo
set output "plot.pdf"

beta = 0.007
lambda = 0.1
Lambda = 1E-4
rho1 = 0.0007 # 0,1 $
rho2 = -0.0007 # -0,1 $

s0_1 = rho1*lambda/(beta-rho1)
s1_1 = -(beta-rho1)/Lambda

s0_2 = rho2*lambda/(beta-rho2)
s1_2 = -(beta-rho2)/Lambda

A0_1 = beta/(beta-rho1)
A1_1 = -rho1/(beta-rho1)

A0_2 = beta/(beta-rho2)
A1_2 = -rho2/(beta-rho2)

f1(x) = A0_1 * exp(s0_1 * x) + A1_1 * exp(s1_1 *x)
f2(x) = A0_2 * exp(s0_2 * x) + A1_2 * exp(s1_2 *x)

set xrange [0:100]
plot f1(x) t "rho = 0,1 $", f2(x) t "rho = -0,1 $"

set xrange [0:0.2]
replot
