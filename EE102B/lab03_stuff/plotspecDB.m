function him = plotspecDB(xx,fsamp,Lsect)
%PLOTSPEC   plot a Spectrogram (amplitude in dB) as an image 
%         (take care of all the default settings)
%  usage:   him = plotspec(xx,fsamp,Lsect)
%      him = handle to the image object
%       xx = input signal
%    fsamp = sampling rate
%    Lsect = section length (integer number of samples, should be power of 2)
%              amount of data to Fourier analyze at one time
%
% USE this function ONLY if you do NOT have specgram

% 18-Oct-98 J McClellan
% 26-Oct-98 added window length
% 20-Sept-00 changed window length to section length
% 16-April-13 added DB scale


% if( exist('specgram'))
% 	disp(' ')
% 	disp('??? Why are you using this function, you seem to have SPECGRAM');
% 	disp(' ')
% end
if( nargin<3 )
	Lsect = 256;
end
if( nargin<2 )
	disp('PLOTSPEC: Sampling Frequency defaulting to 8000 Hz')
	fsamp = 8000;
end
if( length(xx)<1000 )
	warning('PLOTSPEC: Signal length must be greater than 1000 to get a reasonable spectrogram')
end
Lfft = Lsect;
Noverlap = round(Lsect*.9);  %-- overlap defaults to 90%
[B,F,T] = spectgr(xx,Lfft,fsamp,Lsect,Noverlap);
BdB=20*log10(abs(B));
BdBmax=max(max(BdB));
 thrval=find(BdB<(BdBmax-70));
BdB(thrval)=BdBmax-70;
him = imagesc(T,F,BdB);
axis xy
colormap(1-gray)   %-- use colormap(jet) if you like bright colors !
shg

