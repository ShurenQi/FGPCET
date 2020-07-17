function [X] = FGPCET_D(I,K,S,M)
I = double(I);
[N,~] = size(I);
G = zeros(M,M);
for u = 1:M
    for v = 1:M
        rho = ((u-1)/M)^(1/S);
        theta = (2*pi*(v-1))/M;
        k = ceil(rho*(N/2)*sin(theta));
        l = ceil(rho*(N/2)*cos(theta));
        G(u,v) = I((-1)*k+(N/2)+1,l+(N/2))*sqrt(((u/M)^(2/S-1))/(2*pi*S));
    end
end
TEMP= fft2(G);
TEMP= 2*pi*TEMP/(M^2);
X= zeros(2*K+1,2*K+1);
X(1:K,1:K) = TEMP(M-K+1:M,M-K+1:M);
X(1:K,K+1:2*K+1) = TEMP(M-K+1:M,1:K+1);
X(K+1:2*K+1,1:K) = TEMP(1:K+1,M-K+1:M);
X(K+1:2*K+1,K+1:2*K+1) = TEMP(1:K+1,1:K+1);
end

