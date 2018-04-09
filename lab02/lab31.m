close all
clear all

pkg load image

[img1, cmap] = imread('slike/klis2.png');
[img2, cmap] = imread('slike/misal_1483.png');

img1FT = fft2(img1);
img1FT = img1FT / prod(size(img1FT));
img1FT = fftshift(img1FT);

amp1 = 20*log(abs(img1FT));
ph1 = angle(img1FT);

figure, imshow(img1);

figure('position', [0, 0, 800, 400]);
subplot(1,2,1);
imagesc(amp1); colormap(gray);
subplot(1,2,2);
imagesc(ph1); colormap(gray);

img2FT = fft2(img2);
img2FT = img2FT / prod(size(img2FT));
img2FT = fftshift(img2FT);

amp2 = 20*log(abs(img2FT));
ph2 = angle(img2FT);

figure, imshow(img2);
figure('position', [0, 0, 800, 400]);
subplot(1,2,1);
imagesc(amp2); colormap(gray);
subplot(1,2,2);
imagesc(ph2); colormap(gray);