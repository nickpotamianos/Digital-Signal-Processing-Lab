load chirp
y0=y;
noise =0.5*randn(size(y));
Fs = 8919;

yw = y0 + noise;

figure
subplot(131);plot(y0)
subplot(132);plot(yw)

NumFFT = 4096;
F = linspace(-Fs/2,Fs/2,NumFFT);



b = fir1(34,0.48,'high',chebwin(35,30));


yf = filtfilt(b,1,yw);
subplot(133);plot(yf)

freqz(b,1,512);


figure
subplot(131);plot(F, abs(fftshift(fft(y0,NumFFT))))
subplot(132);plot(F, abs(fftshift(fft(yw,NumFFT))))
subplot(133);plot(F, abs(fftshift(fft(yf,NumFFT))))

sound(y, Fs)
sound(yw, Fs)
sound(yf, Fs)
 
b1 = fir1(34,0.48,'high',chebwin(35,30));

figure
freqz(b1,1,512);

yf1 = filtfilt(b1,1,yw);

% sound(yf1, Fs)

b2 = firls(34,[0, 0.45, 0.5, 1] , [0 0 1 1]);

figure
freqz(b2,1,512);

yf2 = filtfilt(b2,1,yw);



b3 = firpm(34,[0, 0.45, 0.5, 1] , [0 0 1 1]);

figure
freqz(b3,1,512);

yf3 = filtfilt(b3,1,yw);


figure
plot(F, 20*log10(abs(fftshift(fft(b1,NumFFT)))));
title('Filter frequency response (dB)')
grid on


figure
plot(F, 20*log10(abs(fftshift(fft(b2,NumFFT)))));
title('Filter frequency response (dB)')
grid on



figure
plot(F, 20*log10(abs(fftshift(fft(b3,NumFFT)))));
title('Filter frequency response (dB)')
grid on


%%
figure
subplot(131);plot(F, abs(fftshift(fft(y0,NumFFT))))
legend('Original Signal')

subplot(132);plot(F, abs(fftshift(fft(yw,NumFFT))),'r')
legend('Signal + Noise')

subplot(133);plot(F, abs(fftshift(fft(yf3,NumFFT))),'g')
legend('Filtered Signal')


figure

subplot(421); plot(y0(1:100))
subplot(422); plot(y0(end-100:end))

subplot(423); plot(yf1(1:100))
subplot(424); plot(yf1(end-100:end))

subplot(425); plot(yf2(1:100))
subplot(426); plot(yf2(end-100:end))

subplot(427); plot(yf3(1:100))
subplot(428); plot(yf3(end-100:end))


r1 = y0-yf1;
r2 = y0-yf2;
r3 = y0-yf3;

MSE = [mean(r1.^2) mean(r2.^2) mean(r3.^2) ]




