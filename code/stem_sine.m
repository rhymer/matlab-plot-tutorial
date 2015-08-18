%% STEM PLOT
t = 0:0.1:10;   % Create time vector.
x_t = sin(t);   % Create sine wave.
n = 0:10;       % Create integer time vector.
x_n = sin(n);   % Create 'discrete' since wave.
figure;
plot(t,x_t);
hold all;
stem(n,x_n);