%% Task 1
%% Javier Palomares
% EE102A javierp@stanford.edu
% 01/30/2013
N = 100;
dt = 1/N;
dh = 2/N;
h = 0:dh:2;
%h = h./2;
th = 1:dt:2;
x = 2 .* ones(1,length(h));
%x = x ./ 2;
tx = th;
[y ty]=nconv(x,tx,h,th);
plot(tx,x,th,h,ty,y)
legend('input','impulse response','output');
xlabel('time (s)');
ylabel('Amplitude');