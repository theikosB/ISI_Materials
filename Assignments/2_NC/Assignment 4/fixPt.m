function r = fixPt()
  f = @(x)(1+x)^(1/3);
  g = @(x)atan(x);
  h = @(x)acos(e^(-x));
  max=1000;
  i=0;
  x1=1.5;x2=0.5;x3=-0.42;
  while(i<max)
  x1=f(x1);
  x2=g(x2);
  x3=h(x3);
  i++;
endwhile
x1
x2
x3
end
