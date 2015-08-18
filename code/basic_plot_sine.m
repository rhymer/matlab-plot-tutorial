%% VISUALIZING SINE AND COSINE WAVE
t = 0:0.01:2*pi; % Create a time vector. 
x = sin(t);
y = cos(t);
figure(1);  % Create figure no.1.
plot(t,x,t,y);
grid on;    % Show grid.
title('My First Plot');
xlabel('t');
ylabel('Amplitude');
legend('sin(t)','cos(t)');