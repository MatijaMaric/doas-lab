close all;
clear all;

img = imread('slike/klis1.jpg'); 
img = im2double(img);
r = img(:,:,1); 
g = img(:,:,2); 
b = img(:,:,3);

h1 = eye(10)/10;
h2 = fspecial('gaussian', 4, 1);
h = conv2(h1, h2);

imgPSF_r = conv2(double(r), h); 
imgPSF_g = conv2(double(g), h); 
imgPSF_b = conv2(double(b), h); 
 
imgPSF_all = cat(3, imgPSF_r, imgPSF_g, imgPSF_b);

figure
subplot(1,2,1);
imagesc(img);
title('Original');
subplot(1,2,2);
imagesc(imgPSF_all);
title('sa PSF');