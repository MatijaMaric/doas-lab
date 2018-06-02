close all;
clear all;

img1 = imread('slike/auto1.tiff');
img2 = imread('slike/slika1.tiff');

cor = correlation_all(img1, img2);

mesh(cor);

[mx, my] = ind2sub(size(cor), find(cor(:)==max(cor(:))))
figure;
imshow(img2);
rectangle('Position', [my mx size(img1,2) size(img1,1)]);