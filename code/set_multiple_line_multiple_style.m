%% SET MULTYPLE PROPERTIES FOR MULTIPLE LINES
t = 0:0.1:15;   % Create data series.
n = [0:3,10];   % Parameters of Bessel function.
x = zeros(length(n),length(t));  % Allocate space.
line_style = {'-';'--';'-.';':';'.'}; % Set the line style order.
for I = 1:length(n)               % For each parameter, compute 
    x(I,:) = besselj(n(I),t);     % the corresponding Bessel function.
end
figure;
h = plot(t,x);  % Plot each column.
prop_name = { 'LineStyle', 'LineWidth' }; % The property names. Row vector.
line_width = { 1; 2; 3; 4; 1 };  % 5 line widths.
prop_val = [ line_style, line_width ]; % 5-by-2 value matrix.
set(h,prop_name,prop_val); % See help of set for this usage.