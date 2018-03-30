%�ϸѪk
clc;
clear;
x=linspace(-2,6);
f=-12-(21.*x)+18.*x.^(2)-2.75.*x.^(3);
plot(x,f),grid
fprintf('5-5(a)�ϸѪk:')
fprintf('�ϸѪk�i�����⪺�ڦb0��-1���� 2��3���� 4��5����\n')
%�G���k
xr2=0;
eps=1;      %�~�t
x1=-1;      %��l�q����xl
x2=0;       %��l�q����xu
while eps>10^-3
    xr=(x1+x2)/2;
    f1=-12-21*x1+18*x1^(2)-2.75*x1^(3);
    f2=-12-21*x2+18*x2^(2)-2.75*x2^(3);
    fr=-12-21*xr+18*xr^(2)-2.75*xr^(3);
    eps=abs((xr-xr2)/xr);
    xr2=xr;     %�W�@������
  
    if f1*fr<0 & f2*fr>0
        x2=xr;
    else
        x1=xr;
    end
end
fprintf('5-5(b)�G���k����:%f\n',xr)

%�զ�k
clear;
xr2=0;
eps=1;
    x1=-1;
    x2=0;
while eps>10^-3
    
    f1=-12-21*x1+18*x1^(2)-2.75*x1^(3);
    f2=-12-21*x2+18*x2^(2)-2.75*x2^(3);
    xr=x2-(f2*(x1-x2)/(f1-f2));
    fr=-12-21*xr+18*xr^(2)-2.75*xr^(3);
    
    eps=abs((xr-xr2)/xr);
    xr2=xr;
    
    if f1*fr<0 & f2*fr>0
        x2=xr;
    else
        x1=xr;
    end
end
fprintf('5-5(c)�զ�k����:%f',xr)

