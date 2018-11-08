function [X_norm, mu, sigma] = featureNormalize(X)
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
for i=1 : size(X,2)
  mu(i)=mean(X(:,i));  %mean function to find the mean value of matrix colomn values
  sigma(i)=std(X(:,i)); %std function is used to find the standard deviation
X_norm(:,i)=X_norm(:,i)-mu(i);
X_norm(:,i)=(1/sigma(i)).*X_norm(:,i);
end
end
