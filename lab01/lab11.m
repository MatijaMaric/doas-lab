close all
clear all

pkg load image

[img, cmap] = imread('slike/uskoci1.png');
img = double(rgb2gray(img));

figure

subplot(2,2,1)
imagesc(img); colormap(gray); title('uskoci1.png')

subplot(2,2,2)
img_rt = sqrt(img);
imagesc(img_rt); colormap(gray); title('sqrt(uskoci1.png)')

subplot(2,2,3)
img_log = log10(img);
imagesc(img_log); colormap(gray); title('log_{10}(uskoci1.png)')

subplot(2,2,4)
img_sq = power(img, 2);
imagesc(img_sq); colormap(gray); title('uskoci.png^2')

figure

x = 0:0.1:10;

subplot(3,1,1)
plot(x, sqrt(x))

subplot(3,1,2)
plot(x, log10(x))

subplot(3,1,3)
plot(x, power(x,2))