function [r,o] = ro(n,m)
r = zeros(n,m);
o = zeros(n,m);
R = max((n-1)/2,(m-1)/2);%圆半径
%%%%计算图像像素的半径和角度
for x = 1:n
    for y = 1:m
        xx = x-1;  %%%图像坐标从0开始
        yy = y-1;  %%%图像坐标从0开始
        if (xx<=(n-1)/2) && (yy>=(m-1)/2)  %%%第一象限
            p = yy-(m-1)/2;
            q = (n-1)/2-xx;
            %%% 计算每个像素的半径(0,1)
            r(x,y) = sqrt(p^2+q^2)/R;
            %%% 计算每个像素的角度(0,2*pi)
            o(x,y) = asin(q/sqrt(p^2+q^2));
        elseif (xx<=(n-1)/2) && (yy<(m-1)/2)  %%%第二象限
            p = (m-1)/2-yy;
            q = (n-1)/2-xx;
            %%% 计算每个像素的半径(0,1)
            r(x,y) = sqrt(p^2+q^2)/R;
            %%% 计算每个像素的角度(0,2*pi)
            o(x,y) = pi-asin(q/sqrt(p^2+q^2));
        elseif (xx>(n-1)/2) && (yy<=(m-1)/2)  %%%第三象限
            p = (m-1)/2-yy;
            q = xx-(n-1)/2;
            %%% 计算每个像素的半径(0,1)
            r(x,y) = sqrt(p^2+q^2)/R;
            %%% 计算每个像素的角度(0,2*pi)
            o(x,y) = pi+asin(q/sqrt(p^2+q^2));
        elseif (xx>(n-1)/2) && (yy>(m-1)/2)  %%%第四象限
            p = yy-(m-1)/2;
            q = xx-(n-1)/2;
            %%% 计算每个像素的半径(0,1)
            r(x,y) = sqrt(p^2+q^2)/R;
            %%% 计算每个像素的角度(0,2*pi)
            o(x,y) = 2*pi-asin(q/sqrt(p^2+q^2));
        end
        if r(x,y)==0
            o(x,y) = 0;   %%%中心点角度设为0
        elseif r(x,y)>1
            r(x,y) = 100000000;            
        end
    end
end
