clear;
b = 1;
[X1, Y1] = ode45( @(x, y) (1 - y^2)^(1/2), [0, b], 0);
plot(X1,Y1);
hold on;
plot(X1, sin(X1));
