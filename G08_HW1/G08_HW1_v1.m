%4.11
clc;
cosx=0;
count=0;
x=pi/4;
n=2;
m=0;
Es=0.5*10^(2-n);
Ea=Es+1;


while abs(Ea)>Es
    count;
    cosxp=cosx;
    a=(-1)^(m/2)*x^(m)/factorial(m);
    cosx=cosx+a;
    m=m+2;
    Ea=(cosx-cosxp)*100/cosx;
    Et=(cos(pi/4)-cosx)/cos(pi/4);
    count=count+1;
    cosx;
    fprintf('�]�F%d��  ',count)
    fprintf('cosx=%f  ',cosx)
    fprintf('�u��~�t������Ȭ�%f%%  ',abs(Et))
    if count>1
        fprintf('����~�t������Ȭ�%f%%',abs(Ea))
    end
    fprintf('\n')
end
fprintf('�]���b�[�`4������,������~�t�p��Es=0.5%,�ҥH�o�ӭp��פ�\n')

