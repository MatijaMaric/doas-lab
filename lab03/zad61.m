close all;
clear all;

img = im2double(imread('slike/clock.tiff'));

fun1 = @(x) max(x);
fun2 = @(x) min(x);
fun3 = @(x) mean(x);
fun4 = @(x) std(x);

img1 = colfilt(img, [8 8], 'sliding', fun1);
img2 = colfilt(img, [8 8], 'sliding', fun2);
img3 = colfilt(img, [8 8], 'sliding', fun3);
img4 = colfilt(img, [8 8], 'sliding', fun4);

figure;
subplot(2,2,1);
imagesc(img1);
title('max');
colormap(gray);

subplot(2,2,2);
imagesc(img2);
title('min');
colormap(gray);

subplot(2,2,3);
imagesc(img3);
title('mean');
colormap(gray);

subplot(2,2,4);
imagesc(img4);
title('std');
colormap(gray);

