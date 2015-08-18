%% HISTOGRAM
n = 1e3;
y = randn(n,1);
figure;
hist(y);
xlabel('y');
ylabel('count');
%%
z = randn(1000,1);
BinCenters = (-2.5:2.5);
figure;
hist(z,BinCenters);
set(gca,'FontSize',24);
xlabel('z'); ylabel('Count');
set(gca,'XLim',[-3,3],...
    'YTick',(0:100:400));
PatchHandle = findobj('Type','Patch');
set(PatchHandle,'FaceColor',[0.8 0.8 0.8]);
BinCounts = hist(z,BinCenters);
for i=1:length(BinCounts),
    text(BinCenters(i),BinCounts(i),...
        num2str(BinCounts(i)),...
        'FontSize',24,...
        'HorizontalAlignment','center',...
        'VerticalAlignment','bottom');
end

%% BAR CHART: MULTIPLE DATA
load count.dat;
Y = count(1:6,:);
figure; 
h = bar(Y,'grouped');
set(h,'LineWidth', 2, 'LineStyle',':');
colormap('summer');
%% AREA PLOT
load count.dat;
Y = count(1:6,:);
figure;
h = area(Y);
set(gca,'Layer','top');
set(gca,'XTick',1:size(Y,1));
grid on;
colormap summer;
%% PIE CHART
Y = 1:5;
explode = zeros(1,length(Y));
explode(3) = 2;
figure;
pie(Y,explode);
%% STEM PLOT
t = 0:0.1:10;
x_t = sin(t);
n = 0:10;
x_n = sin(n);
figure;
plot(t,x_t);
hold all;
stem(n,x_n);
%% SUBPLOT
t = 0:0.01:2*pi+0.01;
f = 1:25;
figure;
for i = 1:length(f)
    subplot(5,5,i);
    plot(t,sin(t*f(i)));
    s = num2str(i);
    xlabel(s);
    set(gca,'ytick',[]);
    set(gca,'xtick',[]);
    axis tight;
end
set(gcf,'Color','w');

%% POLAR
theta = 0:0.01:24*pi;
r = exp(sin(theta)) - 2*cos(4*theta) + sin( (2*theta-pi)/24 ).^5;
figure;
polar(theta,r);
