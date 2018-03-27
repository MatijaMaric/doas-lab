close all
clear all

pkg load image

[img, cmap] = imread('slike/salona.png');
imshow(img)
img = double(img);
img = img ./ max(img);

figure
for i = 1:8
  N = 2^i;
  subplot(2,4,i);
  imgQ = quant_N(img, N);
  imshow(imgQ)
end