function r = Bisection(a)
  function pl = f(x,a)
  pl = x^3 - a;
end
    if abs(a)<1
      p=-1;q=1;
    else
      p=-a;q=a;
    endif
    c = (p + q) / 2;

     while abs(f(c,a)) >= 10^(-4)

         if f(c,a) * f(p,a) < 0
             q = c;
         else
             p = c;
         end
         c = (p + q) / 2;
     r = c;
  end
end
