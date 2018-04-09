close all
clear all

pkg load image

[img, cmap] = imread('slike/moon.tiff');

fig = figure();
imagesc(img); colormap(gray);
print(fig, 'moon', '-dpng');

mask = ones(3);
mask = mask / sum2(mask);

img_blur = conv2(img, mask, 'same');

lap1 = fspecial('laplacian', 0);
lap2 = 3*fspecial('laplacian', 0.5);

img_lap1 = conv2(img, lap1, 'same');
img_lap2 = conv2(img, lap2, 'same');

img_sharp1 = img_blur + img_lap1;
img_sharp1 = max(0, min(255, img_sharp1));

img_sharp2 = img_blur + img_lap2;
img_sharp2 = max(0, min(255, img_sharp2));

fig = figure();
subplot(1,2,1);
imagesc(img_sharp1); colormap(gray);
subplot(1,2,2);
imagesc(img_sharp2); colormap(gray);
print(fig, 'moon_lap', '-dpng');