clc
x0=input('xo: ');
d=input('delta: ');
x1=x0;
f=@(x) x^2+2*x+1; 
f1=f(x1);
x2=x1+d;
f2=f(x2);
if f1<f2
    d=-d;
    x2=x1+d;
    f2=f(x2);
end
    while f1>f2
        x1=x2;
        x2=x1+d;
        f1=f2;
        f2=f(x2);
    end
    x1=x1-d;
    if x1>x2
        aux=x1;
        x1=x2;
        x2=aux;
    end
    fprintf('[%g.%g]\n',x1,x2);
    
