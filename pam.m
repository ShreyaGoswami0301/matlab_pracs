clc;
close all;
clear all;
fc=20;
fm=2;
fs=1000;
t=1;
duty=20;

n=[0:1/fs:t];
n=n(1:end-1);

s=square(2*pi*fc*n, duty)
s(find(s<0))=0;

m=sin(2*pi*fm*n);
period_samp=length(n)/fc;

ind=(1:period_samp:length(n));
samp=ceil(period_samp*duty/100);
pam=zeros(1, length(n));

for i=1:length(ind)
    pam(ind(i):ind(i)+samp)=m(ind(i));
end

subplot(4, 1, 1);
plot(n, s);
ylim(-.2, 1.2);
title('Impulse train');
xlabel('------time');
ylabel('------amplitude');

subplot(4, 1, 2);
plot(n, m);
ylim(-1.2, 1.2);
title('Message signal');
xlabel('------time');
ylabel('------amplitude');


subplot(4, 1, 3);
plot(n, pam);
ylim(-.2, 1.2);
title('Modulated signal');
xlabel('------time');
ylabel('------amplitude');

dt=s.*pam;
filter=fir1(200, fm/fs, 'low');
dim=conv(filter, dt);
t=linspace(0, 1, length(dim));
subplot(4,1,4)
plot(t1, dim);
title('Demodulated signal pm');
xlabel('------Time');
ylabel('-------Amplitude');






