clear all;
close all;

h1 = eye(7)/7;
h2 = fspecial('gaussian', 4, 1);

figure;
subplot(2,2,1);
mesh(h1);
title('Pomak - PSF');

subplot(2,2,2);
freqz2(h1);
title('Pomak - OTF');

subplot(2,2,3);
mesh(h2);
title('Gauss - PSF');

subplot(2,2,4);
freqz2(h2);
title('Gauss - OTF');