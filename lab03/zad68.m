close all;
clear all;

img = double(rgb2gray(imread('slike/peppers.tiff')));
%img = img ./ max(img(:));

lap1 = fspecial('laplacian', 0);
lap2 = fspecial('laplacian', 0.2);
lap3 = fspecial('laplacian', 0.5);
lap4 = fspecial('laplacian', 1);

g1 = conv2(img, lap1, 'same');
g2 = conv2(img, lap2, 'same');
g3 = conv2(img, lap3, 'same');
g4 = conv2(img, lap4, 'same');

figure;
subplot(2,2,1);
image(g1);
title('laplacian(0)');
colormap(gray);

subplot(2,2,2);
image(g2);
title('laplacian(0.2)');

subplot(2,2,3);
image(g3);
title('laplacian(0.5)');

subplot(2,2,4);
image(g4);
title('laplacian(1)');
