function [ans] = correlation_rotate(A, B, alpha)

    x = max(size(A));

    sA = imresize(A, [x x]);
    sB = imresize(B, [x x]);
    
    rA = imrotate(sA, alpha, 'nearest', 'crop');
    
    ans = corr2(rA, sB);

end