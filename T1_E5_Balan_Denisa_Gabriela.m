F = 50;
t = 0:0.001:0.2;
s = 2*sin(2*pi*F*t);
subplot(1,3,1),plot(t,s),grid
t = 0:0.01:0.2;
s = 2*sin(2*pi*F*t);
subplot(1,3,2),plot(t,s),grid
t = 0:0.0002:0.2;
s = 2*sin(2*pi*F*t);
subplot(1,3,3),plot(t,s),grid,hold on
F=20;
y = 0:0.001:0.2;
c = 2*cos(2*pi*F*y);
subplot(1,3,3),plot(y,c)