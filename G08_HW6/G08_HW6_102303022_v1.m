clc; clear;
%20.4
%(a)�G���p�ؼw
fprintf('\n(a)�G���p�ؼw\n')
f=@(x) 2/sqrt(pi)*exp(-x^2);
a=0; b=1.5;
const=(b-a)/2;
x=@(xd) ( (b+a)+(b-a)*xd )/2;
y2=const*( f(x(1/sqrt(3)))+f(x(-1/sqrt(3))) );
fprintf('�G��:erf(1.5)=%f\n',y2)

%(b)�T���p�ؼw
fprintf('\n(b)�T���p�ؼw\n')
y3=const*( 5/9*f(x(-sqrt(3/5))) + 8/9*f(x(0.0)) + 5/9*f(x(sqrt(3/5))) );
fprintf('�T��:erf(1.5)=%f\n\n',y3)

fprintf('�u���:erf(1.5)=%f\n',erf(1.5))
fprintf('�G���۹�~�t=%f\n',abs( (erf(1.5)-y2)/erf(1.5) ) )
fprintf('�T���۹�~�t=%f\n',abs( (erf(1.5)-y3)/erf(1.5) ) )