t = 0:0.1:2*pi;
f = 1:5;
for I = 1:length(f)
    h_fig = figure();
    plot(t,sin(t*f(I)));
    title(sprintf('Frequency: %d',f(I)));
    saveas(h_fig,sprintf('freq_%d.fig',I),'fig');
    close(h_fig);
end