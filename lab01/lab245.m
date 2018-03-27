close all
clear all

pkg load image

[img, cmap] = imread('slike/fence.jpg');
img = rgb2gray(img);

fig = figure();
imshow(img);
print(fig, 'fence', '-dpng');

fig = figure();
imgS = img(1:5:end, 1:5:end, :);
imshow(imgS)
print(fig, 'fenceAlias', '-dpng');