close all;

flow_num = [10,30,50,100,200,300,400];

%————————————————————————————SMT数据——————————————————————————————————————
smt_time_10 = [0.14140,0.24188,0.13001,0.17567,0.19015];
smt_time_30 = [1.49375,1.51625,0.99523,0.78370,0.83319];
smt_time_50 = [4.77501,4.68971,3.14806,2.91975,4.09135];
smt_time_100 = [14.98239,19.14580,13.99202,12.19018,14.71207];
smt_time_200 = [77.85586,132.07024,87.40208,141.67876,93.20235];

ave_smt_10 = cal_ave(smt_time_10);
ave_smt_30 = cal_ave(smt_time_30);
ave_smt_50 = cal_ave(smt_time_50);
ave_smt_100 = cal_ave(smt_time_100);
ave_smt_200 = cal_ave(smt_time_200);

%————————————————————————————SCS数据——————————————————————————————————————
scs_time_10 = [0.00199,0.24188,0.13001,0.00325,0.19015];
scs_time_30 = [1.49375,1.51625,0.99523,0.78370,0.83319];
scs_time_50 = [4.77501,4.68971,3.14806,2.91975,4.09135];
scs_time_100 = [14.98239,19.14580,13.99202,12.19018,14.71207];
scs_time_200 = [77.85586,132.07024,87.40208,141.67876,93.20235];

%————————————————————————————FITS数据——————————————————————————————————————
fits_time_10 = [0.00082,0.00643,0.00570,0.00330,0.00743];
fits_time_30 = [0.03534,0.08500,0.05834,0.05399,0.05854];
fits_time_50 = [0.11282,0.08787,0.12448,0.08950,0.12446];
fits_time_100 = [0.23933,0.30232,0.26120,0.54717,0.31869];
fits_time_200 = [0.55301,0.72703,0.59662,0.57787, 0.60056];
fits_time_300 = [0.86486,0.93979,0.96991,0.94140,0.74555];
fits_time_400 = [1.29077,1.28162,1.41604,1.02936,1.06984];

ave_fits_10 = cal_ave(fits_time_10);
ave_fits_30 = cal_ave(fits_time_30);
ave_fits_50 = cal_ave(fits_time_50);
ave_fits_100 = cal_ave(fits_time_100);
ave_fits_200 = cal_ave(fits_time_200);
ave_fits_300 = cal_ave(fits_time_300);
ave_fits_400 = cal_ave(fits_time_400);

%————————————————————————————EITS数据——————————————————————————————————————
eits_time_10 = [0.00069,0.00089,0.00043,0.00041,0.00038];
eits_time_30 = [0.00209,0.00831,0.00142,0.00138,0.00133];
eits_time_50 = [0.01788,0.00500,0.010098,0.00529,0.01189];
eits_time_100 = [0.04050,0.02212,0.05857,0.01451,0.05406];
eits_time_200 = [0.11188,0.07988,0.16319,0.11098,0.15147];
eits_time_300 = [0.22179,0.32178,0.19740,0.22513,0.28292];
eits_time_400 = [0.46355,0.42858,0.40098,0.49708,0.31644];

ave_eits_10 = cal_ave(eits_time_10);
ave_eits_30 = cal_ave(eits_time_30);
ave_eits_50 = cal_ave(eits_time_50);
ave_eits_100 = cal_ave(eits_time_100);
ave_eits_200 = cal_ave(eits_time_200);
ave_eits_300 = cal_ave(eits_time_300);
ave_eits_400 = cal_ave(eits_time_400);

%————————————————————————————数据汇总——————————————————————————————————————
ave_smt_all = [ave_smt_10,ave_smt_30,ave_smt_50,ave_smt_100,ave_smt_200,2,2];
% ave_smt_all = [ave_smt_10,ave_smt_30,ave_smt_50,0,0,0,0];
ave_fits_all = [ave_fits_10,ave_fits_30,ave_fits_50,ave_fits_100,ave_fits_200,ave_fits_300,ave_fits_400];
ave_eits_all = [ave_eits_10,ave_eits_30,ave_eits_50,ave_eits_100,ave_eits_200,ave_eits_300,ave_eits_400];
% ave_smartac_vne = [0.00574090000000016, 0.016123200000000004, 0.019509100000000057, 0.07198949999999993, 0.10062290000000029] ;
% ave_smartac_ac = [0.005425000000000235, 0.015169599999999672, 0.018882199999999738, 0.06685609999999986, 0.09535910000000003] ;
% ave_smartac_vne = [0.00826109999999991, 0.013531200000000076, 0.0270937, 0.06132079999999984, 0.07099399999999978] ;
% ave_smartac_ac = [0.008142799999999895, 0.01255039999999985, 0.025928700000000138, 0.05991549999999979, 0.06778499999999976] ;
ave_smartac_ac = [0.005426019999999987, 0.01424903999999989, 0.014459599999999906, 0.03131795999999998, 0.056051299999999936, 0.08761838000000007, 0.10100913999999986] ;
ave_smartac_vne = [0.005636540000000157, 0.014648199999999978, 0.01573216000000004, 0.032615719999999994, 0.06080206000000006, 0.09661324000000002, 0.10521931999999996] ;

