function [I,It,L,DT,RT] =FGPCET(I,K,S,M)
%% PRE
[N1, N2]  = size(I);
x       = -1+1/N2:2/N2:1-1/N2;
y       = 1-1/N1:-2/N1:-1+1/N1;
[X,Y]   = meshgrid(x,y);
[~, r]  = cart2pol(X, Y);
PZ=r>1;
I(PZ)=0;
%% DE
tic;
X=FGPCET_D(I,K,S,M);
DT=toc;
[L,~]=size(find(X~=0));
%% RE
tic;
Y=FGPCET_R(X,K,S,N1,PZ);
RT=toc;
It=abs(Y);
end

