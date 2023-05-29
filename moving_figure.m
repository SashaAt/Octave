clear

t = 0:0.005:2*pi;
L = 1;
side_length = 0.5;
angle = 60;
boarders = L * 2;
x = cos(t);
y = sin(t);

set(gcf,'color','white','menubar','none', 'numbertitle','off', 'name', 'Motion')

figure(1, 'Position', [600 300 700 500]);
hold on

xx = [x(1)+ L/2 x(1)+side_length*cosd(angle)+ L/2 x(1)+side_length*cosd(angle+60)+ L/2 x(1)+ L/2];
yy = [y(1) side_length*sind(angle) side_length*sind(angle+60) y(1)];
tr = plot(xx, yy, 'b');

rect = rectangle('Position',[x(1) y(1) L L]);

stop = uicontrol('style','toggle','string','stop', 'background', [1 0 0]);

grid on
axis([-boarders+1 boarders -boarders+1 boarders])

ii = 1;
vect_y = 1;
dy = 0;

while ~get(stop,'value')
    dx = L / 2 + x(ii);
    if (dy > L - side_length)
      vect_y = -1;
    endif
    if (dy < L - side_length * 2)
      vect_y = 1;
    endif
    dy = dy + 0.001 * vect_y;
    set(tr, 'xdata', [dx side_length*cosd(angle) + dx side_length*cosd(angle+60) + dx dx],...
    'ydata', [y(ii) + dy y(ii)+side_length*sind(angle) + dy y(ii)+side_length*sind(angle+60) + dy y(ii) + dy]);
    set(rect,'Position', [x(ii) y(ii) L L]);
    pause(0.001)
    ii = ii+1;
    if (ii > size(t))
      ii = 1;
    endif
end

