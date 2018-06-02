clear all;
close all;

img = imread('slike/blood1.tif');

figure;
subplot(121);
grayslice(im2double(img), 130/255 + 0.2);

subplot(122);
grayslice(im2double(img), 130/255 - 0.2);