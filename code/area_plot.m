%% AREA PLOT
load count.dat;   % Load data.
Y = count(1:6,:); % Extract the first 6 rows.
figure;
h = area(Y);
grid on;
set(gca,'Layer','top'); % Make grids in the top layer.
set(gca,'XTick',1:size(Y,1)); % Set x ticks.
colormap summer;  % Set area colors.