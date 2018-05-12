close all;
clear all;

img = im2double(rgb2gray(imread('slike/peppers.tiff')));

h0 = [1 1 1; 0 0 0; -1 -1 -1];
h45 = [1 1 0; 1 0 -1; 0 -1 -1];
h90 = [1 0 -1; 1 0 -1; 1 0 -1];

g0 = conv2(img, h0, 'same');
g45 = conv2(img, h45, 'same');
g90 = conv2(img, h90, 'same');

figure;
subplot(1,3,1);
imagesc(g0);
title('0°');
colormap(gray);

subplot(1,3,2);
imagesc(g45);
title('45°');
colormap(gray);

subplot(1,3,3);
imagesc(g90);
title('90°');
colormap(gray);