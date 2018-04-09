close all
clear all

pkg load image

[img1, cmap] = imread('slike/uskoci1.png');
[img2, cmap] = imread('slike/salona.png');
img1 = rgb2gray(img1);
img1EQ = histeq(img1);
img2EQ = histeq(img2);

fig = figure();
subplot(2,2,1);
imagesc(img1); colormap(gray);
subplot(2,2,2);
imagesc(img1EQ); colormap(gray);
subplot(2,2,3);
imagesc(img2); colormap(gray);
subplot(2,2,4);
imagesc(img2EQ); colormap(gray);

print(fig, 'equalized', '-dpng');


fig = figure();
subplot(2,2,1);
imhist(img1);
subplot(2,2,2);
imhist(img1EQ);
subplot(2,2,3);
imhist(img2);
subplot(2,2,4);
imhist(img2EQ);

print(fig, 'equalized_histograms', '-dpng');