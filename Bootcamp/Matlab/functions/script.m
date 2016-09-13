%%%%
% Function sq()
a = 2;
a = sq(a);
disp(a);

%%%%
% Function m2sum()
b = 3;
x = m2sum(a,b);

%%%%
% Function benice()
benice(b);

%%%%
% Function swap()
c = 10;
d = 20;
[c,d] = swap(c,d);
disp(c),disp(d);;

%%%%
% Function sequence0()
a = sequence0(10);
disp(a);

%%%%
% Function fun1()
fun1(a,b,c);

%%%%
% Function cancel()
e=[1,2,3,4,5]
e = cancel(e,2);
disp(e);

%%%%
% Function features()
matrix = magic(6);
[a,b,c] = features(matrix,5)
disp('Number of elements : ');
disp(a);
disp('Number of nonzero elements');
disp(b);
disp('Number of elements greater than n : ');
disp(c)
