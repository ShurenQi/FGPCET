function Y= FGPCET_R(Z,K,S,SZ,PZ)
[r,o]=ro(SZ,SZ);
Y= zeros(SZ,SZ);
for x = 1:2*K+1
    order = x-K-1;
    RBF = sqrt(S*r.^(S-2)/(2*pi)).*exp(1i*2*pi*order.*r.^S);
    for y = 1:2*K+1
        repetition = y-K-1;
        temp= Z(x,y).* RBF.*exp(1j*repetition.*o);
        Y  = Y+temp;
    end
end
Y(PZ)=0;
end