ave_all_data = [ave_smt_all;ave_fits_all;ave_eits_all;ave_smartac_ac;ave_smartac_vne];
smart_all_data = [ave_fits_all;ave_eits_all;ave_smartac_ac;ave_smartac_vne];

% 绘制直方图
facealpha = 0.4;
edgealpha = 1;

%—————————————————————————————不带SMT的直方图——————————————————————————
% figure;
% % 设置柱子宽度比例
barWidth = 1;
% % b1 = bar(flow_num, ave_all_data,'FaceAlpha', facealpha,'EdgeAlpha', edgealpha); hold on
% b1 = bar(flow_num, smart_all_data*100,'FaceAlpha', facealpha,'EdgeAlpha', edgealpha,BarWidth=barWidth); hold on
% b1(1).FaceColor = '#1E90FF';
% b1(1).EdgeColor = '#1E90FF';
% b1(1).DisplayName = 'FITS';
% b1(2).FaceColor = '#A020F0';
% b1(2).EdgeColor = '#A020F0';
% b1(2).DisplayName = 'EITS';
% b1(3).FaceColor = '#3D9140';
% b1(3).EdgeColor = '#3D9140';
% b1(3).DisplayName = 'SmartAC-AC';
% b1(4).FaceColor = '#FF0000';
% b1(4).EdgeColor = '#FF0000';
% b1(4).DisplayName = 'SmartAC-VNE';
% 
% %连接中点
% bin_centers = flow_num;   % 计算每个方块的中点
% y=1;
% order = 100;
% % plot(x, y*ones(size(x)), 'b-');hold on;
% plot(bin_centers-4.5, ave_fits_all*order, '--x','Color','#4169E1', 'LineWidth', 1,'DisplayName','FITS'); hold on
% plot(bin_centers-2.5, ave_eits_all*order, '--x','Color','#A020F0', 'LineWidth', 1,'DisplayName','EITS'); hold on
% plot(bin_centers+4.5, ave_smartac_ac*order, '--x','Color','#228B22', 'LineWidth', 1,'DisplayName','SmartAC-AC'); hold on
% plot(bin_centers, ave_smartac_vne*order, '--x','Color','#FF0000', 'LineWidth',1,'DisplayName','SmartAC-VNE'); hold on
% 
% % ax = gca;
% % ax.YAxis.Exponent = -2;
% % y_range = 130;
% % set(gca,'YTick',0:20:y_range) %y轴范围0-700，间隔100
% xlabel('Flow Number');
% ylabel('Run Time (ms)');
% legend('NumColumns',2,'Location','northwest');

%—————————————————————————————带SMT的直方图——————————————————————————
figure;
b2 = bar(flow_num, ave_all_data*100,'FaceAlpha', facealpha,'EdgeAlpha', edgealpha,BarWidth=barWidth); hold on
b2(1).FaceColor = '#FFC125';
b2(1).EdgeColor = '#FFC125';
b2(1).DisplayName = 'SMT';
b2(2).FaceColor = '#1E90FF';
b2(2).EdgeColor = '#1E90FF';
b2(2).DisplayName = 'FITS';
b2(3).FaceColor = '#A020F0';
b2(3).EdgeColor = '#A020F0';
b2(3).DisplayName = 'EITS';
b2(4).FaceColor = '#3D9140';
b2(4).EdgeColor = '#3D9140';
b2(4).DisplayName = 'SmartAC-AC';
b2(5).FaceColor = '#FF4500';
b2(5).EdgeColor = '#FF4500';
b2(5).DisplayName = 'SmartAC-VNE';


%连接中点
bin_centers = flow_num;   % 计算每个方块的中点
y=1;
order = 100;
smt_x = [10,30,50];
ave_smt_all_new = [ave_smt_10,ave_smt_30,ave_smt_50];
% plot(x, y*ones(size(x)), 'b-');hold on;
plot(smt_x-6, ave_smt_all_new*order, '--x','Color','#FFC125', 'LineWidth',1,'DisplayName','SMT'); hold on
plot(bin_centers-3, ave_fits_all*order, '--x','Color','#4169E1', 'LineWidth', 1,'DisplayName','FITS'); hold on
plot(bin_centers, ave_eits_all*order, '--x','Color','#A020F0', 'LineWidth', 1,'DisplayName','EITS'); hold on
plot(bin_centers+3, ave_smartac_ac*order, '-*','Color','#228B22', 'LineWidth', 1,'DisplayName','SmartAC-AC'); hold on
plot(bin_centers+6, ave_smartac_vne*order, '-*','Color','#FF4500', 'LineWidth',1,'DisplayName','SmartAC-VNE'); hold on

% 设置 Y 轴显示范围
ylim([0, 130]); % 限制 Y 轴范围为 0 到 100
xlabel('Flow Number');
ylabel('Run Time (ms)');
legend('NumColumns',2,'Location','northwest');






function average = cal_ave(list)
    sum = 0;
    for i =1:length(list)
        sum = sum + list(i);
    end
    average = sum/length(list);
end