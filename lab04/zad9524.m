close all;
clear all;

img = im2double(rgb2gray(imread('slike/peppers.tiff')));

rub = edge(img, 'canny');

imagesc(rub);