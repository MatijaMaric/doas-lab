close all
clear all

pkg load image

[img, cmap] = imread('slike/klis2.png');
imshow(img);

# original image 
[amp, ang] = do_fft(img);
figure;
imagesc(amp); colormap(gray);
figure;
imagesc(ang); colormap(gray);

# scaled image
imgV = imresize(img, 2);
ampV = do_fft(imgV);
fig = figure();
subplot(1,2,1);
imagesc(amp); colormap(gray);
subplot(1,2,2);
imagesc(ampV); colormap(gray);
print(fig, 'klis_scaled', '-dpng');

imgM = imresize(img, 0.25);

# rotated image
imgR = imrotate(img, 66, 'bilinear' ,'crop');
[ampR, angR] = do_fft(imgR);
fig = figure();
subplot(1,2,1);
imagesc(amp); colormap(gray);
subplot(1,2,2);
imagesc(ampR); colormap(gray);
print(fig, 'klis_rotated', '-dpng');

# translated image
imgV1 = uint8(zeros(1024));
imgV1(100:100+499, 100:100+418)=img;
[ampV1, angV1] = do_fft(imgV1);

imgV2 = uint8(zeros(1024));
imgV2(400:400+499, 400:400+418)=img;
[ampV2, angV2] = do_fft(imgV2);

figure;
subplot(1,2,1);
imshow(imgV1);
subplot(1,2,2);
imshow(imgV2);

fig = figure();
subplot(2,2,1);
imagesc(ampV1); colormap(gray);
subplot(2,2,2);
imagesc(angV1); colormap(gray);
subplot(2,2,3);
imagesc(ampV2); colormap(gray);
subplot(2,2,4);
imagesc(angV2); colormap(gray);
print(fig, 'klis_translated', '-dpng');