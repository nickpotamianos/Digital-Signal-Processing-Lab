load Noisy.mat
load filterex2.mat
Yw = fft(yw);
Yw_mag = abs(Yw);
Yw_mag_shifted = fftshift(Yw_mag);
fs = 44100;
f = (-length(yw)/2:length(yw)/2-1)*(fs/length(yw));
plot(f, 20*log10(Yw_mag_shifted));
xlabel('Συχνότητα (Hz)');
ylabel('Μέτρο σε dB');


filtered = filtfilt(G,1,yw);
freqz(G);