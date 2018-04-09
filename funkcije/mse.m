function [rv] = mse(a, b)
  rv = mean(mean((double(a) - double(b)).^2,2),1);
end