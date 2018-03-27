close all
clear all

pkg load image

[img, cmap] = imread('slike/prof_baltazar.png');
img = rgb2gray(img);

dio = img(150:259, 70:199);

dioM = imresize(dio, 1/5, 'nearest');
dioV = imresize(dioM, 5, 'nearest');

img(150:259, 70:199) = dioV;

imshow(img)