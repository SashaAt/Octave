clear;
b = 1.5;
#options = odeset('MaxStep',0.1);
[T, Y] = ode45( @(t,y) (y^2 + 1), [0, b], 0);

a=0;
h=0.1;
Y1 = [];
y1 = 0;
X = a:h:b;
for x = a:h:b;
   y1 = y1 + h * (y1^2 + 1);
   Y1 = [Y1 y1];
end
plot(X, Y1,'r');
hold on;
plot(T, Y,'g');
plot(T, tan(T),'*');
