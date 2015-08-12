%% WAVE EQUATION SIMULATION USING FDM
[x,y,u0] = peaks;      % Initial waveform.
dt = 0.005;            % Time step.
h = y(2)-y(1);         % Mesh spacing.
b = 0.1;               % Damping.
u0_t = 0;             % Initial velocity.
u = u0 + dt*u0_t;      % Waveform at dt.
T = 100;               % Simulation time.
if dt/h^2 > 0.5        % FDM stability condition.
    warning('FDM:stability','FDM is unstable.');
end
figure;
h_surf = surf(x,y,u);  % Create a surface plot at t = dt.
h_title = title(sprintf('t = %.1f',dt));
u_max = max(abs(u0(:)));
zlim([-u_max, u_max]); % Fix the z axis range.
hold on;
for I = 2:T/dt
    % Discretized wave equation.
    u2 = 2*u - u0 + 4*(dt/h)^2*del2(u) - dt*b*(u - u0);
    % Boundary condition.
    u2(1,:)   = 0;
    u2(:,1)   = 0;
    u2(end,:) = 0;
    u2(:,end) = 0;
    % Time update.
    u0 = u;
    u = u2;
    % Plot the waveform.
    set(h_surf,'ZData',u2);
    set(h_title,'String',sprintf('t = %.1f',I*dt));
    pause(dt);
end