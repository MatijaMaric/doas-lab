close all
clear all

pkg load image

[img1, cmap1] = imread('slike/stream_and_bridge.tiff');
[img2, cmap2] = imread('slike/clock.tiff');

img2 = imresize(img2, [size(img1)], 'bilinear');

img1 = double(img1);
img2 = double(img2);

sum = img1 + img2; sum = sum ./ max(sum);
mul = img1 .* img2; mul = mul ./ max(mul);
sub = img1 - img2; sub = sub ./ max(sub);

figure
imagesc(sum); colormap(gray)

figure
imagesc(mul); colormap(gray)

figure
imagesc(sub); colormap(gray)


[img1, cmap1] = imread('slike/peppers.tiff');
[img2, cmap2] = imread('slike/splash.tiff');

img1 = double(img1);
img2 = double(img2);

sum = img1 + img2; sum = sum ./ max(sum);
mul = img1 .* img2; mul = mul ./ max(mul);
sub = img1 - img2; sub = sub ./ max(sub);

figure
imagesc(sum)

figure
imagesc(mul)

figure
imagesc(sub)

