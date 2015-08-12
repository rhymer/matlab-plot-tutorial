%% POLAR PLOT THE BUTTERFLY CURVE
theta = 0:0.01:24*pi;   % The angle vector.
% The radius vector.
r = exp(sin(theta)) - 2*cos(4*theta) + sin( (2*theta-pi)/24 ).^5;
figure;
polar(theta,r);