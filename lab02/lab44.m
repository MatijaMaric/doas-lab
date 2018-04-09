close all
clear all

pkg load image

[img, cmap] = imread('slike/casablanca.png');
imgGN = imnoise(img, 'gaussian');
imgSP = imnoise(img, 'salt & pepper');

fig = figure();
imagesc(img); colormap(gray); title('original');

fig = figure();
subplot(1,2,1);
imagesc(imgGN); colormap(gray); title('gauss');
subplot(1,2,2);
imagesc(imgSP); colormap(gray); title('salt & pepper');
print(fig, 'noise', '-dpng');

maska = ones(5);
maska = maska / sum2(maska);

fig = figure();
subplot(1,2,1);
imgMF = medfilt2(imgGN, [5 5]);
imagesc(imgMF); colormap(gray); title('median');
subplot(1,2,2);
imgSF = conv2(imgGN, maska, 'same');
imagesc(imgSF); colormap(gray); title('usrednjavanje');
print(fig, 'noise_gauss', '-dpng');

fig = figure();
subplot(1,2,1);
imgMF = medfilt2(imgSP, [5 5]);
imagesc(imgMF); colormap(gray); title('median');
subplot(1,2,2);
imgSF = conv2(imgSP, maska, 'same');
imagesc(imgSF); colormap(gray); title('usrednjavanje');
print(fig, 'noise_snp', '-dpng');