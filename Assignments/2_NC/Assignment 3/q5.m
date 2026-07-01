function bugbreak(n)
x = rand(1, n);
k = 1;
while k <= n
if x(k) > 0.7
break;
end
k = k + 1;
end
fprintf('x(k) = %f for k = %d n = %d \n', x(min(k, n)), k, n);
end