close all
clear all

pkg load image

[img1, cmap] = imread('slike/testpat1.tif');
[img2, cmap] = imread('slike/testpat2.tif');

img1L = filter2(H, img1);
img2L = filter2(H, img2);

img1S = img1L(1:4:end, 1:4:end, :);
img2S = img2L(1:4:end, 1:4:end, :);

fig = figure()
imagesc(img1L); colormap(gray);
print(fig, 'testpat1L', '-dpng');

fig = figure()
imagesc(img2L); colormap(gray);
print(fig, 'testpat2L', '-dpng');


fig = figure()
imagesc(img1S); colormap(gray);
print(fig, 'testpat1LS', '-dpng');

fig = figure()
imagesc(img2S); colormap(gray);
print(fig, 'testpat2LS', '-dpng');