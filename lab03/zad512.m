close all;
clear all;

img = im2double(imread('slike/salona.png'));

imgN = imnoise(img, 'gaussian', 0, 0.01);

rxx = akf(imgN, 30);

imagesc(rxx);