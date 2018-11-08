function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
m = length(y); % number of training examplesy)
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    tmp1=theta(1)-alpha*(1 / m)*sum((X*theta-y).*X(:,1),'all');
    tmp2=theta(2)-alpha*(1/m)*sum((X*theta-y).*X(:,2),'all'); % all option is used to sum all the values of matrix
    theta(1)=tmp1;
    theta(2)=tmp2;
    J_history(iter) = computeCost(X, y, theta);

end
end
