t = 0:0.01:2*pi; x = sin(t); y = cos(t);    % Create data.
figure;
line_handle = plot(t,x,t,y); % Plot returns handles of the lineseries.
grid on;   % Show grid.
xlabel('t'); ylabel('Amplitude');
% Set the line width of sin.
set(line_handle(1), 'LineWidth', 3);    
% Set the line width and style of cosine.
set(line_handle(2), 'LineWidth',3,'LineStyle', '--');
% Set the properties of the current axis.
set(gca,...    % gca means get current axis handle.
    'GridLineStyle', '--',...  % Change the grid style.
    'YTick', -1:1,...          % Set the tick values manually.
    'XTick', 0:pi/2:2*pi,...
    'FontName', 'Symbol',...   % Change the font to Symbol to display pi.
    'XTickLabel',{'0','p/2','p','2p/3','2p'},... 
    'XLim', [0 2*pi],...       % Set the range of the plot.
    'YLim', [-1 1]);