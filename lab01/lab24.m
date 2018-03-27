close all
clear all

pkg load image

[img, cmap] = imread('slike/asinh1.tiff');
H = fspecial('average', 3);
imgL = filter2(H, img);

fig = figure()
imshow(imgL)

print(fig, 'asinhL', '-dpng');

for i = 1:10
  imgS = imgL(1:i:end, 1:i:end,:);
  fig = figure();
  imshow(imgS);
  print(fig, sprintf('sampleL_%d', i), '-dpng');
end

