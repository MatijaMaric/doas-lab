close all;
clear all;

img = imread('slike/salona.png');

h1 = eye(10)/10;
h2 = fspecial('gaussian', 4, 1);
h = conv2(h1, h2);
imgPSF = conv2(img, h);

figure
subplot(2, 1, 1)
imagesc(img);
colormap(gray)
title('Original')

subplot(2, 1, 2)
imagesc(imgPSF);
colormap(gray)
title('sa PSF')