close all
clear all

pkg load image

[img1, cmap] = imread('slike/testpat1.tif');
[img2, cmap] = imread('slike/uzorak.tif');

img1 = imresize(img1, 1/4, 'nearest');
img2 = imresize(img2, 1/4, 'nearest');

fig = figure();
imshow(img1);
print(fig, 'testpat1small', '-dpng');

fig = figure();
imshow(img2);
print(fig, 'uzoraksmall', '-dpng');