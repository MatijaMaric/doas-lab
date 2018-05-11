close all;
clear all;

img = im2double(imread('slike/saturn.tif'));

D = [1, 3, 5, 10];

figure;
for i = 1:4
    subplot(2,2,i);
    imgT1 = img(1+D(i):end, 1+D(i):end);
    imgT2 = img(1:end-D(i), 1:end-D(i));
    
    hist3([imgT1(:), imgT2(:)]);
    
end