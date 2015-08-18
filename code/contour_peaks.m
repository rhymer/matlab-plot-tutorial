%% CONTOUR PLOT
Z = peaks;  % Load the height information in a matrix.
n_level = 20;  % Number of contour levels.
figure;
contour(Z,n_level); 
colormap('Hot'); % Set color map to hot.