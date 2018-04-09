close all
clear all

pkg load image

[img, cmap] = imread('slike/medalja_dubrovnik.png');

mask = ones(3);
mask = mask / sum2(mask);

img_blur = conv2(img, mask, 'same');

sob = fspecial('sobel');

img_sobel = conv2(img, sob, 'same');

img_sharp = img_blur + img_sobel;
img_sharp = max(0, min(255, img_sharp));

fig = figure();
subplot(1,2,1);
imagesc(img); colormap(gray);
subplot(1,2,2);
imagesc(img_sharp); colormap(gray);
print(fig, 'medalja_sobel', '-dpng');