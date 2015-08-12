A1 = 1;     % Amplitude.
k1 = 1;     % Wave number.
omega1 = 3; % Angular frequency.
A2 = 1;
k2 = 1;
omega2 = 3;
xx = 0:0.1:10; % x ticks.
dt = 0.05;     % Update period.
T = 10;        % Animation time
%% DIRECT IMPLEMENTATION
f = figure;
for t = 0:dt:T 
    y1 = A1*sin(k1*xx-omega1*t); % Right-travelling wave.
    y2 = A2*sin(k2*xx+omega2*t); % Left-travelling wave.
    y = y1 + y2;   % Standing wave.
    zero_crossing_index = [abs( diff( sign(y) )) 0]~=0; % Finding nodes.
    figure(f);
    plot(xx,y1,'Color',[0.8 0.5 0.5],'Linewidth',2);
    hold all;   % Preserve the color order.
    plot(xx,y2,'Color',[0.4 0.4 0.8],'Linewidth',2);
    plot(xx,y,'Color','k','Linewidth',3); 
    ylim(1.1*[-(A1+A2) (A1+A2)]); % Fix the axis limits.
    set(refline(0,0),'color',[0.5 0.5 0.5],'Linewidth',1);
    plot(xx(zero_crossing_index),zeros(1,sum(zero_crossing_index)),...
        'color','r','marker','o','linestyle','none'); % Plot nodes.
    hold off;   % Allow new plots to erase previous frame.
    pause(dt);
end
% run figure_style
% set(gca,'fontSize',font_size);
% export_fig('../fig/graded_task_02','-pdf','-transparent')
%% A SET DATA IMPLEMENTATION
h = plot(xx,nan(3,length(xx)),[xx(1) xx(end)],[0 0]);
set(h(1),'Color','b');
set(h(2),'Color','r');
set(h(3),'Color','k','Linewidth',3);
set(h(4),'Color','k');
axis tight;
ylim([-2*A 2*A]);
hold on;
for t = 0:dt:T 
    y1 = A1*sin(k1*xx-omega1*t); % Right-travelling wave.
    y2 = A2*sin(k2*xx+omega2*t); % Left-travelling wave.
    y = y1 + y2;   % Standing wave.
    zero_crossing_index = [abs( diff( sign(y) )) 0]~=0; % Finding nodes.
    set(h(1),'YData',y1);
    set(h(2),'YData',y2);
    set(h(3),'YData',y);
    plot(xx(zero_crossing_index),zeros(1,sum(zero_crossing_index)),...
        'color','r','marker','o','linestyle','none');
    pause(dt);
end