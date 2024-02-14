format long
resultado_integral = quad(@(t) (2 * exp(-t.^2)) / sqrt(pi), 0,1);


fprintf('O valor da integral é: %.15f\n', resultado_integral);

a = 0;
m = 1;
max = 5;

[approx, matrix] = romberg(@(x)tempo(1,x), a, m, 5);;

fprintf('\nCalculando I - (T_n)^k para n e k até 5:\n');


matrixErro = zeros(max+1, max+1);

for n = 1:max+1
    for z = 1:max+1
        result = resultado_integral - matrix(n,z);
        matrixErro(n, z) = result;
    end
end


disp('Matriz dos resultados:');
disp(matrixErro);


