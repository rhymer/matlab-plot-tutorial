%% LINEAR AND LOG SCALE
w_n = 1;    % Natural frequency.
zeta = 0.2; % Damping ratio.
H = @(s) w_n^2./(s.^2 + 2*zeta*w_n*s + w_n^2);  % Transfer function.
w = logspace(-1, 1, 100); % Create a log-scale frequency vector.
figure;
subplot(2,1,1);  % Create a 2-by-1 subplot, set the current subplot to 1.
semilogx(w, 20*log10(abs(H(1j*w))) ); % Plot the amplitude response.
grid on; % Show grid.
xlabel('Frequency (rad)')
ylabel('Magnitude (dB)')
subplot(2,1,2); % Set the current subplot to 2.
semilogx(w, angle(H(1j*w))); % Plot the phase response.
grid on; % Show grid.
xlabel('Frequency (rad)')
ylabel('Phase (rad)')
set(gca,'YLim',[ -pi 0 ],...
        'YTick',-pi:pi/2:0,...
        'FontName','Symbol',...
        'YTickLabel',{'-p','-p/2','0'});