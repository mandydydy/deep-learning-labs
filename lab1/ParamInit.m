function [ W, b ] = ParamInit( K, d )
%   This function generates small random values for parameter
%   initialization
%   W is K by d(dimension of the images. e.g. 3072 = 32 32 3)
%   d is K by 1
std_dev = 0.01;
cov = std_dev ^ 2;
W = randn(K, d) * cov;
b = randn(d, 1) * cov;
end

