%% Lab 3 warmup
%% FIR Frequency Response
w = -pi:2*pi/400:pi;
H = (2.*cos(.5.*w) + 2*cos(1.5.*w))./4 .* exp(-1j*1.5.*w);
C = (2.*cos(.5.*w) + 2*cos(1.5.*w))./4;
phi = angle(H);
subplot(211);
plot(w,phi,w,C);

legend('Angle','Magnitude');
bb = ones(1,1,1,1,1)./4;
HH = freqz(bb,1,w);
subplot(212);
plot(w,angle(H),w,abs(H));
xlabel('digital frequency');
ylabel('Frequency response');
legend('Angle','AbsoluteValue');

%% FIR Nulling Filters
