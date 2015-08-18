%% SETTINGS OF THE LORENZ SYSTEM
sigma = 10;
rho = 28;
beta = 8/3;
lorenz_ode = @(t,y) lorenz_equations(y,sigma,rho,beta);
%% PLOT THE TRAJECTORY
t0 = 0;      % Initial time.
dt = 0.1;    % Time increment.
T = 50;      % Final time.
X0 = [10 10 30]; % Inital state.
[~,X]  = ode45(lorenz_ode,[t0 T],X0); % Solve the ODE Numerically.
figure;
plot3(X(:,1),X(:,2),X(:,3)); % Plot the trajectory.
xlabel('x');
ylabel('y');
zlabel('z');
view(15, -15); % Set view angle.