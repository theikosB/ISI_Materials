function y = new_polyint(C,upperlim,lowerlim)
  D = polyint(C);
  polyval(D,upperlim)-polyval(D,lowerlim)
end

