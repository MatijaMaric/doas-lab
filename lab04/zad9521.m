close all;
clear all;

img = im2double(rgb2gray(imread('slike/peppers.tiff')));

rub1 = edge(img, 'sobel', 0.04);
rub2 = edge(img, 'sobel', 0.06);
rub3 = edge(img, 'sobel', 0.08);

figure;
subplot(131);
imagesc(rub1); title('0.04');
subplot(132);
imagesc(rub2); title('0.06');
subplot(133); 
imagesc(rub3); title('0.08');