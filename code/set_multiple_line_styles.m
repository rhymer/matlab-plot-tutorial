%% SET STYLES FOR MULTIPLE LINES
t = 0:0.1:15;   % Create data series.
n = [0:3,10];   % Parameters of Bessel function.
x = zeros(length(n),length(t));  % Allocate space.
line_style = {'-';'--';'-.';':';'.'}; % Set the line style order.
for I = 1:length(n)
    x(I,:) = besselj(n(I),t);
end
figure;
h = plot(t,x);
% Use set with cell array. Type 'help set' for more information.
set(h,{'LineStyle'},line_style); 