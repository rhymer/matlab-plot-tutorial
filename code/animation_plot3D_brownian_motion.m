%% 3D BROWNIAN MOTION ANIMATION
N = 1000;    % Number of steps.
X1 = zeros(N,3); % Allocate space.
X2 = zeros(N,3);
figure;
h1 = plot3(0,0,0,'b-');
hold on;
h2 = plot3(0,0,0,'k-');
axis auto;
for I = 2:N
    X1(I,:) = X1(I-1,:) + randn(1,3); % Calcualte the next step.
    set(h1,'XData',X1(1:I,1),...
           'YData',X1(1:I,2),...
           'ZData',X1(1:I,3));
    X2(I,:) = X2(I-1,:) + randn(1,3); % Calcualte the next step.
    set(h2,'XData',X2(1:I,1),...
           'YData',X2(1:I,2),...
           'ZData',X2(1:I,3));
    drawnow;
end