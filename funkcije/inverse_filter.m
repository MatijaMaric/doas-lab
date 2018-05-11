function [invImg] = inverse_filter(img, h)
    H = fft2(h, size(img,1), size(img,2));
    Hi = 1 ./ H;
    
    imgF = fft2(img);
    invImg = imgF .* Hi;
    invImg = ifft2(invImg);
end