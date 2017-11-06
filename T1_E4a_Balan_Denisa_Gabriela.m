%reprezentare functia stem pentru vectorul z, subpunct a)
z=zeros(1,21);
z(6)=1;
n=0:20;
m=-5:15;
figure(1);
%minifereastra 1, corespunzatoare n
subplot(1,2,1),stem(n,z)
%minifereastra 2, corespunzatoare m
subplot(1,2,2),stem(m,z)