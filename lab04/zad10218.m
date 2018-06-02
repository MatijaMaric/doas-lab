close all;
clear all;

img1 = imread('slike/auto1.tiff');
img2 = imread('slike/auto2.tiff');

cor = zeros(1, 360);

for i = 0:359
    cor(i+1) = correlation_rotate(img1, img2, i);
end

plot(cor);
grid on