function [ X,Y,y ] = LoadBatch( filename )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
A = load('Datasets\'+ filename);
all_X = reshape(A.data',32,32,3,10000);
all_X = permute(all_X, [2,1,3,4]);

all_y = A.labels + 1;   %convert 0~9 to 1~10
end

