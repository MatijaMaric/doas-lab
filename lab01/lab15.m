close all
clear all

pkg load image

[img, cmap] = imread('slike/psgamma.tif');
img = ind2rgb(img, cmap);

gammas = [0.4 0.4 0.4];
img = imadjust(img, [], [], gammas);

imshow(img)
set(gcf, 'color', [0,0,0])