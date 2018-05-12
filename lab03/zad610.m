close all;
clear all;

img1 = im2double(rgb2gray(imread('slike/tekstura_nebo.png')));
img2 = im2double(rgb2gray(imread('slike/tekstura_plast1.png')));

okolina = [12, 12];
fun = @(x) covariance(x, [2, 2]);

img1c = nlfilter(img1, okolina, fun);
img2c = nlfilter(img2, okolina, fun);

figure;
subplot(2,1,1);
imagesc(img1);
colormap(gray);

subplot(2,1,2);
imagesc(img2);
colormap(gray);

figure;
subplot(2,1,1);
imagesc(img1c);
colormap(gray);

subplot(2,1,2);
imagesc(img2c);
colormap(gray);