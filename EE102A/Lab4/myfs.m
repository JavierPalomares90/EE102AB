function fn = myfs(Dn,omega0,t)

%
% fn = myfs(Dn,omega0,t)
%
%
% Evaluates the truncated Fourier Series at times t
%
% Dn     -- vector of Fourier series coefficients
%           assumed to run from -N to N, where length(Dn) = 2N + 1
% omega0 -- fundamental frequency
% t      -- vector of times for evaluation
% fn     -- truncated Fourier series evaluated at t

% The range of the series coefficients
N = (length(Dn) - 1) / 2;

fn = zeros(1,length(t));
for n = -N:N
    % indices of Dn run from 0 to 2N+1, n runs from -N to N
    fn = fn + Dn(n+N+1) * exp(1i * omega0 * n .* t);
end
    