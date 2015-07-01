
clear; close all;

%Init
m = 300;
alpha = 0.1;
itter = 1;

X = rand(m, 1);
y = ((X * 2) .+ (0.2 * rand(m,1)));

X = [ones(m, 1), X];
theta = zeros(size(X, 2), 1);
j_history = zeros(m*itter, 1);


for k=1:itter
for i=1:m
	[theta, j] = stochasticGradientDescent(X(i, :), y(i), theta, alpha);
	j_history(i*k) = j;
end
end

plot(j_history);

input('Press return to continue');
close all;

hold on;
plot(X(1:100,2), y(1:100), '. r');
plot(X(:,2), X*theta, '- b');