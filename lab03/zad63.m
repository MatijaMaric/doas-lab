close all;
clear all;

img = im2double(imread('slike/lenna.png'));

figure;
subplot(1,2,1);
img1 = img(2:end, 2:end, :);
img2 = img(1:end-1, 1:end-1, :);

hist3([img1(:), img2(:)]);

subplot(1,2,2);
img1 = img(6:end, 6:end, :);
img2 = img(1:end-5, 1:end-5, :);

hist3([img1(:), img2(:)]);