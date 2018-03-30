%圖解法
clc;
clear;
x=linspace(-2,6);
f=-12-(21.*x)+18.*x.^(2)-2.75.*x.^(3);
plot(x,f),grid
fprintf('5-5(a)圖解法:')
fprintf('圖解法可知有兩的根在0到-1之間 2到3之間 4到5之間\n')
%二分法
xr2=0;
eps=1;      %誤差
x1=-1;      %初始猜測值xl
x2=0;       %初始猜測值xu
while eps>10^-3
    xr=(x1+x2)/2;
    f1=-12-21*x1+18*x1^(2)-2.75*x1^(3);
    f2=-12-21*x2+18*x2^(2)-2.75*x2^(3);
    fr=-12-21*xr+18*xr^(2)-2.75*xr^(3);
    eps=abs((xr-xr2)/xr);
    xr2=xr;     %上一次的值
  
    if f1*fr<0 & f2*fr>0
        x2=xr;
    else
        x1=xr;
    end
end
fprintf('5-5(b)二分法之根:%f\n',xr)

%試位法
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
fprintf('5-5(c)試位法之根:%f',xr)

