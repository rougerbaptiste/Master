%  ode45(@function, t, y0)

[x,y] = ode45(@test1, [0 100],1);

plot(x,y)

[x,y]= ode15s(@testt, [0 20], 35);
plot(x,y) %  beurk... don't like 35
