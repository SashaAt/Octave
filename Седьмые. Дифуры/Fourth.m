clear;
b = 5;
T1 = [0,b];
[T, X] = ode45( @(t,x) (-1/(t+1)^2 + 10*( x - 1/(t+1))), [2,b], 1);
plot(T, X);
hold on;
fplot(@(t) 1./(t+1), T1);
