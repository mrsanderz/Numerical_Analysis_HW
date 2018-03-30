%15.4

function reg=regression(xi,yi,mi)
x=xi;
y=yi;
m=mi;
n=numel(x);
xavg=sum(x)/n;
yavg=sum(y)/n;

for i=1:1:m*2
    xsig(i)=sum(x.^(i));
end

for i=1:1:m+1
    xysig(i)=sum((x.^(i-1)).*y);
end

N=zeros(m+1);
r=zeros(m+1,1);
N(1,1)=n;
for i=1:1:(m+1)
    for j=1:1:(m+1)
        if (i+j-2)~=0
            N(i,j)=xsig(i+j-2);
        end
    end
    r(i,1)=xysig(i);
end


a=inv(N)*r


Sr=0;
r=0;
ytmp=0;

for i=1:1:n
    ytmp=y(i);
    for j=1:1:m+1
    %ytmp=y(i)  -a(1)  -a(2).*x(i)  -a(3).*x(i).^2  -a(4).*x(i).^3;
    ytmp=ytmp-a(j).*(x(i).^(j-1));
    end
    Sr=Sr+ytmp.^2;
    rtmp=y(i)-yavg;
    r=r+rtmp.^2;
end
r=sqrt((r-Sr)/r);
syx=sqrt(Sr/(n-(m+1)));
fprintf('rªº¥­¤è=%f Sy/x=%f\n',r^2,syx);
end





