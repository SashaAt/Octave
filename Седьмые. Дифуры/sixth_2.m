clear

b = 10;
v = 0.5;

# teta' = x
# x' = -v*x - sin(teta)
# (teta, x)

m = @(x, y)([y(2); - y(2).*v - sin(y(1))]);  #свел уравнение к системе

[t, y] = ode45(m, [0, b], [0, 1]);

plot(t, y(:, 1));
