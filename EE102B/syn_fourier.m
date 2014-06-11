function xx = syn_fourier(tt, ak, fk)
%SYN_FOURIER Function to synthesize a sum of complex
% exponentials over the time range given by tt
% usage:
% xx = syn_fourier(tt, ak, fk)
% tt = vector of evaluation times, for the time axis
% ak = vector of complex Fourier coefficients
% fk = vector of frequencies
% (usually contains both negative and positive freqs)
% xx = vector of synthesized waveform values
%
% Note: fk and ak must be the same length.
% ak(1) corresponds to frequency fk(1),
% ak(2) corresponds to frequency fk(2), etc.
%
% Note: the output might have a tiny imaginary part even if it
% is supposed to be purely real. If so, take the real part.
xx = zeros(size(tt));
for k=1:length(ak)
    xx = xx + ak(k) .* exp(1j * 2 * pi* fk(k) .*tt);
end
% only keep the real part
xx = real(xx);
end