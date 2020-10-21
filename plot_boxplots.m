%% Boxplot example
clc
close all;
clear all;


%% Calculate AOA errors
figure()
disp("Loading boxplot data... (1/2)");
load('materials/aoa_error.mat', 'aoa_errors_list', 'xlabels');
mu = 5; % mu takes outlier (red cross) into account
boxplot(aoa_errors_list, xlabels, 'Whisker', mu);
title('Error of Angle of Attack (AOA) based on sequence length');
xlabel('Sequence Length');
ylabel('Error [rad]');

saveas(gcf,"imgs/boxplot1.png");
disp("Done (1/2)");

%% Calculate SSA errors
figure()
disp("Loading boxplot data... (2/2)");
load('materials/ssa_error.mat', 'ssa_errors_list', 'xlabels');
mu = 9; % mu takes outlier (red cross) into account
boxplot(ssa_errors_list, xlabels, 'Whisker', mu);
title('Error of Sideslip Angle (SSA) based on sequence length');
xlabel('Sequence Length');
ylabel('Error [rad]');

saveas(gcf,"imgs/boxplot2.png");
disp("Done (2/2)");