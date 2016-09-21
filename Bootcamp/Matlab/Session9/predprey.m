function dy = predprey(t,y)
    dy = zeros(2,1);
    ka = 0.005;
    kb = 0.02;
    kc = 100;
    kd = 0.004;
    dy(1) = ka * y(1) - kb * y(1) * y(2);
    dy(2) = kc * y(1) * y(2) - kd * y(2);
end
