duty=0.25;
%factorul de umplere definit 1/4
t=0:0.002:2;
%pentru rezolutia temporara de 20ms si 200ms, inlocuim 0.002 cu 0.02 respectiv 0.2; t fiind perioada
d=(1-duty)*square(2*pi*t, duty*100)-duty;
%semnalul propriu zis
plot(t,d),grid; 
axis([0 2 -1 0.5]);
%axa x este reprezentata de perioada in secunde (2 s)
%axa y reprezinta nivelurile semnalului
%nivel minim -1 si maxim 0.5
