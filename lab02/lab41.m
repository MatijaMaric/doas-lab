close all
clear all

pkg load image

[img1, cmap1] = imread('slike/klis2.png');
[img2, cmap2] = imread('slike/couple.tiff');

fig = figure();
subplot(2,2,1);
imagesc(img1);
subplot(2,2,2);
imhist(img1);
subplot(2,2,3);
imagesc(img2);
subplot(2,2,4);
imhist(img2);
print(fig, 'histograms', '-dpng');