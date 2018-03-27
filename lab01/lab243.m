close all
clear all

pkg load image

[img, cmap] = imread('slike/uzorak.tif');

fig = figure();
imshow(img);
print(fig, 'uzorak', '-dpng');

imgS1 = img(1:2:end, :, :);
imgS2 = img(:, 1:3:end, :);

fig = figure();
imshow(imgS1);
print(fig, 'uzorakS1', '-dpng');

fig = figure();
imshow(imgS2);
print(fig, 'uzorakS2', '-dpng');