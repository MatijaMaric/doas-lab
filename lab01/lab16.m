close all
clear all

pkg load image

[img, cmap] = imread('slike/klis2.png');
img = double(img);
img = img ./ max(img);

mask1 = [1 0 -1; 2 0 -2; 1 0 -1] / 4;
mask2 = [1 1 1; 0 0 0; -1 -1 -1] / 3;
mask3 = [-1 -1 -1; -1 8 -1; -1 -1 -1];
mask4 = [0 -1 0; -1 4 -1; 0 -1 0];

imgC1 = conv2(img, mask1, 'valid');
imgC2 = conv2(img, mask2, 'same');
imgC3 = conv2(img, mask3);
imgC4 = conv2(img, mask4);

figure
imshow(img)

figure
subplot(2,2,1);
imshow(imgC1); title('(a)')

subplot(2,2,2);
imshow(imgC2); title('(b)')

subplot(2,2,3);
imshow(imgC3); title('(c)')

subplot(2,2,4);
imshow(imgC4); title('(d)')


maskAvg = ones(4,4);
imgAvg = conv2(img, maskBrightness);
imgAvg = imgBrightness ./ max(imgBrightness);

figure
imshow(imgAvg)