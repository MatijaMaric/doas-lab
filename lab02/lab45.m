close all
clear all

pkg load image

[img, cmap] = imread('slike/blood1.tif');

mask = ones(3);
mask = mask / sum2(mask);

img_blur = conv2(img, mask, 'same');

lap = fspecial('laplacian', 0.2);

diff = conv2(img, lap, 'same');

img_sharp = img_blur + 2*diff;
img_sharp = max(0, min(255, img_sharp));

fig = figure();
subplot(2,2,1);
imagesc(img); colormap(gray); title('original');
subplot(2,2,2);
imagesc(img_blur); colormap(gray); title('blurred');
subplot(2,2,3);
imagesc(diff); colormap(gray); title('difference');
subplot(2,2,4);
imagesc(img_sharp); colormap(gray); title('sharpened');
print(fig, 'sharpen', '-dpng');