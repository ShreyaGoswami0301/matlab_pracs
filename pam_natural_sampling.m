clc;
close all;
clear all;
fc=100;
fm=fc/10;
fs=100*fc;
t=-1:1/fs:4/fm;
m=cos(2*pi*fm*t);
c=0.5*square(2*pi*fc*t)+0.5;
st=m.*c;
figure(1)
subplot(4,1,1);
plot(t, m);
title('message signal');
xlabel('time');
ylabel('amplitude');

subplot(4,1,2);
plot(t, c);
title('carrier signal');
xlabel('time');
ylabel('amplitude');


subplot(4,1,3);
plot(st, m);
title('modulated signal');
xlabel('time');
ylabel('amplitude');

dt=st.*c;
filter=fir1(200, fm/fs, 'low');
demod_signal=conv(filter, dt);

t1=linspace(0, demod_signal, 1);

subplot(4,1,4);
plot(t1, demod_signal);
title('message signal');
xlabel('time');
ylabel('amplitude');



