%6-4�ϸѪk
clc;
clear;
x=linspace(-1,10);
f=8.*sin(x).*exp(-x)-1;
plot(x,f),grid
fprintf('6-4(a)�ϸѪk\n')
fprintf('�ϸѪk�i�����⪺�ڦb2���k�P0��1����\n')

%6-4���y-�ԤҪk
fprintf('\n6-4(b)���y-�ԤҪk\n')
clear;
i=0;
x1=0.3;     %��xi��
x2=0;       %��xi+1��
while i<3
    f=8*sin(x1)*exp(-x1)-1;
    df=8*(cos(x1)*exp(-x1)+sin(x1)*(-exp(-x1)));        %f���L��
    x2=x1-((f)/(df));
    x1=x2;
    i=i+1;
    fprintf('��%d�����N\t',i)
    fprintf('x%d:%-10f\n',i,x1)
end

clear;
%6-4���Ϊk
fprintf('\n6-4(c)���Ϊk\n')
i=0;
x1=0.5;     %��xi-1��
x2=0.4;     %��xi��
x3=0.4;     %��xi+1��
while i<3
    f1=8*sin(x1)*exp(-x1)-1;
    f2=8*sin(x2)*exp(-x2)-1;
    x3=x2-(f2*(x1-x2))/(f1-f2);
    x1=x2;
    x2=x3;
    i=i+1;
    fprintf('��%d�����N\t',i)
    fprintf('x%d:%-10f\n',i,x2)
end



%6-4�ק諸���Ϊk
clear;
fprintf('\n6-4(d)�ק諸���Ϊk\n')
i=0;
x1=0.3;     %��xi��
x2=0.3;     %��xi+1��
d=0.01;     %�Z�ʤ���
while i<5
    f1=8*sin(x1)*exp(-x1)-1;
    fd=8*sin(x1+d*x1)*exp(-(x1+d*x1))-1;
    x2=x1-(f1*(d*x1))/(fd-f1);
    x1=x2;
    i=i+1;
    fprintf('��%d�����N\t',i)
    fprintf('x%d:%-10f\n',i,x2)
end


