%% 3D BROWNIAN MOTION
N = 500;  % Number of steps.
X1 = zeros(N,3); % Allocate space.
X2 = zeros(N,3);
for I = 2:N      % Generate two trajectories of Brownian motion.
    X1(I,:) = X1(I-1,:) + randn(1,3);
    X2(I,:) = X2(I-1,:) + randn(1,3);
end
figure;
plot3(X1(:,1),X1(:,2),X1(:,3),'b-'); % First path with blue line.
hold on;
plot3(X2(:,1),X2(:,2),X2(:,3),'k-'); % Second path with black line.