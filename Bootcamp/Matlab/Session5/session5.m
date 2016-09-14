M = rand(4,7,3);
m = eye(4,7);

vec = [sum(M( find(M(:,:,1).*m ))),sum(M( find(M(:,:,1).*m ))),sum(M( find(M(:,:,1).*m )))];

Mv = cat(1,M(:,:,1),M(:,:,2),M(:,:,3));
Mh = cat(2,M(:,:,1),M(:,:,2),M(:,:,3));

a1 = rand(3,3);
b1 = rand(2,4);
[c1,c2,c3] = fun2(a1, b1);
disp('C1');
disp(c1);
disp('C2');
disp(c2);
disp('C3');
disp(c3);

a2 = rand(5,4);
b2 = substractme(a2);
disp('A2');
disp(a2);
disp('B2');
disp(b2);

disp('Stack');
a3 = rand(5,4);
b3 = stackme(a3);
disp(b3);

a4 = rand(3,4,3);
b4 = bottom(a4);
disp('B4');
disp(b4);

disp('Coin')
a5 = coin();
disp(a5);

disp('Fake coin')
a6 = fakecoin();
disp(a6);


disp('Stats')
[a7,b7] = coinstats(10000);
disp(a7);
disp(b7);

disp('Easy')
a8 = easy(5);
disp(a8);

disp('Monster')
a9 = monster('Try');
disp(a9);
% No we can't because we cannot concatenate matrices wich do not have the same size.
% Yes we can because strings are just arrays of letters.
