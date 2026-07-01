function result = newsqrt(x, max_iter, error_tol)
if nargin < 2
max_iter = 100; % Default maximum number of iterations
end
if nargin < 3
error_tol = 1e-10; % Default acceptable error value
end
if x <= 0
error('Input must be a positive number.');
end
result = x / 2;
iter = 0;
while abs(result^2 - x) > error_tol && iter < max_iter
result = 0.5 * (result + x / result);
iter = iter + 1;
end
end
