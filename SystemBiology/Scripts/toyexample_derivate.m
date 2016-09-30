function dMdt = toyexample_derivate(t,m)
    
    k1 = 0.1;
    k2 = 0.2;
    dMdt = k1 - k2 * m;

end
