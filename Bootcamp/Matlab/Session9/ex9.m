function dy = ex9(t,y)
    dy = zeros(3,1);

    dy(1) = 3 + 0.3 * y(1) - y(2);
    dy(2) = -1 - y(2) * y(3);
    dy(3) = -sin(y(2));
end
