function r = newton(x0)
  if nargin<1
    x0=0.5;
  endif
  function p = f(x)
  p = exp(2*x) - exp(x) - 2;
end
i=0;
  x1 = x0 - f(x0)/(2*exp(2*x0)-exp(x0));
  while(abs(x1-x0)>=5*10^(-16) && abs(f(x1)-f(x0))>=5*10^(-16))
  x0 = x0 - f(x0)/(2*exp(2*x0)-exp(x0));
  x1 = x0 - f(x0)/(2*exp(2*x0)-exp(x0));
  i++;
end
iterations = i
r=x0;
end
