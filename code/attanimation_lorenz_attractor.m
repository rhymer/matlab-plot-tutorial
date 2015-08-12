%% ANIMATION OF THE ATTRACTOR
sigma = 10;
rho = 28;
beta = 8/3;
lorenz_ode = @(t,y) lorenz_equations(y,sigma,rho,beta);
X0 = [10 10 30]; % Inital state.
t0 = 0;      % Initial time.
dt = 0.1;    % Time increment.
T = 50; % Final time.
figure;
hold on;  % Set to on to preserve current view angle and line style.
view(105, -30);   % Set the view angle.
xlabel('x');
ylabel('y');
zlabel('z');
X = X0;     % Set the initial state.
for I = 1:T/dt
    plot3(X(:,1),X(:,2),X(:,3));  % Plot the trajectory in 3D space.
    % Calculate the next trajector.
    [~,X]  = ode45(lorenz_ode,[t0 t0+dt],X(end,:));
    t0 = t0 + dt; % Time update.
    title(sprintf('t = %5.1f',t0));    % Print current time.
    pause(0.01); 
end