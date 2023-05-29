x0 = 1; % нижняя граница интервала
x1 = 5; % верхняя граница интервала
F = @(x) (cos(x)); % определяем функцию
DF = @(x) (-sin(x)); % определяем производную
e = 1e-5; % Погрешность
% начальные приближения
Xprev = x1;
Yo = F(Xprev);
k = 0; % счетчик итераций
while abs(Yo) > e
    Xnext = Xprev - F(Xprev)/DF(Xprev);
    Xprev = Xnext;
    Yo = F(Xnext);
    k = k + 1;
end
Xnext, k
