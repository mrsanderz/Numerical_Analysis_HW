clc;
clear;
%20.3
%(a)龍貝格
fprintf('\n(a)龍貝格\n')
et=1;
iter=0;
i=1;
n=1;
k=0;
I(1,1)=I_f(1);
while(et>0.5*0.01)
    i = i*2;
    iter = iter+1;
    n = 2^iter;
    I(iter+1,1)=I_f(i);
    for k=2:iter+1
        j = 2+iter-k;
        I(j,k) = (4^(k-1)*I(j+1,k-1)-I(j,k-1))/(4^(k-1)-1);
    end
    et= abs((I(1,iter+1)-I(2,iter))/I(1,iter+1));
end
fprintf('迭代了%d',i-1);
fprintf('積分值%f',I(j,k));
fprintf('誤差%f',et);

%(b)兩點高斯二次式 
fprintf('\n(b)兩點高斯二次式\n')
b=3;
a=0;
xd=1/sqrt(3);
x=((b+a)+(b-a)*xd)/2;
y1=x*exp(2*x)*(b-a)/2;

xd=-1/sqrt(3);
x=((b+a)+(b-a)*xd)/2;
y2=x*exp(2*x)*(b-a)/2;

y=y1+y2;
fprintf('積分值%f',y);

% 使用quad 和 quad1
fprintf('\n(c)使用quad 和 quad1\n')
f = @(x) x.*exp(2*x);

q  = quad (f,0,3,0.5*0.01) ;
ql = quadl(f,0,3,0.5*0.01) ;
fprintf('quad:%f quadl:%f',q,ql);


