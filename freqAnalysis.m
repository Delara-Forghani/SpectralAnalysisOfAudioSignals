function peakFreq=freqAnalysis(address,n)
%reading the input file
[signal,fs]=audioread(address);
srate=fs; %in hz sample rate
npnts=srate*2; %generate two seconds of data
N=length(signal);
powspectrum=abs(fft(signal)/N).^2;
hz=linspace(0,fs,N);
figure(n),clf
subplot(211)
plot(hz,powspectrum);
xlabel('Frequency (Hz)'),ylabel('Power spectrum')
set(gca,'xlim',[0 1000])
title('Frequency domain')
[val,indx]=max(powspectrum);
%disp(val);
%disp(indx);
%disp(hz(indx));   
peakFreq = hz(indx);
