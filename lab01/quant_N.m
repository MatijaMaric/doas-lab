function [y] = quant_N(x, N)
  y = quant(x, (max(x(:)) - min(x(:))) / (N-1));
end 