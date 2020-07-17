close all;
clc;
clear;

s=1;
Ymax=2;
n=[0 1 2 5 ];
figure;
for i=n
    r=0:0.001:1;
    RBF=sqrt((s*r.^(s-2))./(2*pi)).*exp(1j.*2.*pi.*i.*r.^s);
    hold on
    plot(r,real(RBF));
end
set(gcf, 'position', [0 0 666 500]);
set(gca,'fontsize',20,'FontName','Times New Roman');
ylabel('real(\itR_{n}\rm(\itr\rm))');xlabel('\itr');
h=legend('\itn\rm=0','\itn\rm=1','\itn\rm=2','\itn\rm=5'); %'Location','southwest'
set(h,'fontsize',22);
axis([0,1,-Ymax,Ymax]);
% h=text(0.8,-1.5,'\fontsize{25}\its\rm=0.5');
set(h,'FontName','Times New Roman');


figure;
for i=n
    r=0:0.001:1;
    RBF=sqrt((s*r.^(s-2))./(2*pi)).*exp(1j.*2.*pi.*i.*r.^s);
    hold on
    plot(r,imag(RBF));
end
set(gcf, 'position', [0 0 666 500]);
set(gca,'fontsize',20,'FontName','Times New Roman');
ylabel('imag(\itR_{n}\rm(\itr\rm))');xlabel('\itr');
h=legend('\itn\rm=0','\itn\rm=1','\itn\rm=2','\itn\rm=5');
set(h,'fontsize',22);
axis([0,1,-Ymax,Ymax]);
% h=text(0.8,-1.5,'\fontsize{25}\its\rm=0.5');
set(h,'FontName','Times New Roman');

%%

% close all
% clear all
% clc
% s=3;
% NL=[0,0;0,1;0,2;1,0;1,1;1,2;2,0;2,1;2,2];
% blocksize=1000;
% len   = size(NL,1);
% BF = zeros(blocksize,blocksize,len);
% [X,Y] = meshgrid(1:blocksize,1:blocksize);
% r  = sqrt(((2.*Y-blocksize-1).^2+(2.*X-blocksize-1).^2)/(blocksize.^2));
% theta = atan2(-(2.*Y-blocksize-1),   (2.*X-blocksize-1));
% mask  = (r<=1);
% for index = 1:len
%         n = NL(index,1);
%         m = NL(index,2);
%         BF(:,:,index) = mask.*sqrt((s*r.^(s-2))./(2*pi)).*exp(1j.*2.*pi.*n.*r.^s).*exp(1i*m*theta);
% end;
% h=figure;
% set(h,'position',[0 0 500 500]);
% ha = tight_subplot(3,3,[.04 .04],[.08 .08],[.08 .08]);
% for index = 1:len
% %         subplot(3,3,index);
%         axes(ha(index));
%         pa=atan2(imag(BF(:,:,index)),real(BF(:,:,index)));
%         s=surf(X,Y,pa);
%         s.EdgeColor = 'none';
%         view(0,90)
%         colormap(jet(2000))
%         set(gca,'XColor','white')
%         set(gca,'YColor','white')
%         if index==1
%             title('\itm\rm=0');
%             ylabel('\itn\rm=0','Color','k');
%             set(gca,'FontName','Times New Roman','FontSize',20);
%         elseif index==2
%             title('\itm\rm=1');
%             set(gca,'FontName','Times New Roman','FontSize',20);
%         elseif index==3
%             title('\itm\rm=2');
%             set(gca,'FontName','Times New Roman','FontSize',20);
%         elseif index==4
%             ylabel('\itn\rm=1','Color','k');
%             set(gca,'FontName','Times New Roman','FontSize',20);
%         elseif index==7
%             ylabel('\itn\rm=2','Color','k');
%             set(gca,'FontName','Times New Roman','FontSize',20);
%         end
%         set(gca,'XTick', []);
%         set(gca,'YTick', []);
%         
%         axis equal
% end;
% print(gcf,'-r600','-dtiff','s=3.tiff');
