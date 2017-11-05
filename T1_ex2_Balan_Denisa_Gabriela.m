t=0:000.2:5;%perioada de 5 secunde, cu rezolutia temporara de 2ms
%pentru 20ms respectiv 200ms, inlocuim cu 0.02, respectiv 0.2
slope=1; %slope=panta=1 => 1=amplitudine/5=> ca amplitudinea este egala cu 5 V
r=5*sawtooth(2*pi*t); %semnalul propriu zis
plot(t,r);grid
axis([0 5 -2 1]); %peroada este pe axa x 0 la 5s
%nivelurile pe axa y, respectiv minim -2, maxim cu 1
