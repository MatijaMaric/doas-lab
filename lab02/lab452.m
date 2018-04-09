close all
clear all

pkg load image

[img, cmap] = imread('slike/medalja_dubrovnik.png');

mask = ones(3);
mask = mask / sum2(mask);

img_blur = conv2(img, mask, 'same');

diff = img - img_blur;

img_sharp = img_blur + 3*diff;
img_sharp = max(0, min(255, img_sharp));

fig = figure();
subplot(1,2,1);
imagesc(img); colormap(gray);
subplot(1,2,2);
imagesc(img_sharp); colormap(gray);
print(fig, 'medalja_blur', '-dpng');