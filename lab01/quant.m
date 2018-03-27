function [y] = quant(x, d)
  g = 1. / d;
  ans = x .* g;
  ans = round(ans);
  ans = ans ./ g;
  y = ans;
end