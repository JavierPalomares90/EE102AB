function [y,ty] = nconv(x,tx,h,th)
% Description:
% nconv performs a numerical approximation to the 
% continuous time convolution using matlab's conv()
% function
%
% [y,ty] = nconv(x,tx,h,th)
%
%   Inputs:
%       x -- input signal vector
%       tx -- times of samples in x
%       h -- impulse response vector
%       th -- times of smaples in h
%
%   Outputs:
%       y -- output signal vector
%           lenght(y) = length(x) + length(h) - 1
%       ty -- times of samples in y
% Written by Javier Palomares 01/28/13


% Sampling period
T = th(2) - th(1);

% start and end times
tStart = tx(1) + th(1);
tEnd = tx(length(tx)) + th(length(th));

% Convolution
y = conv(x, T .* h);
% Time spaces
ty = linspace(tStart,tEnd,length(y));

