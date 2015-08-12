A = 2;
w = 5;
k = 1.5;
x = linspace(0,2*pi,60);
dt = 0.01;
T = 10;
figure();
for t = 0:dt:T
    plot(x,A*cos(w*t)*sin(k*x));
    axis([0 2*pi -A A]);
    pause(dt);
end

%% A DIFFERENT IMPLEMENTATION
A = 2;
w = 5;
k = 1.5;
x = linspace(0,2*pi,60);
dt = 0.01;
T = 10;
figure();
h = plot(x,A*cos(w*t)*sin(k*x));
axis([0 2*pi -A A]);
for t = 0:dt:T
    set(h,'YData',A*cos(w*t)*sin(k*x));
    pause(dt);
end
