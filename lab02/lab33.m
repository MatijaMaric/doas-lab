close all
clear all

pkg load image

[img, cmap] = imread('slike/couple.tiff');
fig = figure();
imshow(img);
print(fig, 'couple', '-dpng');


filtarNP = frqflt([512 512], 512/2, 512/2, 256/4);
filtarNP = fftshift(filtarNP);
filtarVP = not(filtarNP);

filtarPP = frqflt([512 512], 512/2, 512/2, 256*6/8) - frqflt([512 512], 512/2, 512/2, 256*2/8);
filtarPP = fftshift(filtarPP);
filtarPB = not(filtarPP);

imgFT = fft2(img);
imgNP = imgFT .* filtarNP;
imgVP = imgFT .* filtarVP;
imgPP = imgFT .* filtarPP;
imgPB = imgFT .* filtarPB;

imgNP = abs(ifft2(imgNP));
imgVP = abs(ifft2(imgVP));
imgPP = abs(ifft2(imgPP));
imgPB = abs(ifft2(imgPB));

fig = figure();
subplot(2,2,1);
imagesc(imgNP); colormap(gray); title('Niskopropusni');
subplot(2,2,2);
imagesc(imgVP); colormap(gray); title('Visokopropusni');
subplot(2,2,3);
imagesc(imgPP); colormap(gray); title('Pojasnopropusni');
subplot(2,2,4);
imagesc(imgPB); colormap(gray); title('Pojasna brana');
print(fig, 'filteri', '-dpng');