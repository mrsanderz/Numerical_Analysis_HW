%--10.3
clear; clc;
A = [7 2 -3 -12 ;2 5 -3 -20 ;1 -1 -6 -26];
%--find U
%--高斯簡單消去法求U-----------------------------
U = A;
D = size(A);
for i=2:1:D(1)      %handle the i col
    for j = 1:i-1   %handle the j position in i col
        U(i,:) = U(i,:)-U(i,j)/U(j,j).*U(j,:);
        %minus the j row to make the j position in i col become 0
    end
end
%-----------------------------------------------
U=U(:,1:3)
%--find L---------------------------------------
L = A(:,1:3)/U

%--利用 lu() 驗證--------------------------------
[luL,luU] = lu(A(:,1:3));
luU
luL

%11.1
clear;
A=[10 2 -1;-3 -6 2;1 1 5];
b=[27 -61.5 -21.5];

[L,U]=lu(A);
d11=1;
d21=-d11*L(2,1);
d31=-d21*L(3,2)-d11*L(3,1);
x31=d31/U(3,3);
x21=(d21-U(2,3)*x31)/U(2,2);
x11=(d11-U(1,3)*x31-U(1,2)*x21)/U(1,1);

d12=0;
d22=1;
d32=-L(3,2);
x32=d32/U(3,3);
x22=(d22-U(2,3)*x32)/U(2,2);
x12=(d12-U(1,3)*x32-U(1,2)*x22)/U(1,1);

d13=0;
d23=0;
d33=1;
x33=d33/U(3,3);
x23=(d23-U(2,3)*x33)/U(2,2);
x13=(d13-U(1,3)*x33-U(1,2)*x23)/U(1,1);

Ainv=[x11 x12 x13;x21 x22 x23;x31 x32 x33]
I=A*Ainv



