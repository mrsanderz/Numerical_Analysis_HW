
clc
clear
fprintf('10_3');
n=3;
A=[7 2 -3;2 5 -3;1 -1 -6]
B=[-12;-20;-26];
nb=n+1;
Aug=[A B];
for k=1:n-1
    [big,i]=max(abs(Aug(k:n,k)));
    ipr=i+k-1;
    if ipr~=k
        Aug([k,ipr],:)=Aug([ipr,k],:);
    end
    for i=k+1:n
        factor=Aug(i,k)/Aug(k,k);
        Aug(i,k:nb)=Aug(i,k:nb)-factor*Aug(k,k:nb);
    end
end
x=zeros(n,1);
x(n)=Aug(n,nb)/Aug(n,n);
for i=n-1:-1:1
    x(i)=(Aug(i,nb)-Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
end

Aug
U=[Aug([1:3]);Aug([4:6]) ;Aug([7:9])]'  % ºâ¥XU¯x°}
f21=A(2,1)/A(1,1)
f31=A(3,1)/A(1,1)
f32=(A(3,2)-f31*A(1,2))/(U(2,2)) % ­n­×§ï
L=[1 0 0;f21 1 0;f31 f32 1];







