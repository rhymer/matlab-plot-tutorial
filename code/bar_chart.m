%% BAR CHART
load count.dat;       % Load data.
Y = count(1:6,:);     % Extract the first 6 rows.
figure;
h = bar(Y,'grouped'); % Creat the bar chart with grouped bars.
set(h,'LineWidth', 2, 'LineStyle',':'); % Set line style and width.
colormap('summer');   % Set the color of the bars.