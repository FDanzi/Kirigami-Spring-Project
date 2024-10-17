% FolderName={'0.05g_3_6_a','0.1g_3_6_a','0.2g_3_6_a'};
% n=numel(FolderName);
cd
for in=1:1
% cd(strcat(cd,'\',FolderName{in}))
T = readtable('Sx_SVC01_sv002.csv','NumHeaderLines',9);
fr_0p1_f = table2array(T(:,1));
V_0p1_f  = table2array(T(:,4));
clear T
T = readtable('Sx_SVC01_sv003.csv','NumHeaderLines',9);
fr_0p1_b = table2array(T(:,1));
V_0p1_b  = table2array(T(:,4));
clear T 
cd ..
end

color1=[53,79,96]/255;
color2=[188, 14, 76]/255;

figure(1)
plot(fr_0p1_f,V_0p1_f/1000,'o','MarkerEdgeColor',color1,'MarkerSize',10,'MarkerFaceColor',color1,'MarkerIndices', [1:15:length(V_0p1_f)])
hold on
plot(fr_0p1_b,V_0p1_b/1000,'o','MarkerEdgeColor',color2,'MarkerSize',10,'MarkerFaceColor',color2,'MarkerIndices', [1:15:length(V_0p1_b)])
set(gca,'FontSize',28)
set(gca,'FontName','Times New Roman')
set(gca,'LineWidth',2)
ylabel('$V$ [m/s]','Interpreter','latex','Rotation',90,'FontName','Times New Roman','FontSize',32)
xlabel('$f$ [Hz]','Interpreter','latex','FontName','Times New Roman','FontSize',32)
legend('Foward Sweep','Backward Sweep','FontName','Times New Roman','FontSize',32,'Box','Off','Location','NorthWest')
text(4.1,1,'$a_b=0.1~g$','Interpreter','latex','FontName','Times New Roman','FontSize',32)
ylim([0 1.4])
axis square
% 
% figure(2)
% plot(fr_0p2_f,V_0p2_f,'o','MarkerEdgeColor',color1,'MarkerSize',10,'MarkerFaceColor',color1,'MarkerIndices', [1:15:length(V_0p2_f)])
% hold on
% plot(fr_0p2_b,V_0p2_b,'o','MarkerEdgeColor',color2,'MarkerSize',10,'MarkerFaceColor',color2,'MarkerIndices', [1:15:length(V_0p2_b)])
% set(gca,'FontSize',28)
% set(gca,'FontName','Times New Roman')
% set(gca,'LineWidth',2)
% ylabel('$V$ [m/s]','Interpreter','latex','Rotation',90,'FontName','Times New Roman','FontSize',32)
% xlabel('$f$ [Hz]','Interpreter','latex','FontName','Times New Roman','FontSize',32)
% legend('Foward Sweep','Backward Sweep','FontName','Times New Roman','FontSize',32,'Box','Off')
% text(4.5,1,'$a_b=0.2~g$','Interpreter','latex','FontName','Times New Roman','FontSize',32)
% 
% figure(3)
% plot(fr_0p3_f,V_0p3_f,'o','MarkerEdgeColor',color1,'MarkerSize',10,'MarkerFaceColor',color1,'MarkerIndices', [1:15:length(V_0p3_f)])
% hold on
% plot(fr_0p3_b,V_0p3_b,'o','MarkerEdgeColor',color2,'MarkerSize',10,'MarkerFaceColor',color2,'MarkerIndices', [1:15:length(V_0p3_b)])
% set(gca,'FontSize',28)
% set(gca,'FontName','Times New Roman')
% set(gca,'LineWidth',2)
% ylabel('$V$ [m/s]','Interpreter','latex','Rotation',90,'FontName','Times New Roman','FontSize',32)
% xlabel('$f$ [Hz]','Interpreter','latex','FontName','Times New Roman','FontSize',32)
% legend('Foward Sweep','Backward Sweep','FontName','Times New Roman','FontSize',32,'Box','Off')
% text(4.5,1,'$a_b=0.3~g$','Interpreter','latex','FontName','Times New Roman','FontSize',32)
% 
% figure(4)
% plot(fr_0p4_f,V_0p4_f,'o','MarkerEdgeColor',color1,'MarkerSize',10,'MarkerFaceColor',color1,'MarkerIndices', [1:15:length(V_0p4_f)])
% hold on
% plot(fr_0p4_b,V_0p4_b,'o','MarkerEdgeColor',color2,'MarkerSize',10,'MarkerFaceColor',color2,'MarkerIndices', [1:15:length(V_0p4_b)])
% set(gca,'FontSize',28)
% set(gca,'FontName','Times New Roman')
% set(gca,'LineWidth',2)
% ylabel('$V$ [m/s]','Interpreter','latex','Rotation',90,'FontName','Times New Roman','FontSize',32)
% xlabel('$f$ [Hz]','Interpreter','latex','FontName','Times New Roman','FontSize',32)
% legend('Foward Sweep','Backward Sweep','FontName','Times New Roman','FontSize',32,'Box','Off')
% text(4.5,1,'$a_b=0.4~g$','Interpreter','latex','FontName','Times New Roman','FontSize',32)