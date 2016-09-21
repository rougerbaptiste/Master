function dy = ex8(t,y)
    dy = zeros(3,1);
    r = 0.3;
    m = 0.1;

    dy(1) = r * sin(t) * y(1) + m * y(1) * y(2) - m * y(1) * y(3);
    dy(2) = r * cos(t) * y(2) + m * y(2) * y(3) - m * y(2) * y(1);
    dy(3) = r * sin(t/2) * y(3) + m * y(3) * y(1) - m * y(3) * y(2);
end
