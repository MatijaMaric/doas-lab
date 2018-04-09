function [ans] = imnorm(img)
  low = min(img(:));
  high = max(img(:));
  ans = (img - low) / (high - low);
end