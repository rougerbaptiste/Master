%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%  W  A  R  N  I  N  G  %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1) THESE ARE NOT NECESSARILY THE ONLY SOLUTIONS. If you did the script
% somewhat else, and it works fine, it's fine by me. I'm sure my solution
% is not necessarily the optimal one.
% 2) This script only puts together the functions, therefore IT DOES NOT
% WORK AS IT IS. If you want to test one of these functions (and I hope you
% do), you need to copy/paste it in a new script, and save it with its
% filename, otherwise it won't work.

%%% Write a matlab function sq that takes one number and returns its square.
function x2 = sq(x)
x2=x^2;
end

%%% Ex2: Write a matlab function m2sum that takes two numbers and returns their sum.
function y= m2sum(a,b)
y=a+b;
end

%%% Ex3: Write a matlab function benice that takes one integer n and plots n times “hello”.
function benice(n)
for i=1:n
    disp('hello')
end
end

%%% Ex4: Write a function “swap” to swap two variables.
function [x,y] = swap(x,y)
c=x;
x=y;
y=c;
end

%%% Ex5: Write a matlab function sequence0 that takes an integer n and returns 
% the nth element of the sequence (un) defined by: u0 = 1, un+1 = sin(un) + 1

function y= sequence0
n=input('n= ');
un=1;
for i=1:n
   un(i+1)=sin(un(i));
end
y=un(n);
end

%%% Ex6: Write a matlab function pra1 that takes three numbers and returns
%%% the "middle" one.
function y=fun1(a,b,c)
if a<b && a<c
    if b<c
        y=b;
    elseif c<b
        y=c;
    end
elseif b<a && b<c
    if a<c
        y=a;
    elseif c<a
        y=c;
    end
elseif c<a && c<b
    if a<b
        y=a;
    elseif b<a
        y=b;
    end
else
   y= NaN;
end
end

%%%% Ex7: write a function that cancels the element indexed as n from a
%%%% vector.
function v=canceln(v,n)
v(n)=[];
end

%%% Ex8: Write a function “features” that, given a matrix M, gives as an 
%%% output: the number of elements of M, the number of nonzero elements of 
%%% M, the number of elements greater than a given value n (doc: numel, find)
function [elem,nonzero,greaterthan]=features(M,n)
elem=numel(M);
nonzero=numel(find(M));
greaterthan=numel(find(M>n));
end