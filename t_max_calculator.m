%Script para o exercicio 6, na qual se procura obter todos os valores de
%tmax
function tmaxs = t_max_calculator()
n = 1;
tmaxs = 0.1:0.1:2;
inte = 0.1:0.1:2;
X = 0.1:0.1:2;
for sigs = 0.1:0.1:2
    tmaxs(n) = t_max(@(x)tempo_alt(sigs, x), 15);
    inte(n) = romberg(@(x)tempo_alt(sigs, x), 0, tmaxs(n), 15);
    n = n +1;
end
plot(X, inte, '-o');
grid on
end

