function [amp, ang] = do_fft(x)
  x_ftt = norm_fft2(x);
  amp = 20 * log10(abs(x_ftt));
  ang = angle(x_ftt);
end