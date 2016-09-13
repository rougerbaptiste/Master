function out = cancel(vec,n)
    if n > length(vec)
        disp('The element to remove is out of range');
    else
        vec(n)=[];
        out = vec;
    end
end
