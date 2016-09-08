% a comment
d=3+5;
for i=1:5
    d=d+1;
end

c = 4 ;
f = d-c;

% we can use clear to delete all or some variables.
% we can use load(pack_of_variables.mat, var) to only load var.
% to get acces to the documentation of a function, we use doc ...

v = [1,5,2,8,6,0.8147];
disp(mean(v))
disp(std(v));

load myvariables;

A = z2 * q;
A(5,:) = [1,2,3,4];
disp(A);
disp(size(A));

B= sum(A,2);
disp(B);

c = zeros(5,4); % creates a matrix with 5 rows and 4 columns full of 0
disp(c);

d = eye(3,5); % creates a matrix with 3 rows and 5 columns with 1s on the diagonal.
disp(d);

e = eye(3,3)*2; % creates a matrix 3*3 with 2 instead of 1s in the diagonal.
disp(e);

f = magic(4); % creates a square matrix 4*4  with random number.
disp(f);

% we can write rand(3,5) to get a matrix full of random numbers.

A=magic(6);
disp(A);
disp(A(1:2,1:2));
disp(A(3:5,:));

% we can concatenate matrix using [ m ; n] (row on row) and with ',' for columns.
A=[1,3,5;2,4,6];
B=[A(:,1),A(:,3)];
disp(B);
