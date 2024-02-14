%Script Exerc5 - usa um loop para registar os valores de P(m) consoante os
%diferentes valores de m 0<m<2, para sigma = 1, 2 e 3, de 0.1 em 0.1. No fim cria um gráfico que
%relaciona os valores de m com P(m) para cada conjunto de dados, permitindo ver a influência de sigma no valor de P 
P1 = 0:0.1:2;
P2 = 0:0.1:2;
P3 = 0:0.1:2;
n = 1;
for m = 0:0.1:2
  P1(n) = romberg(@(x)tempo(1,x), 0, m, 5);
  P2(n) = romberg(@(x)tempo(2,x), 0, m, 5);
  P3(n) = romberg(@(x)tempo(3,x), 0, m, 5);
  n = n +1;
end

X = 0:0.1:2;

plot(X, P1, '-o');
hold on
plot(X, P2, '-*');
plot(X, P3, '-s');
hold off
grid on

legend('Sigma = 1', 'Sigma = 2', 'Sigma = 3', 'Location', 'SE')