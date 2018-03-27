close all
clear all

pkg load image

[img, cmap] = imread('slike/tree.tiff');

figure
subplot(2,2,1);
imagesc(img); title('original')
imgG = imadjust(img, [], [], 0.5);
subplot(2,2,2);
imagesc(imgG); title('\gamma = 0.5')
imgG = imadjust(img, [], [], 0.6);
subplot(2,2,3);
imagesc(imgG); title('\gamma = 0.6')
imgG = imadjust(img, [], [], 0.7);
subplot(2,2,4);
imagesc(imgG); title('\gamma = 0.7')