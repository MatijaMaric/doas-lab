close all;
clear all;

img = im2double(rgb2gray(imread('slike/peppers.tiff')));

sobely = fspecial('sobel');
sobelx = rot90(sobely);

prewitty = fspecial('prewitt');
prewittx = rot90(prewitty);

figure;
subplot(1,2,1);
gxs = conv2(img, sobelx, 'same');
gys = conv2(img, sobely, 'same');
gs = sqrt(gxs.*gxs + gys.*gys);
imagesc(gs);
title('sobel');
colormap(gray);

subplot(1,2,2);
gxp = conv2(img, prewittx, 'same');
gyp = conv2(img, prewitty, 'same');
gp = sqrt(gxp.*gxp + gyp.*gyp);
imagesc(gp);
title('prewitt');
colormap(gray);
