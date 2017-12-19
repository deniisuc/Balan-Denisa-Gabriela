%Numar de ordine:1
%Semnal dreptunghiular
%Perioada P = 40 s
%Durata semnalelor D = 1
%Numar de coeficienti = 50

P = 40; 
D = 1; 
N = 50;
w0 = 2*pi/P; %pulsatia unghiulara a semnalului
t_tr = 0:0.02:D; %esantionarea semnalului original
x_tr = (1-D)*square(pi*t_tr,D*100)-D; %semnalul dreptunghiular original
t = 0:0.02:P; %esantionarea semnalului modificat
x = zeros(1,length(t)); %initializare a semnalului modificat cu valori nule
x(t<=D) = x_tr; %valorile nule se modifica cu valori din semnalul original, t<=D
                
figure(1);
%afisare x(t)
plot(t,x),title('x(t)(linie solida) si reconstructia folosind N coeficienti (linie punctata)'); 
hold on;

%k este variabila dupa care se realizeaza suma
for k = -N:N 
    x_t = x_tr; %x_t e semnalul realizat dupa formula SF data
    x_t = x_t .* exp(-1i*k*w0*t_tr); %inmultire intre doua matrice element cu element
    X(k+N+1) = 0; %initialzat nul
    for i = 1:length(t_tr)-1
        X(k+N+1) = X(k+N+1) + (t_tr(i+1)-t_tr(i)) * (x_t(i)+x_t(i+1))/2; %reconstructia cu coeficientii
    end
end

for i = 1:length(t) %i este variabila dupa care se realizeaza suma
    x_finit(i) = 0; %initializat nul
    for k=-N:N
        x_finit(i) = x_finit(i) + (1/P) * X(k+51) * exp(1i*k*w0*t(i));  %reconstructia cu coeficientii
    end
end
plot(t,x_finit,'--'); %afisare reconstructie semnal folosind cei N coeficienti

figure(2);
w=-50*w0:w0:50*w0; %w este vectorul ce ne va permite afisarea spectrului functiei
stem(w/(2*pi),abs(X)),title('Spectrul lui x(t)'); %afisarea spectrului

%Observam ca semnalul reconstruit foloseste un numar finit de termeni N=50,
%se apropie de semnalul original,este o aproximat printr-o suma infinita de
%sinusuri si cosinusuri cu diferite frecvente si coeficienti depinzand de
%paritate si aceste se apropie de semnalul original cu o marja de eroare
%datorata aproximarii. Aceste variatii au caracter sinusoidal.

