function [a,b,c] = features(M,n)
    a= numel(M);
    b= length(find(M));
    c = length(M(M>n));
end
