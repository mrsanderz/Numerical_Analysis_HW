clc; clear;
%20.4
%(a)二次雷建德
fprintf('\n(a)二次雷建德\n')
f=@(x) 2/sqrt(pi)*exp(-x^2);
a=0; b=1.5;
const=(b-a)/2;
x=@(xd) ( (b+a)+(b-a)*xd )/2;
y2=const*( f(x(1/sqrt(3)))+f(x(-1/sqrt(3))) );
fprintf('二次:erf(1.5)=%f\n',y2)

%(b)三次雷建德
fprintf('\n(b)三次雷建德\n')
y3=const*( 5/9*f(x(-sqrt(3/5))) + 8/9*f(x(0.0)) + 5/9*f(x(sqrt(3/5))) );
fprintf('三次:erf(1.5)=%f\n\n',y3)

fprintf('真實值:erf(1.5)=%f\n',erf(1.5))
fprintf('二次相對誤差=%f\n',abs( (erf(1.5)-y2)/erf(1.5) ) )
fprintf('三次相對誤差=%f\n',abs( (erf(1.5)-y3)/erf(1.5) ) )