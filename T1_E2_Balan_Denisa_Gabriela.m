%vector cu distributia normala gaussiana
v = randn(1,10);
i=1;

for index = 1:1:10
 %conditia pentru afisarea elementelor negative 
if(v(index)<0)
     a(i) = v(index);
     i = i+1;
end
end
a