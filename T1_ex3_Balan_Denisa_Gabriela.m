
t=0:0.002:0.25; %pentru rezolutia temporara de 20ms si 200ms,
%inlocuim 0.002 cu 0.02 respectiv 0.2;
%t fiind perioada

%semnalul pentru nivelul {-1 1}
%afisam pentru perioada t=0.25
%functia rectpuls returneaza semnalul aperiodic
figure(1);
for n=0:0.25
    d=rectpuls(t-n, 0.25);
    plot(t, d), grid;
    axis([0 0.25 -1 1]);
end

%semnalul pentru nivelul {-3 -1 1 3}
%afisam pentru perioada t=0.25
%functia rectpuls returneaza semnalul aperiodic
figure(2);
for n=0:0.25
    d=rectpuls(t-n, 0.25);
    plot(t, d), grid;
    axis([0 0.25 -3 3]);
end

%semnalul pentru nivelul {-5 -3 -1 1 3 5}
%afisam pentru perioada t=0.25
%functia rectpuls returneaza semnalul aperiodic
figure(3);
for n=0:0.25
    axis([0 .025 -5 5]);
    d=rectpuls(t-n, 0.25);
    plot(t, d), grid;
end

%semnalul pentru nivelul {-7 -5 -3 -1 1 3 5 7}
%afisam pentru perioada t=0.25
%functia rectpuls returneaza semnalul aperiodic
figure(4);
for n=0:0.25
    axis([0 0.25 -7 7]);
    d=rectpuls(t-n, 025);
    plot(t, d), grid;
end




 
