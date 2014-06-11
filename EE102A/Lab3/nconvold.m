
function [y,ty] = nconvold(x,tx,h,th)
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
xOld = x;
hOld = h;

% Start and end times of the sampling
tStart = min(tx(1),th(1));
tEnd = max( tx( length(tx) ),th( length(th) ) );

% Sampling period. Assumed to be the same in tx and th
T = th(2)-th(1);

% Append zeroes at the beginning to x if necessary
%if (tx(1) > tStart)
 %   zeroesX = zeros(1, round( (tx(1) - tStart) / T));
  %  x = [zeroesX x];
%end

% Append zeroes at the end to x if necessary
%if (tx( length(tx) ) < tEnd)
 %   zeroesX = zeros(1, round( (tEnd - tx( length(tx) )) / T) );
  %  x = [x zeroesX];
%end

% Append zeroes at the beginning to h if necessary
%if (th(1) > tStart)
 %   zeroesH = zeros(1, round( (th(1) - tStart) / T));
  %  h = [zeroesH h];
%end

% Append zeroes at the end to h if necessary
%if (th( length(th) ) < tEnd)
 %   zeroesH = zeros(1, round( (tEnd - th( length(th) )) / T) );
  %  h = [h zeroesH];
%end

y = T * conv(x,h);
ty = linspace(2*tStart,2*tEnd,length(y));
ty = linspace(th(1) + tx(1), th( length(th)) + tx( length(tx) ), length(y));

%plot(tx,xOld,th,hOld,ty,y);
