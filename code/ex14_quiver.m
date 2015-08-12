%% 2D QUIVER
[X,Y] = meshgrid(-2:0.3:2); % Create a mesh grid on [-2,2]*[-2,2].
Z = X.^2 - 3*sin(X.*Y); % Create a scalar field.
[Zx, Zy]= gradient(Z);  % Find its gradient.
figure;
contour(X,Y,Z); % Visualize the scalar field.
hold on;
quiver(X, Y, Zx, Zy, 2); % Plot the vector field grad(Z).