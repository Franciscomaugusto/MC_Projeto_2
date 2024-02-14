function density = tempo_alt(sig,t)
format long
    if t <= 0
        density = 0;
    end
    density = (((2*sqrt(sig))/sqrt(pi))*exp(-sig.*(t.^2))).*t;
end