%% PIE CHART
Y = 1:5;        % Generate data.
explode = zeros(1,length(Y));
explode(3) = 1; % Determine which piece of the pie to separate.
figure;
pie(Y,explode);