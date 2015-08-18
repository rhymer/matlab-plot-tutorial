%% 
t = 0:0.01:1;   % Create time vector.
X = zeros(length(t), 10);   % Initialize data array before for loop.
for I = 1:10
    X(:,I) = t.^(I);    % X = t^I, I from 1 to 10.
end
figure;
color_set = cool(10);   % Generate 10 RGB color settings.
set(gca,'ColorOrder',color_set);    % Set the color order property.
hold all;   % Ask plot to hold the setting instead of overwriting.
plot(t,X);