function  [aprox,matrix] = romberg(func, a, b, max)
format long
    matrix = zeros(max+1, max+1);
    for n = 1:max+1
        X = a:((b-a)/2^(n-1)):b;
        Y  = func(X);
        matrix(n,1) = trapz(X, Y);
    end
    for n = 2:max+1
           for z = 2:n
            matrix(n,z) = ((4^z)*matrix(n,z-1 ) - matrix(n-1,z-1))/(4^z -1);
           end
    end
    aprox = matrix(max+1, max+1);
end