clear all;
close all;

img = imread('slike/blood1.tif');

figure;
subplot(121);
imhist(img);
subplot(122);
grayslice(im2double(img), 130/255);