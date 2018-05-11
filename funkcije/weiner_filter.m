function [dicPic] = weiner_filter(img, h, K)
    H = fft2(h, size(img,1), size(img,2));
    Hi = 1 ./ H;
    
    imgF = fft2(img);
    
    Hpi = [];
    for i = 1:size(img, 1)
        for j = 1:size(img, 2)
            if (abs(H(i,j)) > K) 
                Hpi(i, j) = 1 / H(i, j);
            else
                Hpi(i, j) = 0;
            end
        end
    end
    
    Hsq = abs(Hpi) .^ 2;
    Hw = Hpi .* (Hsq ./ (Hsq + K));
    
    dicPic = imgF .* Hw;
    dicPic = ifft2(dicPic);
    
end