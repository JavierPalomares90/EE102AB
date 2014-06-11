%%
% Javier Palomares javierp@stanford.edu
% EE102A 01/23/2013

%% Task 1
numSteps = 500;
startTime = 0;
endTime = 10;
dt = (endTime - startTime) / numSteps;
t = startTime : dt : endTime;
% We want a period T = 2
% then the frequency w = 2pi / T
T = 2;
w = 2 * pi / T;
% We want a decay rate that halves the amplitude after 10 seconds
% Then 1/2 =  e ^ sigma (10)
% so sigma - log(1/2)/10 = - log(2)/10
sigma = - log(2)/10;
% Then f = e^(sigma + i * w) * t assuming the phase angle is zero and 
% an initial amplitude of 1
f = exp((sigma + i * w ) .* t);
figure();
plot(f)
% Matlab is plotting f on the complex plane- real part on the x axis,
% imaginary part on the y-axis

%% Task 2
plot(t,real(f),t,imag(f));
xlabel('Time (sec)');
ylabel('Amplitude');
title('Decaying complex sinusoidal');
legend('Real','Imaginary')
% From the plot we see that the sinusoids oscillate every two seconds and
% after 10 seconds their amplitude is halved.

%% Task 3
plot(t,abs(f),t,angle(f)./(2 * pi));
legend('Absolute value','Angle');
xlabel('time')
% We see that the amplitude is decaying exponentially and the angle cycles
% between -pi and pi

%% Task 4
dt = .001;
t = 0: dt : 1;
x0 = zeros(size(t));
xi = [1 zeros(1,length(t) - 1)];
xid = [zeros(1,100) xi(1:901)];
xcos4 = cos(2 * pi * 4 * t);
xc = .5 * ones(size(t));
%% System 1
y = blackbox(xcos4,1);
yn = blackbox(-1*xcos4,1);
plot(t,y,t,yn)
% System 1 is time-invariant, causal,stable
%% System 2

y = blackbox(xcos4,2);
yn = blackbox(-1*xcos4,2);
plot(t,y,t,yn)
%%
plot(t,y,t,blackbox(4 *xcos4,2))
%%
plot(t,y,t,blackbox(-4 *xcos4,2))
% System two is linear

y = blackbox(xi,2);
yd = blackbox(xid,2);
%%
plot(t,y,t,yd)
% Impulse comes out at .3 when the delay was at .1. Not time invariant
% Step
%%
xs = [zeros(1,100) ones(1,901)];
ys = blackbox(xs,2);
plot(t,ys)
plot(t,xs,t,ys)
y = blackbox(xcos4,2);
plot(t,y)
plot(t,y,t,xcos4)
legend('output','input')
% System 2 Appers to be stretching the input across the x axis. 
% Then it's invertible,stable,causal,memoryless,time-variant,and linear
%% System 3
plot(t,blackbox(xcos4,3),t,blackbox(2*xcos4,3))
plot(t,blackbox(xcos4,3),t,blackbox(-1*xcos4,3))
%%
plot(t,blackbox(xcos4,3) + blackbox(-1*xcos4,3))

