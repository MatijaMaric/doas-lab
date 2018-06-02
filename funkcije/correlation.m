function [ans] = correlation(A, B, p)
    lim = size(A) + p - [1 1];
    pB = B(p(1):lim(1), p(2):lim(2));
    
    ans = corr2(A, pB);
end