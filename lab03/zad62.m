close all;
clear all;

img = imread('slike/clock.tiff');

fun1 = @(x) entropy(x);
fun2 = @(x) energy(x);

img1 = colfilt(img, [5 5], 'sliding', fun1);
img2 = colfilt(img, [5 5], 'sliding', fun2);

figure;
subplot(2,1,1);
imagesc(img1);
title('entropy');
colormap(gray);

subplot(2,1,2);
imagesc(img2);
title('energy');
colormap(gray);