function [ans] = correlation_all(A, B)
    ans = zeros(size(B) - size(A));
    [x, y] = size(ans);
    for i = 1:x
       for j = 1:y
          ans(i, j) = correlation(A, B, [i, j]);
       end
    end
end