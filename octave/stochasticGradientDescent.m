function [theta, j] = stochasticGradientDescent(x, y, theta, alpha)

%gradient step
j = 1/2 * ((y - x*theta) .^2);

grad = (((x*theta) - y)' * x)';
theta = theta - alpha * grad;
	
end