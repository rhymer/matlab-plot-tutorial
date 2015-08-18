%% RANDOM MATRIX
n = 500;    % Number of dimensions.
H = randn(n,n)/sqrt(n); % Normalized Gaussian Random Matrix.
figure;
plot(eig(H),'.') % Plot the eigenvalue of H.
xlabel('real');
ylabel('imaginary');
xlim([-1.1 1.1]);
ylim([-1.1 1.1])
title('Eigenvalues of random matrix')