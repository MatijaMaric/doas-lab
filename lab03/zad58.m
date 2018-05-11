close all;
clear all;

img = im2double(imread('slike/salona.png'));

q = (max(img(:)) - min(img(:))) / (2^8 - 1);
img = quant(img, q);

h1 = eye(5)/5;
h2 = fspecial('gaussian', 4, 1);
h = conv2(fft2(h1),fft2(h2));

imgN = imnoise(img, 'gaussian', 0, 0.01);
imgPSF = real(conv2(img, h));
imgNPSF = real(conv2(imgN, h));

imgInv = real(pseudo_inverse(imgPSF, h, 0.05));
imgNInv = real(pseudo_inverse(imgNPSF, h, 0.05));

figure;

subplot(3,2,1);
imagesc(img);
title('Original');
colormap(gray);

subplot(3,2,2);
imagesc(img);
title('Original');
colormap(gray);

subplot(3,2,3);
imagesc(imgPSF);
title('Zamućena');
colormap(gray);

subplot(3,2,4);
imagesc(imgNPSF);
title('Zamućena sa šumom');
colormap(gray);

subplot(3,2,5);
imagesc(imgInv);
title('Inverz');
colormap(gray);

subplot(3,2,6);
imagesc(imgNInv);
title('Inverz');
colormap(gray);

mse1 = mse(img, real(imgInv(1:size(img, 1),1:size(img, 2))))
mse2 = mse(img, real(imgNInv(1:size(img, 1),1:size(img, 2))))