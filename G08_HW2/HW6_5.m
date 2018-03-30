%6-5牛頓-拉夫法
clear;
fprintf('6-5(a)牛頓-拉夫法\n')
i=0;
Es=1;
x1=0.5825;  %為xi項
x2=0;       %為xi+1項
while Es>0.00001
    f=x1^(5)-16.05*x1^(4)+88.75*x1^(3)-192.0375*x1^(2)+116.35*x1+31.6875;
    df=5*x1^(4)-16.05*4*x1^(3)+88.75*3*x1^(2)-192.0375*2*x1+116.35;
    x2=x1-((f)/(df));
    Es=abs((x2-x1)/x2);
    x1=x2;
    i=i+1;
    fprintf('第%d次迭代\t',i)
    fprintf('x%d:%-10f\t',i,x1)
    fprintf('誤差為:%f\n',Es)
end


%6-5修改的正割法
clear;
fprintf('\n6-5(b)修改的正割法\n')
i=0;
Es=1;
x1=0.5825;
x2=0;
d=0.05;
while Es>0.00001
    xd=x1+d*x1;
    f1=x1^(5)-16.05*x1^(4)+88.75*x1^(3)-192.0375*x1^(2)+116.35*x1+31.6875;
    fd=xd^(5)-16.05*xd^(4)+88.75*xd^(3)-192.0375*xd^(2)+116.35*xd+31.6875;
    x2=x1-((f1*d*x1)/(fd-f1));
    Es=abs((x2-x1)/x2);
    x1=x2;
    i=i+1;
    fprintf('第%d次迭代\t',i)
    fprintf('x%d:%-10f\t',i,x1)
    fprintf('誤差為:%f\n',Es)
end

fprintf(['都是當誤差小於0.00001時停止收斂\n'...
        '此函數有數個根,因此經過迭代的值如果在函數上的斜率過小時,會突然跳到很遠的x軸上\n'...
        '比較:\n'...
        '牛頓拉夫法:\n'...
        '收斂速度牛頓拉夫法較正割法慢,但不用多一個擾動分數的參數\n'...
        '而在使用牛頓-拉夫法時x1的值在函數上的斜率很小且是正的\n'...
        '所以突然跳到x=90左右的地方而最後收斂到最右邊的根,\n'...
        '修正的正割法:\n'...
        '如果函數的微分難以計算,那麼正割法就相對簡單了許多\n'...
        '而使用修正正割法時x1的值則在函數上的斜率是負的\n'...
        '所以跳到了x=-4左右的地方而最後收斂到最左邊的根\n'])

