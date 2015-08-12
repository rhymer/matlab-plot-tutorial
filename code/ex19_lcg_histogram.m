%% LINEAR CONGRUENTIAL GENERATOR
% For more detail, see
% http://www.cs.rice.edu/~johnmc/comp528/lecture-notes/Lecture21.pdf
a = 3;      % The multiplier.
b = 0;      % The increment.
m = 31;     % The modulus.
N = 1000;   % Number of samples.
x = zeros(N,1); % Allocate space.
x(1) = 1;   % The seed.
for I = 1:N-1
    % Generate pseudorandom number using the rule x = (ax+b) mode m
    x(I+1) = mod(a*x(I) + b, m); 
end
figure;
hist(x)     % Show the distribution of x.