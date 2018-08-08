function [ g ] = conv_1d( f, w)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


    X = length(f);
    f2 = zeros(1, X+2);
    f2(2:X+1) = f;
    g2 = zeros(1, X+2);
    w2 = w(3: -1: 1);

    for n = 2: X+1
        s = f2(n-1:n+1).*w2;
        g2(n) = sum(s(:));
    end
    g = g2(2:X+1);
end

