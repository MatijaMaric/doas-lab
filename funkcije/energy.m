function [res] = energy(img)
    res = zeros(1, size(img,2));
    for i = 1:size(img,2)
        [h, x] = imhist(img(:,i));
        p = h / sum(h);
        res(1,i) = (-sum(sum(p.*p)));
    end
end