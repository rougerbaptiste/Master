v=[0 1 2 4 6 16 64]
plot(v)
x=[0:30:200]
plot(x,v)

y=[1:7]

plot(x,v)
hold on
plot(x,y)
hold off
close all;

plot(x,v,'r--x','LineWidth',3);
t=0:0.1*pi:2*pi
plot (t, cos(t), "-;cos(t);", t, sin(t), "-b;sin(t);");

x=[1 2 3 ; 4 5 6]
y=[7 8 9 ; 10 11 12]

plot(x,y);
