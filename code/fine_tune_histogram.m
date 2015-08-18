%% FINE-TUNE THE HISTOGRAM
z = randn(1000,1);       % Generate data.
BinCenters = (-2.5:2.5); % Define the bin centers.
figure;
hist(z,BinCenters);      % Generate histogram.
xlabel('z'); ylabel('Count');
set(gca,'FontSize',12,...% Change the font size.
    'XLim',[-3,3],...    % Set x range.
    'YTick',(0:100:400));
PatchHandle = findobj('Type','Patch'); % Get the patch object handles.
set(PatchHandle,'FaceColor',[0.8 0.8 0.8]); % Set the color of the bars.
% When returning values, hist will not produce figure.
BinCounts = hist(z,BinCenters); 
for i=1:length(BinCounts)  % For each bin bount, put the number on the top.
    text(BinCenters(i),BinCounts(i),... % Text location.
        num2str(BinCounts(i)),...       % Convert number to string.
        'FontSize',12,...               % Set font size.
        'HorizontalAlignment','center',... % Set alignment.
        'VerticalAlignment','bottom');
end