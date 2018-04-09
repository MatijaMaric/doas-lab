function [y] = norm_fft2(x)
  x_ftt = fft2(x);
  x_ftt = x_ftt / prod(size(x_ftt));
  x_ftt = fftshift(x_ftt);
  y = x_ftt;
end