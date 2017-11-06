%reprezentare stem pentru c)
n=-15:25;
x1=sin((pi*n)/17);
subplot(2,2,1),plot(n,x1),grid
subplot(2,2,2),stem(n,x1),grid
m=0:20;
x2=cos((pi*m)/sqrt(23));
subplot(2,2,3),plot(m,x2),grid
subplot(2,2,4),stem(m,x2),grid