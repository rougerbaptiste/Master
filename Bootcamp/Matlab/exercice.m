load myvariables
baptiste = round(b * chiara + ceil(a));

t = linspace(0,20,11); % same as [0:2:20]
t = t';
u = linspace(0,20,21);

z = [-2;4;1;-5;10];
q = [3,9,0,2];
z*q % That works 
%q*z % That doen't work because the vectors do not have the same dimensions

z2 = [-2;4;1;-5];
z2*q
q*z2
% The two vector can be multiplied as matrix as they are the same length.

% rand allows to pick a random number beteween 0 and 1.

clear
load myvariables.mat weird

weird(5) = weird(1) + weird(2);
weird(6) = round(rand*10);
weird = weird*length(weird);
weird