load somematrices.mat

D = A(3,:)+ B(:,4)';
disp(D);

%D*C;
% It doesn't work because the mattrix do not have the same dimensions

yo = magic(size(C));

yop = C*rand;

yolo = eye(4) .* rand(4,4);
disp(yolo);

%%%%%%
% Exercise 2 :
gc = xlsread('growthcurve.xlsx');

Neg = gc(1:3,:);
m_Neg = mean(Neg);
std_Neg = std(Neg);
um10 = gc(4:6,:);
m_um10 = mean(um10);
std_um10 = std(um10);
um100 = gc(7:9,:);
m_um100 = mean(um100);
std_um100 = std(um100);

save('growthcurve.mat', 'm_*', 'std_*');

%%%%%%%
% Exercise 3

colC = xlsread('loadme.xlsx','C:C');
row3 = xlsread('loadme.xlsx', 'A3:D3');

%%%%%%%
% Exercise 4

M = [1,2,3;4,5,6];
n = length(M(:,1))*length(M);
r = length(M(:,1));
c = length(M);
m = M';
ave = mean(m);
K = M .* eye(r,c);
disp('Exercice 4 :')
disp('Number of elements : ');
n
disp('Number of rows');
r
disp('Number of columns');
c
disp('Transposed matrix');
m
disp('Means of rows');
ave
disp('Pairwise product of the identity matrix');
K
