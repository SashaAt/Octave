clear;
hold on;

function dydt = vpd(t,y)
  dydt = [y(2); ((1-y(1)^2)*y(2)-y(1))/10];

[t, y] = ode23s(@vpd(t, y), [0 1], [2 0]);
plot(t,y(:,1),'-o')
