clear;
b = 3;
#options = odeset('MaxStep',0.1);
[X1, Y1] = ode45( @(t,y) y^(1/3), [0, b], 0 + eps);
[X2, Y2] = ode45( @(t,y) y^(1/3), [0, b], 0);
plot(X1, Y1);
hold on;
plot(X2, Y2);
