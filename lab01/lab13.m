close all
clear all

pkg load image

[img1, cmap1] = imread('slike/angio0.tif');
[img2, cmap2] = imread('slike/angio1.tif');

sub = img1 - img2;

figure
imagesc(sub); colormap(gray)