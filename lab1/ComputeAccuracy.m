function [ acc ] = ComputeAccuracy( X, y, W, b )
%compute the accuracy of the network's predictions 
predict_value = bsxfun(@plus, X * W, b);
den = sum(predict_value);   %den is 1 by N
P = bsxfun(@rdivide, predict_value, den); %P is K by N
N = size(y);
predict_lable = zeros(N,1);
for index = 1: N
    predict_lable(index) = find(P(:,index) == max(P(:,index)));
end
acc = sum(predict_lable == y)/N;
end

