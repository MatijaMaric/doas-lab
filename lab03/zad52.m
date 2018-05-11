clear all;
close all;

h1 = eye(10)/10;
h2 = fspecial('gaussian', 4, 1);
h = conv2(h1, h2);

figure
subplot(2, 1, 1)
mesh(h)
title('PSF')

subplot(2, 1, 2)
freqz2(h)
title('OTF')