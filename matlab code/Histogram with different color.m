
flow_num = [50,150,250,350,450];

% linear_smartac_vne = [0.011650099999999775, 0.07011810000000018, 0.06406640000000019, 0.09225430000000001, 0.0990799] ;
% linear_smartac_ac = [0.009859399999999852, 0.06788620000000023, 0.057128700000000254, 0.08174689999999973, 0.09292049999999996] ;
linear_smartac_vne = [0.016679200000000005, 0.08184829999999987, 0.09188870000000016, 0.09991830000000013, 0.11754029999999993] ;
linear_smartac_ac = [0.015981199999999696, 0.07714289999999968, 0.07930060000000028, 0.09594399999999981, 0.11433939999999998] ;

ring_smartac_vne = [0.018536500000000178, 0.07126199999999994, 0.08835720000000036, 0.10114109999999998, 0.12782120000000008] ;
ring_smartac_ac = [0.01524150000000013, 0.06688669999999997, 0.07573220000000003, 0.0954174000000001, 0.1222635000000003] ;


% tree_smartac_vne = [0.016003700000000176, 0.07420530000000003, 0.0714756999999997, 0.09604500000000016, 0.10829809999999984] ;
% tree_smartac_ac = [0.015678000000000303, 0.07011409999999962, 0.06454519999999997, 0.08480899999999991, 0.09789089999999989] ;
% tree_smartac_vne = [0.023062099999999752, 0.08067940000000018, 0.1004811000000001, 0.12094510000000014, 0.1283970000000001] ;
% tree_smartac_ac = [0.022008399999999817, 0.07679960000000019, 0.08767419999999992, 0.11064880000000032, 0.11911670000000019] ;
tree_smartac_vne = [0.013617699999999733, 0.06205369999999988, 0.06426049999999961, 0.0960576999999998, 0.12774869999999972] ;
tree_smartac_ac = [0.013373599999999985, 0.06003829999999999, 0.060112399999999955, 0.09114069999999996, 0.1152978] ;

all_smart_data_ac = [linear_smartac_ac;ring_smartac_ac;tree_smartac_ac];
all_smart_data_vne = [linear_smartac_vne;ring_smartac_vne;tree_smartac_vne];

% 绘制直方图
facealpha = 0.9;
edgealpha = 0.8;

% figure;
% bar(flow_num, ave_smt_all, 'FaceColor', '#1E90FF', 'EdgeColor', '#1E90FF','FaceAlpha', facealpha,'EdgeAlpha', edgealpha); hold on
% bar(flow_num, ave_smartac_vne, 'FaceColor', '#FF4500', 'EdgeColor', '#FF4500','FaceAlpha', facealpha,'EdgeAlpha', edgealpha);hold on
% bar(flow_num, ave_smartac_ac, 'FaceColor', '#3D9140', 'EdgeColor', '#3D9140','FaceAlpha', facealpha,'EdgeAlpha', edgealpha); hold on

b2 = bar(flow_num, all_smart_data_vne,'FaceAlpha', facealpha,'EdgeAlpha', edgealpha); hold on
b1 = bar(flow_num, all_smart_data_ac,'FaceAlpha', facealpha,'EdgeAlpha', edgealpha); hold on

b1(1).FaceColor = '#00BFFF';
b1(1).EdgeColor = '#00BFFF';
b1(1).DisplayName = 'Linear-AC';

b1(2).FaceColor = '#FFA500';
b1(2).EdgeColor = '#FFA500';
b1(2).DisplayName = 'Ring-AC';

b1(3).FaceColor = '#A2CD5A';
b1(3).EdgeColor = '#A2CD5A';
b1(3).DisplayName = 'Tree-AC';

b2(1).FaceColor = '#0000FF';
b2(1).EdgeColor = '#0000FF';
b2(1).DisplayName = 'Linear-VNE';

b2(2).FaceColor = '#FF4500';
b2(2).EdgeColor = '#FF4500';
b2(2).DisplayName = 'Ring-VNE';

b2(3).FaceColor = '#008B00';
b2(3).EdgeColor = '#008B00';
b2(3).DisplayName = 'Tree-VNE';

% %连接中点
% bin_centers = flow_num;   % 计算每个方块的中点
% y=1;
% % plot(x, y*ones(size(x)), 'b-');hold on;
% plot(bin_centers-4.5, ave_smt_all, '--x','Color','#4169E1', 'LineWidth', 1); hold on
% plot(bin_centers+4.5, ave_smartac_ac, '--x','Color','#228B22', 'LineWidth', 1); hold on
% plot(bin_centers, ave_smartac_vne, '--x','Color','#FF6100', 'LineWidth',1); hold on

xlabel('Flow Number');
ylabel('Run Time (s)');
legend('NumColumns',2,'Location','northwest');
