%met dihotomic ep < d
pas_acc
EPS=input('EPS: ');
D=input('delta: ');
while(EPS<D)
    EPS=input('EPS: ');
    D=input('delta: ');
end
x_m=x1;
x_M=x2;
f2=f(x_M);
f1=f(x_m);
L_0=x_M-x_m;

while (L_0 > EPS)
    x1=x_m+L_0/2-D/2;
    x2=x_m+L_0/2+D/2;
    f1=f(x1);
    f2=f(x2);
    if(f1<f2)
        x_M=x2;
    else
        x_m=x1;
    end
    L_0=x_M-x_m;
end
fprintf('Minim: %g \n',(x_M+x_m)/2);