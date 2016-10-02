tSpan = [0 100];

% [t, x] = ode45(@ex1, tSpan, 0);

% plot(t, x);

% pause;

[t2, x2] = ode45(@ex4, tSpan, 5);

plot(t2, x2);

pause;
