function [pinvImg] = pseudo_inverse(img, h, K)
    H = fft2(h, size(img,1), size(img,2));
    Hpi = 1 ./ H;
    Hpi(Hpi <= K) = 0;
    
    imgF = fft2(img);
    
    pinvImg = imgF .* Hpi;
    pinvImg = ifft2(pinvImg);
end