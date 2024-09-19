clear;clc;close all
K = 2000;
n = -50:200;
A = rand(K,1) ;



mask = ((n > 0) - (n - 100 > 0));


x = A* mask ;% ones(length(mask),length(mask));

mask2D = repmat(mask,K,1);

x = A .* mask2D;


mean_val = mean(x);

Acor = x'*x/K;
Sd = 20*log10(fftshift(abs(fft2(Acor))));
%%

figure;
subplot(121);plot(n,x);
subplot(122);plot(n,mean_val);



figure; imagesc(n,n,Acor)

figure; imagesc(Sd)

