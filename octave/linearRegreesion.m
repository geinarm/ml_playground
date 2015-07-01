
clear; close all;

%Init
m = 100;
alpha = 0.05;
itter = 2000;

X = rand(m, 1);
y = ((X * 2) .+ (0.2 * rand(m,1)));

X = [ones(m, 1), X];
theta = zeros(size(X, 2), 1);

[theta, j_history] = gradientDescent(X, y, theta, alpha, itter);

hold on;
plot(X(:,2), y, '. r');
plot(X(:,2), X*theta, '- b');