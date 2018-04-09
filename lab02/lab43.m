close all
clear all

pkg load image

[img1, cmap] = imread('slike/klis2.png');
[img2, cmap] = imread('slike/auto.tif');
img1EQ = histeq(img1);
img2EQ = histeq(img2);

img1MEQ = imscale(img1, [0 1]);
img1MEQN = norminv(img1MEQ, 0.2, 0.44);

img2MEQ = imscale(img2, [0 1]);
img2MEQN = norminv(img2MEQ, 0.1, 0.1);

fig = figure();
subplot(1,2,1);
imagesc(img1MEQ); colormap(gray);
subplot(1,2,2);
imagesc(img1MEQN); colormap(gray);
print(fig, 'klis_model', '-dpng');

fig = figure();
subplot(1,2,1);
imhist(img1MEQ);
subplot(1,2,2);
imhist(img1MEQN);
print(fig, 'klis_model_hist', '-dpng');

fig = figure();
subplot(1,2,1);
imagesc(img2); colormap(gray);
subplot(1,2,2);
imagesc(img2MEQN); colormap(gray);
print(fig, 'registracija', '-dpng');