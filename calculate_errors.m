%Function calculate errors - calcula o erro da aproximação de romberg para
% a integral da função tempo_alt quando o extremo superior é igual ao valor
% obtido pela função t_max
function erros = calculate_errors()
    t_maxs = t_max_calculator;

    real_values = 0.1:0.1:2;
    approximations = 0.1:0.1:2;
    n = 1;
    for sig = 0.1:0.1:2
        value = -((exp((-(t_maxs(n))^2)*sig))/(sqrt(pi)*sqrt(sig))) + (exp(0)/(sqrt(pi)*sqrt(sig)));
        real_values(n) = value;
        approximations(n) = romberg(@(x) tempo_alt(sig, x), 0, t_maxs(n), 15);
        n = n +1;
    end

    difs = approximations - real_values;
    erros = abs(difs);
end