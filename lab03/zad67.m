close all;
clear all;

img = im2double(rgb2gray(imread('slike/peppers.tiff')));

h0 = [1 1 1; 0 0 0; -1 -1 -1];
h45 = [1 1 0; 1 0 -1; 0 -1 -1];
h90 = [1 0 -1; 1 0 -1; 1 0 -1];

g0 = conv2(img, h0, 'same');
g45 = conv2(img, h45, 'same');
g90 = conv2(img, h90, 'same');

fft0 = fft2(g0);
fft0 = fft0 / prod(size(fft0));
fft0 = fftshift(fft0);
amp0 = 20*log10(abs(fft0));
ang0 = angle(fft0);

fft45 = fft2(g45);
fft45 = fft45 / prod(size(fft45));
fft45 = fftshift(fft45);
amp45 = 20*log10(abs(fft45));
ang45 = angle(fft45);

fft90 = fft2(g90);
fft90 = fft90 / prod(size(fft90));
fft90 = fftshift(fft90);
amp90 = 20*log10(abs(fft90));
ang90 = angle(fft90);

figure;
subplot(3,2,1);
imagesc(amp0);
colormap(gray);

subplot(3,2,2);
imagesc(ang0);

subplot(3,2,3);
imagesc(amp45);

subplot(3,2,4);
imagesc(ang45);

subplot(3,2,5);
imagesc(amp90);

subplot(3,2,6);
imagesc(ang90);
