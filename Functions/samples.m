close all;
clear all;
clc;
figure;
M=12;
s=3;
for u=0:1:M-1,
    t=0:pi/1000:2*pi;
    r=(u/M)^(1/s);
    plot(r*cos(t),r*sin(t),'b:');
    hold on
end;
Points=0:2*pi/M:2*pi-eps;
for u=1:1:length(Points), 
    plot([0,(((M-1)/M)^(1/s))*cos(Points(u))],[0,(((M-1)/M)^(1/s))*sin(Points(u))],'b:');
    hold on
end;
axis equal
axis([-1 1 -1 1])
u=0:1:M-1;
v=0:1:M-1;

[u,v]=meshgrid(u,v);
x=(u./M).^(1/s).*cos(2*pi*v./M);
y=(u./M).^(1/s).*sin(2*pi*v./M);
plot(x,y,'bo','MarkerSize',6,'MarkerFaceColor','b');
hold on
plot(-x,-y,'bo','MarkerSize',6,'MarkerFaceColor','b');
hold on
plot(-x,y,'bo','MarkerSize',6,'MarkerFaceColor','b');
hold on
plot(x,-y,'bo','MarkerSize',6,'MarkerFaceColor','b');

set(gca,'XTick',-1:0.5:1,'FontSize',20,'Fontname','Times New Roman');
set(gca,'YTick',-1:0.5:1,'FontSize',20,'Fontname','Times New Roman');
xlabel('\itx','Fontsize',25,'Fontname','Times New Roman'); 
ylabel('\ity','Fontsize',25,'Fontname','Times New Roman'); 
set(gcf, 'position', [0 0 470 450]);

