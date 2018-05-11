function res=moment(img,order)
  res=zeros(1,size(img,2));
  for i=1:size(img,2)
    [h,x] = imhist(img(:,i));
    p = h ./ sum(h);
    mean = sum(p.*x);
    if order > 1
        variance = sum(p.*(x-mean).^2);
        if order > 2
            res(1, i) = sum(p.*(x-mean).^order)/(variance.^(order/2));
        else 
            res(1, i) = variance;
        end
    else
        res(1, i) = mean;
  end  
end