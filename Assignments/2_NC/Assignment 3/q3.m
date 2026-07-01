angles = [0, 60, 120, 180];
fprintf('theta\tsin(theta)\tcos(theta)\n');
for i = 1:length(angles)
theta = angles(i);
theta_rad = deg2rad(theta);
sin_value = sin(theta_rad);
cos_value = cos(theta_rad);
fprintf('%d\t%0.4f\t\t%0.4f\n', theta, sin_value, cos_value);
end
