%% 3D seismic data visualization
% modified by Yang Cui
% Feb. 2024
clc; clear; close all;
%% load data
load('G:/Project/Denoising/Aramco/result/denoised_3D/denoised_csg_1.mat');
csg_1 = d;
% csg_1 = drr_scale(csg_1, 2);

load('G:/Project/Denoising/Aramco/result/denoised_3D/denoised_csg_5.mat');
csg_5 = d;
% csg_5 = drr_scale(csg_5, 2);

load('G:/Project/Denoising/Aramco/result/denoised_3D/denoised_csg_14.mat');
csg_14 = d;
% csg_14 = drr_scale(csg_14, 2);
load('G:/3D_Data/csg_17.mat');
csg_17_1 = d;
load('G:/Project/Denoising/Aramco/result/denoised_3D/denoised_csg_17.mat');
csg_17 = d;
% csg_17 = drr_scale(csg_17, 2);

load('G:/Project/Denoising/Aramco/result/denoised_3D/denoised_csg_19.mat');
csg_19 = d;
% csg_19 = drr_scale(csg_19, 2);

%% define clim
clim_1 = [-1 1];
clim_5 = [-1 1];
clim_14 = [-1, 1];
clim_17 = [-1 1];
clim_19 = [-0.5 0.5];


%% csg_1
figure;% figure 1
set(gcf, 'position', [ 0   0   600   700]);
movegui('center');
subplot('Position', [0.09 0.13 0.86 0.80]);
stpShow3DVolume(csg_1, 4, clim_1, [50 300], [5 45], [1000 5000], [], ...
'firstInlineId', 1, ...
'firstCrosslineId', 1, ...
'startTime', 1, ...
'colormap', seismic(2) ...
);
title('Denosied csg-1', 'Fontsize', 20, 'Fontweight', 'bold');
print(gcf,'-dpng','-r300','./csg_fig/csg_1_3D_denoised.png');

% figure2
figure;
set(gcf, 'position', [ 0   0   600   700]);
movegui('center');
subplot('Position', [0.11 0.13 0.82 0.80]);
stpShow3DVolume(csg_1, 4, clim_1, [1 1], [1 1], [0], [], ...
    'attributeName', 'Amplitude', ...
    'colormap', seismic(2) ...
);
title('Denosied csg-1', 'Fontsize', 20, 'Fontweight', 'bold');
print(gcf,'-dpng','-r300','./csg_fig/csg_1_3D_denoised_1.png');
%% csg_5
figure;% figure 1
set(gcf, 'position', [ 0   0   600   700]);
movegui('center');
subplot('Position', [0.09 0.13 0.86 0.80]);
stpShow3DVolume(csg_5, 4, clim_5, [50 300], [5 20], [1000 5000], [], ...
'firstInlineId', 1, ...
'firstCrosslineId', 1, ...
'startTime', 1, ...
'colormap', seismic(2) ...
);
title('Denosied csg-5', 'Fontsize', 20, 'Fontweight', 'bold');
print(gcf,'-dpng','-r300','./csg_fig/csg_5_3D_denoised.png');

% figure2
figure;
set(gcf, 'position', [ 0   0   600   700]);
movegui('center');
subplot('Position', [0.11 0.13 0.82 0.80]);
stpShow3DVolume(csg_5, 4, clim_5, [1 1], [1 1], [0], [], ...
    'attributeName', 'Amplitude', ...
    'colormap', seismic(2) ...
);
title('Denosied csg-5', 'Fontsize', 20, 'Fontweight', 'bold');
print(gcf,'-dpng','-r300','./csg_fig/csg_5_3D_denoised_1.png');

%% csg_14
figure;% figure 1
set(gcf, 'position', [ 0   0   600   700]);
movegui('center');
subplot('Position', [0.09 0.13 0.86 0.80]);
stpShow3DVolume(csg_14, 4, clim_14, [80 260], [5 50], [1000 5000], [], ...
'firstInlineId', 1, ...
'firstCrosslineId', 1, ...
'startTime', 1, ...
'colormap', seismic(2) ...
);
title('Denosied csg-14', 'Fontsize', 20, 'Fontweight', 'bold');
print(gcf,'-dpng','-r300','./csg_fig/csg_14_3D_denoised.png');

% figure2
figure;
set(gcf, 'position', [ 0   0   600   700]);
movegui('center');
subplot('Position', [0.11 0.13 0.82 0.80]);
stpShow3DVolume(csg_14, 4, clim_14, [1 1], [1 1], [0], [], ...
    'attributeName', 'Amplitude', ...
    'colormap', seismic(2) ...
);
title('Denosied csg-14', 'Fontsize', 20, 'Fontweight', 'bold');
print(gcf,'-dpng','-r300','./csg_fig/csg_14_3D_denoised_1.png');

%% csg_17
figure;% figure 1
set(gcf, 'position', [ 0   0   600   700]);
movegui('center');
subplot('Position', [0.09 0.13 0.86 0.80]);
stpShow3DVolume(csg_17_1-csg_17, 4, clim_17, [50 300], [10 48], [2000 8000], [], ...
'firstInlineId', 1, ...
'firstCrosslineId', 1, ...
'startTime', 1, ...
'colormap', seismic(2) ...
);
title('Denosied csg-17', 'Fontsize', 20, 'Fontweight', 'bold');
print(gcf,'-dpng','-r300','./csg_fig/csg_17_3D_denoised.png');

% figure2
figure;
set(gcf, 'position', [ 0   0   600   700]);
movegui('center');
subplot('Position', [0.11 0.13 0.82 0.80]);
stpShow3DVolume(csg_17_1-csg_17, 4, clim_17, [1 1], [1 1], [0], [], ...
    'attributeName', 'Amplitude', ...
    'colormap', seismic(2) ...
);
title('Denosied csg-17', 'Fontsize', 20, 'Fontweight', 'bold');
print(gcf,'-dpng','-r300','./csg_fig/csg_17_3D_denoised_1.png');

%% csg_19
figure;% figure 1
set(gcf, 'position', [ 0   0   600   700]);
movegui('center');
subplot('Position', [0.09 0.13 0.86 0.80]);
stpShow3DVolume(csg_19, 4, clim_19, [50 300], [15 50], [1000 4000], [], ...
'firstInlineId', 1, ...
'firstCrosslineId', 1, ...
'startTime', 1, ...
'colormap', seismic(2) ...
);
title('Denosied csg-19', 'Fontsize', 20, 'Fontweight', 'bold');
print(gcf,'-dpng','-r300','./csg_fig/csg_19_3D_denoised.png');

% figure2
figure;
set(gcf, 'position', [ 0   0   600   700]);
movegui('center');
subplot('Position', [0.11 0.13 0.82 0.80]);
stpShow3DVolume(csg_19, 4, clim_19, [1 1], [1 1], [0], [], ...
    'attributeName', 'Amplitude', ...
    'colormap', seismic(2) ...
);
title('Denosied csg-19', 'Fontsize', 20, 'Fontweight', 'bold');
print(gcf,'-dpng','-r300','./csg_fig/csg_19_3D_denoised_1.png');