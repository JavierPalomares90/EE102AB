%% Javier Palomares EE102A javierp@stanford.edu
%% Task2
N = 8;
Dn = zeros(1,2*N + 1);
% Series coefficients
for n =-N:N;
    Dn(n+N+1) = 1i/(2 * pi * n);
end
% D0 = 1/2
Dn(N+1) = 1/2;

%% Plot of series coefficients
subplot(311);
n = -8:8;
stem(n,real(Dn),'-');
hold
stem(n,imag(Dn),'--');

%% Plot of truncated series
t = -2:.01:2;
omega0 = 2 * pi;
ft = mod(t,1);
fn = myfs(Dn,omega0,t);
subplot(312);
plot(t,ft,t,fn);

% Plot of approximation error
subplot(313);
plot(t,ft-fn);

e2 = sum((ft-fn).^2)*0.01;
hold off;
%% Task 3
% triangular signal
N = 8;
Dn = zeros(1,2*N + 1);
% Series coefficients
for n =-N:N;
    Dn(n+N+1) = ((-1)^n - 1)/ ((n * pi)^2);
end
% D0 = 1/2
Dn(N+1) = 1/2;

% Plot of series coefficients
subplot(311);
n = -8:8;
stem(n,real(Dn),'-');
hold on
stem(n,imag(Dn),'--');


t = -2:.01:2;
omega0 = 2 * pi;

ft = abs(2 .*(t - floor(t+.5) ) );
fn = myfs(Dn,omega0,t);
subplot(312);
plot(t,fn,t,ft);

% Plot of approximation error
subplot(313);
plot(t,ft-fn);

e3 = sum((ft-fn).^2)*.01;

hold off
ratio = e3/e2



