T=3;%perioada semnalului neredresat
t=0:0.002:T %%perioada de 5 secunde, cu rezolutia temporara de 2ms
%pentru 20ms respectiv 200ms, inlocuim cu 0.02, respectiv 0.2
a=0.8; %amplitudinea semnalului 
s=a*sin(2*pi*t*1/T); %functia pentru semnalul dorit, semnal sinusoidal
s(s<0) = 0; %redresarea monoalternanta
plot(t,s);

