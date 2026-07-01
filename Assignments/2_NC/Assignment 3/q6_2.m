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
for iter = 1:max_iter
result = 0.5 * (result + x / result);
if abs(result^2 - x) < error_tol
break;
end
end
end
>> newsqrt(25)
ans = 5
>> newsqrt(36)
ans = 6
>> newsqrt(2)
ans = 1.4142
>> newsqrt(2, 56, 48)
ans = 1.5000
>> newsqrt(2, 56, .1)
ans = 1.4167