function [I,It,L,DT,RT] =GPCET(I,K,S)
%% PRE
[N, M]  = size(I);
x       = -1+1/M:2/M:1-1/M;
y       = 1-1/N:-2/N:-1+1/N;
[X,Y]   = meshgrid(x,y);
[~, r]  = cart2pol(X, Y);
I(r>1)=0;
%% DE
tic;
X=GPCET_D(I,K,S);
DT=toc;
[L,~]=size(find(X~=0));
%% RE
tic;
Y=GPCET_R(I,X,K,S);
RT=toc;
It=abs(Y);
end

