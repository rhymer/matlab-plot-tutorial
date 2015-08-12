%% SUBPLOT
t = 0:0.01:2*pi+0.01;   % Create time vector.
f = 1:25;               % Frequencies.
figure;
for I = 1:length(f)
    subplot(5,5,I);     % Set the current subplot location to I.
    plot(t,sin(t*f(I)));% Plot at the current subplot.
    xlabel(num2str(I)); % Use the current location as x label.
    set(gca,'ytick',[]);
    set(gca,'xtick',[]);
    axis tight;         % Set the axis limit to fit the data.
end
set(gcf,'Color','w');   % Set the figure background color to white.