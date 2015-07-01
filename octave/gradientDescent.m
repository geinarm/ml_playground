function [theta, j_history] = gradientDescent(X, y, theta, alpha, itter)

m = size(X, 1);
j_history = zeros(itter, 1);
%gradient decent
for i = 1:itter
	j = 1/(2*m) * sum(((y - X*theta) .^2));
	j_history(i) = j;

	grad = ((1/m) * ((X*theta) - y)' * X)';
	theta = theta - alpha * grad;
end
	
end