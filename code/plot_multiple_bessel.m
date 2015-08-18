%% USING CELL ARRAY TO STORE LINE STYLES
t = 0:0.1:15;   % Create data series.
n = [0:3,10];   % Parameters of Bessel function.
x = zeros(length(n),length(t));  % Allocate space.
line_style = {'-';'--';'-.';':';'.'}; % Set the line style order.
figure;
hold all;  % Hold the line style. Very important!
for I = 1:length(n)               % For each parameter,
    x(I,:) = besselj(n(I),t);     % plot the corresponding Bessel function
    plot(t,x(I,:),line_style{I}); % with the specified line style.
end