close all;
clear all;

img = imread('slike/blood1.tif');

[idx, c] = kmeans(im2double(img(:)), 3, 'start', ...
    [0.5:3]'/3);
figure; imagesc(reshape(idx, size(img)));