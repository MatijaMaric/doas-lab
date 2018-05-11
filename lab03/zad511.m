close all;
clear all;

img = im2double(imread('slike/salona.png'));

h1 = eye(5)/5;
h2 = fspecial('gaussian', 4, 1);
h = conv2(fft2(h1),fft2(h2));

imgN = imnoise(img, 'gaussian', 0, 0.01);
imgNPSF = real(conv2(imgN, h));

imgInv = real(weiner_filter(imgNPSF, h, 0.015));

figure;

subplot(3,1,1);
imagesc(img);
title('Original');
colormap(gray);

subplot(3,1,2);
imagesc(imgNPSF);
title('Sa degradacijom i šumom');
colormap(gray);

subplot(3,1,3);
imagesc(imgInv);
title('Inverz');
colormap(gray);

mse = mse(img, real(imgInv(1:size(img, 1),1:size(img, 2))))
snr = mean2(abs(fft2(img)).^2) / mean2(abs(fft2(imgInv)).^2)