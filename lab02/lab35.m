close all
clear all

pkg load image

[img, cmap] = imread('slike/kljakovic2.png');
img = rgb2gray(img);
img = imresize(img, [352 304]);
%{
M = mask_matrix(6, 'square');

imgT = blockproc(img, [8 8], 'dct2');
imgT = blockproc(imgT, [8 8], inline('x.*P1'), M);
imgO = blockproc(imgT, [8 8], 'idct2');

fig = figure();
subplot(1,2,1);
imagesc(img); colormap(gray);
subplot(1,2,2);
imagesc(imgO); colormap(gray);
print(fig, 'dct_compression', '-dpng');

mse = mean(mean((double(img) - double(imgO)).^2,2),1)
%}

mse_s = [];
mse_t = [];

mse_sk = [];
mse_tk = [];

imgD = blockproc(img, [8 8], 'dct2');

for N = 1:1:8
  M_s = mask_matrix(N, 'square');
  M_t = mask_matrix(N, 'triangle');
  
  imgS = blockproc(imgD, [8 8], inline('x.*P1'), M_s);
  imgT = blockproc(imgD, [8 8], inline('x.*P1'), M_t);
  
  imgSK = quant_N(imgS, 32);
  imgTK = quant_N(imgT, 32);
  
  imgOS = blockproc(imgS, [8 8], 'idct2');
  imgOT = blockproc(imgT, [8 8], 'idct2');
  
  imgOSK = blockproc(imgSK, [8 8], 'idct2');
  imgOTK = blockproc(imgTK, [8 8], 'idct2');
  
  fig = figure();
  subplot(2,2,1);
  imagesc(imgOS);
  subplot(2,2,2);
  imagesc(imgOT);
  subplot(2,2,3);
  imagesc(imgOSK);
  subplot(2,2,4);
  imagesc(imgOTK);
  
  mse_s = [mse_s, mse(img, imgOS)];
  mse_t = [mse_t, mse(img, imgOT)];
  mse_sk = [mse_sk, mse(img, imgOSK)];
  mse_tk = [mse_tk, mse(img, imgOTK)];
end

fig = figure();
subplot(1,2,1);
hold on;
plot(mse_s, '-r'); title('Kvadratni filter'); xlabel('N'); ylabel('mse');
plot(mse_sk, '-b');
hold off;
subplot(1,2,2);
hold on;
plot(mse_t, '-r'); title('Trokutasti filter'); xlabel('N'); ylabel('mse');
plot(mse_tk, '-b'); legend('bez kvant.', 'sa kvant');
hold off;
print(fig, 'mse_plots', '-dpng');
