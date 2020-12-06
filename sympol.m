syms x;
F=expand((x-2)*(x-3)*(x+4))
for x=2:5
E=eval([F])
end
