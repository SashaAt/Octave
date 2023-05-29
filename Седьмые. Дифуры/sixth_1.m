clear

b = 10;

# teta' = x
# x' = - sin(teta)

m = @(x, y)([y(2); -sin(y(1))]);  #свел уравнение к системе

[t, y] = ode45(m, [0, b], [0, 1]);

plot(t, y(:, 1));
