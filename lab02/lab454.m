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

lap = fspecial('laplacian', 0.5);
sob = fspecial('sobel');

img_lap = conv2(img, lap, 'same');
img_sob = conv2(img, sob, 'same');

img_sharp_lap = img_blur + 3 * img_lap;
img_sharp_lap = max(0, min(255, img_sharp_lap));

img_sharp_sob = img_blur + img_sob;
img_sharp_sob = max(0, min(255, img_sharp_sob));

fig = figure();
subplot(1,2,1);
imagesc(img_sharp_sob); colormap(gray); title('sobel');
subplot(1,2,2);
imagesc(img_sharp_lap); colormap(gray); title('laplacian');
print(fig, 'moon_sharpen', '-dpng');