%% 3D SINC FUNCTION
[X,Y] = meshgrid(-8:.5:8);  % Create a mesh grid on [-8,8]*[-8,8].
R = sqrt(X.^2 + Y.^2) + eps;   % + eps to avoid divide-by-zero error.
Z = sin(R)./R;   % The 3D sinc function.
figure;
mesh(X,Y,Z);