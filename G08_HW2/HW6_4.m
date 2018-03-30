%6-4圖解法
clc;
clear;
x=linspace(-1,10);
f=8.*sin(x).*exp(-x)-1;
plot(x,f),grid
fprintf('6-4(a)圖解法\n')
fprintf('圖解法可知有兩的根在2左右與0到1之間\n')

%6-4牛頓-拉夫法
fprintf('\n6-4(b)牛頓-拉夫法\n')
clear;
i=0;
x1=0.3;     %為xi項
x2=0;       %為xi+1項
while i<3
    f=8*sin(x1)*exp(-x1)-1;
    df=8*(cos(x1)*exp(-x1)+sin(x1)*(-exp(-x1)));        %f的微分
    x2=x1-((f)/(df));
    x1=x2;
    i=i+1;
    fprintf('第%d次迭代\t',i)
    fprintf('x%d:%-10f\n',i,x1)
end

clear;
%6-4正割法
fprintf('\n6-4(c)正割法\n')
i=0;
x1=0.5;     %為xi-1項
x2=0.4;     %為xi項
x3=0.4;     %為xi+1項
while i<3
    f1=8*sin(x1)*exp(-x1)-1;
    f2=8*sin(x2)*exp(-x2)-1;
    x3=x2-(f2*(x1-x2))/(f1-f2);
    x1=x2;
    x2=x3;
    i=i+1;
    fprintf('第%d次迭代\t',i)
    fprintf('x%d:%-10f\n',i,x2)
end



%6-4修改的正割法
clear;
fprintf('\n6-4(d)修改的正割法\n')
i=0;
x1=0.3;     %為xi項
x2=0.3;     %為xi+1項
d=0.01;     %擾動分數
while i<5
    f1=8*sin(x1)*exp(-x1)-1;
    fd=8*sin(x1+d*x1)*exp(-(x1+d*x1))-1;
    x2=x1-(f1*(d*x1))/(fd-f1);
    x1=x2;
    i=i+1;
    fprintf('第%d次迭代\t',i)
    fprintf('x%d:%-10f\n',i,x2)
end