% System 3 appears to be linear
%%
plot(t,blackbox(xi,3),t,blackbox(xid,3))
% We see a time delay in the output that's the same as in the input
%%
plot(t,blackbox(xs,3),t,xs)
% System appears to be causal
%%
plot(t,blackbox(x0,3))
plot(t,blackbox(xc,3))
xd = [zeros(1,200) xi(1:801)];
plot(t,blackbox(xd,3),t,xd)
plot(t,blackbox(xd,3), t, xd, t, xid, t, blackbox(xid,3))
plot(t,blackbox(xd,3), t, xd)
plot(t,blackbox(xcos4,3))
%%
plot(t,blackbox(xc,3))
% this looks like it's multiplying by a squarewell
%%
y = blackbox(xc,3);
plot(t, blackbox(xcos4,3), t, (xcos4.*y) )
% Yup, it's multiplying a by a square wave. 
% Then system 3 is linear, time-invariant,
% causal,memoryless,stable,invertible
%% System 4
plot(t,blackbox(xcos4,4),t,xcos4)
%Output is a sine, input a cos
%%
plot(t,blackbox(xc,4),t,xc)
% Output is a line when input is constant
%%
plot(t,blackbox(xc,4),t,blackbox(-xc,4))
% Negative sign in the input flipped the output
%%
plot(t,blackbox(xc,4),t,blackbox(4 *xc,4))
% Appears to be linear
%%
plot(t,blackbox(xi,4),t,blackbox(xid,4))
plot(t,blackbox(xi,4))
plot(t,blackbox(xi,4),t,blackbox(xid,4))
plot(t,blackbox(xi,4))
%%
plot(t,blackbox(xi,4),t,blackbox(xid,4))
% It appears to be time invariant
%%
% The output also appears to be the integral of the input up to a constant
plot(t,blackbox(xi,4),t,blackbox(x0,4))
plot(t,blackbox(xi,4))
plot(t,blackbox(xi,4))
%%
plot(t,blackbox(x0,4),t,blackbox(xi,4))
% Both the impulse function and the zero give out the same input
% Then the system is not invertible
%%
plot(t,blackbox(xc,4))
% Output is not bounded, so the system is not stable

% System 4 appers to be an integrator.
% The system is linear,time-invariant,causal,memoryless,not stable, and not
% invertible.
%% System 5
plot(t,blackbox(xcos4,5),t,blackbox(-1 * xcos4,5))
% Different input, same output, not linear, not invertible
%%
plot(t,blackbox(xi,5),t,blackbox(xid,5))
% We still get the same output,
% Not time invariant either
%%
plot(t,blackbox(x0,5),t,blackbox(xs,5))
% Not causal
%%
% System 5 is giving out the same output for every input
% Then it's not linear,not time-invariant,Causal,memoryless,stable,not
% invertible
%% System 6
plot(t,blackbox(xcos4,6),t,blackbox(-1 * xcos4,6))
% System appears to be linear
%%
plot(t,blackbox(xcos4,6),t,blackbox(4 * xcos4,6))
plot(t,blackbox(xcos4,6),t,blackbox(10 * xcos4,6))
plot(t,blackbox(xcos4,6) + blackbox(-xcos4,6))
plot(t,blackbox(xcos4,6) + blackbox(xc,6),t,blackbox(xc,6),t,blackbox(xcos4,6))
%%
plot(t,blackbox(xi,6),t,blackbox(xid,6))
% Not time invariant
%%
plot(t,blackbox(xcos4 + xc,6),t,blackbox(xc,6),t,blackbox(xcos4,6))
legend('sum','const','cos')
% The system is linear
%%
plot(t,blackbox(xi,6),t,blackbox(xid,6))
% Not causal either, impulse at later time cause output time at earlier time

% System 6 is reversing time. Then it is linear, not time-invariant, not
% causal,stable,and invertible
%% System 7
plot(t,blackbox(xcos4,7),t,blackbox(-xcos4,7))
% Negative sign flips the output, system appears to be linear
%%
plot(t,blackbox(6*xcos4,7),t,blackbox(2 * xcos4,7))
% System is not linear. Multiplying by 2 and multiplying by 6 did not scale
% the output.
% We also see that the system freaks out whenever the input goes above one
%%
plot(t,blackbox(xi,7),t,blackbox(xid,7))
%%
plot(t,blackbox(4 * xi,7),t,blackbox(4 * xid,7))
% System is time invariant
% It's also causal, we saw the later impulse show up later in the output
% The system is not stable either, It goes to a very high amplitude for any input
% above 1
%%
plot(t,blackbox(xc,7))
% System returns same output as input when it doesn't go above 1
%%
plot(t,blackbox(10*xc,7),t,blackbox(2*xc,7))
% Different input, same output, not invertible
% System 7 gives out the same input as the output if it's amplitude doesn't
% excceed 1 and gives out a very large output if it does.
% System 7 is not linear, time-variant,causal,memoryless,not stable,not
% invertible

