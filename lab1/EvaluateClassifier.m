function [ P ] = EvaluateClassifier( X, W, b )
% forward propagate
% W(K by d) and b(K by 1) are the parameters of the network
% X(d by N)) is the images, where N is the number of images
% output P is K by N
s = bsxfun(@plus, W * x, b);  % s is K by N
den = sum(s);   %den is 1 by N
P = bsxfun(@rdivide, s, den); %P is K by N
end

