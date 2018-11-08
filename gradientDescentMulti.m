function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
tmp=theta;
for iter = 1:num_iters
tmp=theta-  alpha*(1 / m)*sum((X*theta-y).*X)';
theta=tmp; 
J_history(iter) = computeCostMulti(X, y, theta);
end
end
