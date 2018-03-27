close all
clear all

pkg load image

[img, cmap] = imread('slike/AB2.tiff');

fig = figure();
imshow(img);
print(fig, 'ab2', '-dpng');

img2 = img(1:39:end, :, :);
fig = figure();
imshow(img2);
print(fig, 'ab21', '-dpng');

img2 = img(1:37:end, :, :);
fig = figure();
imshow(img2);
print(fig, 'ab22', '-dpng');

img2 = img(1:40:end, :, :);
fig = figure();
imshow(img2);
print(fig, 'ab23', '-dpng');