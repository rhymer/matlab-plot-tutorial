%% PLOTTING MATRIX DATA 2
% You could also specify the value of the x axis.
% Note that in this case plot will try to match the size of x and Y.
x = 1:3;
Y = rand(5,3);  % Generate a 5-by-3 random matrix.
figure;
% Plot 5 rows, because the number of columns matches the length of x.
plot(x,Y);