%% HOLD ALL AND OFF
t = 0:0.01:2*pi; % Create a time vector. 
x = sin(t);
y = cos(t);
figure;     % Create a figure.
plot(t,x);  % Plot sine wave first.
hold all;   % Hold the settings.
plot(t,y);  % Plot cosine wave without erasing sine wave.
grid on;    % Show grid.
title('My First Plot');
xlabel('t');
ylabel('Amplitude');
legend('sin(t)','cos(t)');