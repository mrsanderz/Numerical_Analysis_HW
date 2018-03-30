function y = I_f(x)
    f = @(x) x.*exp(2*x);
    a=0;
    b=3;
    y=0;
    h = (b-a)/x;
    for i=1:x
        y=y+( f(a+(i-1)*h)+f(a+(i)*h) )/2 *h;
    end
end