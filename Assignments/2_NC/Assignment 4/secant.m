function r = secant(f,x0,x1)
  if nargin<1
    x0=0.5;
    x1=2;
  endif
  function p = f(x)
    p = f;
  endfunction
  x2 = x1 - f(x1)/((f(x1)-f(x0))/(x1-x0));
  i=0;
  while(abs(x1-x0)>=5*10^(-16)&& abs(f(x1)-f(x0))>=5*10^(-16))
  x0=x1;
  x1=x2;
  x2= x1 - f(x1)/((f(x1)-f(x0))/(x1-x0));
  i++;
endwhile
r=x0;
i
end
