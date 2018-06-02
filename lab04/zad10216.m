close all;
clear all;

imgAuto = imread('slike/auto1.tiff');
img2 = imread('slike/slika2.tiff');
img3 = imread('slike/slika3.tiff');
img4 = imread('slike/slika4.tiff');

figure;

cor2 = correlation_all(imgAuto, img2);
[mx1, my1] = ind2sub(size(cor2), find(cor2(:)==max(cor2(:))))
subplot(131);
imshow(img2);
rectangle('Position', [my1 mx1 size(imgAuto,2) size(imgAuto,1)]);

cor3 = correlation_all(imgAuto, img3);
[mx2, my2] = ind2sub(size(cor3), find(cor3(:)==max(cor3(:))))
subplot(132);
imshow(img3);
rectangle('Position', [my2 mx2 size(imgAuto,2) size(imgAuto,1)]);

cor4 = correlation_all(imgAuto, img4);
[mx3, my3] = ind2sub(size(cor4), find(cor4(:)==max(cor4(:))))
subplot(133);
imshow(img4);
rectangle('Position', [my3 mx3 size(imgAuto,2) size(imgAuto,1)]);
