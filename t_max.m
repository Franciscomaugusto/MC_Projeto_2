function tmax = t_max(func,max)
r_ant = romberg(func,0,0.01,max);
for T = 0.02:0.01:20
  r = romberg(func,0,T,max);
  if abs(r-r_ant)<= 10^-12
      t = T;
      break
  end
  r_ant = r;
end
tmax = t;
end