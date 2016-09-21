% %  ode45(@function, t, y0)
% 
% [x,y] = ode45(@test1, [0 100],1);
% 
% plot(x,y)
% 
% [x,y]= ode15s(@testt, [0 20], 35);
% plot(x,y) %  beurk... don't like 35
% 

[x,y] = ode45(@ex1 , [0 100], 10);

subplot(3,2,1)
plot(x,y)

[x2,y2] = ode45(@ex2 , [0 100], 10);

subplot(3,2,2)
plot(x2,y2)

[x3,y3] = ode45(@ex3 , [0 100], 10);

subplot(3,2,3)
plot(x3,y3)

[x4,y4] = ode45(@ex4 , [0 100], 10);

subplot(3,2,4)
plot(x4,y4)

[x5,y5] = ode45(@ex5 , [0 100], 10);

subplot(3,2,5)
plot(x5,y5)

[x6,y6] = ode45(@ex6 , [0 100], 10);

subplot(3,2,6)
plot(x6,y6)