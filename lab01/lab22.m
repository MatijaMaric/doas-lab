close all
clear all

pkg load image

[img, cmap] = imread('slike/asinh1.tiff');

for i = 1:10
  imgS = img(1:i:end, 1:i:end,:);
  fig = figure();
  imshow(imgS);
  print(fig, sprintf('sample_%d', i), '-dpng');
end
