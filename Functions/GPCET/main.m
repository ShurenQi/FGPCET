close all;
clear all;
clc;
warning('off'); 
addpath(genpath(pwd));
%% INPUT
I=imread('lena.tif');
%% MODE
K = input('Please enter the maximum order K (K>=0): ');
disp('Parameter Setting: s>0;');
disp('e.g.');
disp('- EFM: s=1;');
disp('- PCET: s=2;');
S = input('s=');
%% COMPUTE
if K>=0 && S>0
    [I,It,L,DT,RT]=GPCET(I,K,S);
else
    disp('Error!');
    return;
end
%% OUTPUT
figure;
subplot(121);
imshow(uint8(abs(I)));
title('Original');
subplot(122);
imshow(uint8(abs(It)));
different_a = (abs(abs( double(abs(It))-double(I)))).^2;
different_b = (double(I)).^2;
MSRE = sum(different_a(:))/sum(different_b(:));
clc;
disp(table([S;K;L;DT;RT;MSRE],'RowNames',{'S';'K';'L';'DT';'RT';'MSRE'},'VariableNames',{'Value'}));
title({'Reconstructed'; ['K=',num2str(K),'  L=',num2str(L),'  MSRE=',num2str(MSRE)]});