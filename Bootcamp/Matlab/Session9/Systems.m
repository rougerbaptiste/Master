% [t,y] = ode45(@predprey,[0 100],[100 1]);

[t,y] = ode45(@ex7, [0 1], [1 10]);

subplot(3,1,1);
plot(t,y);

[t2,y2] = ode45(@ex8, [0 100], [1 1 1]);

subplot(3,1,2);
plot(t2,y2);

[t3,y3] = ode45(@ex9, [0 10], [1 1 1]);

subplot(3,1,3);
plot(t3,y3);
