%4.11
clc;
cosx=0;
count=0;
x=pi/4;
n=2;
m=0;
Es=0.5*10^(2-n);
Ea=Es+1;


while abs(Ea)>Es
    count;
    cosxp=cosx;
    a=(-1)^(m/2)*x^(m)/factorial(m);
    cosx=cosx+a;
    m=m+2;
    Ea=(cosx-cosxp)*100/cosx;
    Et=(cos(pi/4)-cosx)/cos(pi/4);
    count=count+1;
    cosx;
    fprintf('跑了%d次  ',count)
    fprintf('cosx=%f  ',cosx)
    fprintf('真實誤差的絕對值為%f%%  ',abs(Et))
    if count>1
        fprintf('近似誤差的絕對值為%f%%',abs(Ea))
    end
    fprintf('\n')
end
fprintf('因此在加總4項之後,近似的誤差小於Es=0.5%,所以這個計算終止\n')

