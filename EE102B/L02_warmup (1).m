%   lecture 6 demo
%   Lab Warmup #02
nn = 0:99;              %<--Time indices
xx = cos( 0.08*pi*nn ); %<--Input signal (example)
bb = [1/3 1/3 1/3];     %<--Filter coefficients
yy = firfilt(bb, xx);   %<--Compute the output
length(xx)
length(bb)
length(yy)
%
%
%    moving average filter a square pulse
%
pause
xx = [ones(1,10),zeros(1,5)]
bb=ones(1,3)/3
yy=firfilt(bb,xx);      %could use conv( ) here
first=1;  last=length(xx);
nn = first:last; %--- use first=1 and last=length(xx)
clf;
figure(1)
subplot(2,1,1);
stem(nn-1,xx(nn))
axis([0,15,0,1.5])
subplot(2,1,2);
stem(nn-1,yy(nn),'filled') %--Make black dots
xlabel('Time Index (n)')
axis([0,15,0,1.5])
shg
pause
%
%image
%
load echart
figure(2)
imshow(echart); shg
pause
hold on
plot([1,256],[65,65],'k'); shg
pause
figure(3)
subplot(211)
stem(echart(65,:))
shg
