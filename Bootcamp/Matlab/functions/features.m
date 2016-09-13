function features(M,n)
    disp('Number of elements : ');
    disp(numel(M));
    disp('Number of nonzero elements');
    disp(length(find(M)));
    disp('Number of elements greater than n : ');
    disp(length(M(M>n)))
end
