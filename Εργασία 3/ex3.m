v_noisy = VideoReader('500fps_noisy.avi');
N = 5;
i = 0;

yn = [];
yd = [];
while hasFrame(v_noisy)
    i = i+1;
    I = rgb2gray(im2double(readFrame(v_noisy)));
    H = medfilt2(I, [N N]);
    yn(i) = I(293,323);
    yd(i) = H(293,323);
end

NumFFT = 1024;
F = linspace(-255, 255, NumFFT);

Ynoise = abs(fftshift(fft(yn, NumFFT)));
Ynonoise = abs(fftshift(fft(yd, NumFFT)));



figure
plot(F, Ynoise);


figure
plot(F, Ynonoise);
