close all;
clear all;

img = im2double(rgb2gray(imread('slike/peppers.tiff')));

imgN = imnoise(img, 'gaussian');

rubSobel = edge(imgN, 'sobel');
rubLog = edge(imgN, 'log');

figure;
subplot(121);
imagesc(rubSobel); title('sobel');
subplot(122);
imagesc(rubLog); title('log');