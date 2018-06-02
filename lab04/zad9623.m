close all;
clear all;

img = imread('slike/texture.tif');

p = [2, 2];
okolina = [12, 12];

fun = @(x) energy(x, p);
feats = nlfilter(img, okolina, fun);

figure;
imagesc(feats); colormap(gray);

[idx, c] = kmeans(im2double(feats(:)), 5, 'start', ...
    [0.5:5]'/5);

figure; 
imagesc(reshape(idx, size(img))); colormap(gray);
