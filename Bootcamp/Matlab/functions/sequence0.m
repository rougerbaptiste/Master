function out = sequence0(n)
    un = 1;
    for i=2:n
        un = sin(un)+1;
    end
    out = un;
end
