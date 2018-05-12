close all;
clear all;

img = im2double(imread('slike/texture.tif'));

Ps = [[2, 2]; [4, 4]; [3, 5]];
okolina = [12, 12];

for i = 1:3
    fun1 = @(x) absolute(x, Ps(i, :));
    fun2 = @(x) inertia(x, Ps(i,:));
    fun3 = @(x) covariance(x, Ps(i,:));
    fun4 = @(x) energy(x, Ps(i,:));
    fun5 = @(x) entropy(x, Ps(i,:));
    
    img1 = nlfilter(img, okolina, fun1);
    img2 = nlfilter(img, okolina, fun2);
    img3 = nlfilter(img, okolina, fun3);
    img4 = nlfilter(img, okolina, fun4);
    img5 = nlfilter(img, okolina, fun5);
    
    figure;
    subplot(3,2,1);
    imagesc(img);
    title('original');
    colormap(gray);
    
    subplot(3,2,2);
    imagesc(img1);
    title('absolute');
    colormap(gray);
    
    subplot(3,2,3);
    imagesc(img2);
    title('inertia');
    colormap(gray);
    
    subplot(3,2,4);
    imagesc(img3);
    title('covariance');
    colormap(gray);
    
    subplot(3,2,5);
    imagesc(img4);
    title('energy');
    colormap(gray);
    
    subplot(3,2,6);
    imagesc(img5);
    title('entropy');
    colormap(gray);
    
end
