function dist = Dist(a,b)
    f = @(x) x^2 - b +  (x-a)/2*a
    df = @(x) 2*x + 1/2*a
    d = @(x) sqrt((x-a)^2 + (x^2 - b)^2)
    % Initial guess
    x0 = 0.5;
    tol = 1e-4; % Tolerance
    maxIter = 1000; % Maximum number of iterations

    for iter = 1:maxIter
        x1 = x0 - f(x0) / df(x0);
        if abs(x1 - x0) < tol
            x0 = x1;
            break;
        endif
        x0 = x1;
    endfor
if sign(x0) ~= sign(a)
	x0 = -0.5
    for iter = 1:maxIter
        x1 = x0 - f(x0) / df(x0);
        if abs(x1 - x0) < tol
            x0 = x1;
            break;
        endif
        x0 = x1;
    endfor
endif
distance = d(x0)
fprintf("%d, %d \n",x0, x0^2);

 return
end
