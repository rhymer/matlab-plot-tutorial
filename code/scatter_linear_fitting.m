%% GENERATE CORRELATED DATA
N = 50;   % Number of samples.
a = 2;    % Slope.
b = 3;    % Offset.
sigma = 0.3;    % The std of the noise.
x = rand(1,N);  % Generate the x data.
y = a*x + b + sigma*randn(1,N);  % y = a*x + b + noise.
figure;
scatter(x,y);   % Plot the distribution of x and y.
hold all;
%% DATA FITTING
% Find the best fit of (x,y) using 1st-order polynomial.
p = polyfit(x,y,1);     
x_fit = linspace( min(x), max(x), N );  % Generate the x ticks.
y_fit = p(1)*x_fit + p(2);   % Generate the fitting line.
plot(x_fit, y_fit);          % plot the best linear fit.
xlabel('x');
ylabel('y');
text(0.5,0.2,sprintf('$$\\hat{y} = %.1f x + %.1f$$',p(1),p(2)),...
    'interpreter','LaTeX',...
    'Unit','normalized',...
    'FontSize',18);   % Put the formula on the figure.
