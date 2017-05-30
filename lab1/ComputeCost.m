function [ J ] = ComputeCost( X, Y, W, b, lambda )
%cost function, which is a combination of the cross entropy and
%regularization
%   lambda is the scale of the regularization term
num_of_images =  size(X, 2);
P = EvaluateClassifier(X,W,b); %K by N

loss = 1/num_of_images * sum(-log(P * Y));
regular = lambda * sum(sum(W.^2));

J  = loss + regular;
end

