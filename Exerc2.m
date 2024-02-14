%Script Exerc2 - usa um loop para registar os valores de P(m) consoante os
%diferentes valores de m 0<m<2, de 0.1 em 0.1. No fim cria um gráfico que
%relaciona os valores de m com P(m)
P = 0:0.1:2;
n = 1;
for m = 0:0.1:2
  P(n) = romberg(@(x)tempo(1,x), 0, m, 5);
  n = n +1;
end

X = 0:0.1:2;

plot(X, P, '-o');
grid on

legend('P(m)','Location', 'SE');