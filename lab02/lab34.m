close all
clear all

pkg load image

[imgN, cmap] = imread('slike/couple.tiff');
#fig = figure();
#imagesc(imgN); colormap(gray);
#print(fig, 'couple', '-dpng');

imgNCT = dct2(imgN);

[imgP, cmap] = imread('slike/roof.tiff');
#fig = figure();
#imagesc(imgP); colormap(gray);
#print(fig, 'uzorak', '-dpng');

imgPCT = dct2(imgP);

imgNCT = 20 * log10(1 + abs(imgNCT));
imgPCT = 20 * log10(1 + abs(imgPCT));

fig = figure();
subplot(2,2,1);
imagesc(imgN); colormap(gray);
subplot(2,2,2);
imagesc(imgNCT); colormap(gray);
#print(fig, 'cosine_couple', '-dpng');

#fig = figure();
subplot(2,2,3);
imagesc(imgP); colormap(gray);
subplot(2,2,4);
imagesc(imgPCT); colormap(gray);
print(fig, 'cosine', '-dpng');