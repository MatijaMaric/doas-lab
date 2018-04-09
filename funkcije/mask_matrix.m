function [m] = mask_matrix(N, shape)
  m = zeros(8);
  if (strcmp('square', shape) == 1)
    for i = 1:1:N
      for j = 1:1:N
        m(i, j) = 1;
      end
    end
  elseif (strcmp('triangle', shape) == 1)
    for i = 1:1:N
      for j = 1:1:N-i+1
        m(i, j) = 1;
      end
    end
  end
end