clear all;
close all;

img = imread('slike/blood1.tif');

figure;
grayslice(im2double(img), [140 180]/255);