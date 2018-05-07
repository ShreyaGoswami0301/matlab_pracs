clc;
close all;
clear all;
fm=input('Enter frequency of message')
t=-1:.01:1;
x=(t==0);
y=sin(2*pi*fm*t);
fs=100;
n=length(t);
xt=fftshift(fft(x,n)/n);
yt=fftshift(fft(y,n)/n);
f=linspace(-fs/2, fs/2, n);

subplot(2, 2, 1);
plot(t, x, 'r');
title('Impulse Function');
xlabel('------time');
ylabel('-------amplitude');
grid on;

subplot(2, 2, 2);
plot(f, ceil(abs(xt)));
title('Frequency response');
xlabel('------time');
ylabel('-------amplitude');
grid on;


subplot(2, 2, 3);
plot(t, y, 'y');
title('Sine Function');
xlabel('------time');
ylabel('-------amplitude');
grid on;



subplot(2, 2, 4);
plot(t, ceil(abs(yt)));
title('Frequency Response');
xlabel('------time');
ylabel('-------amplitude');
grid on;


%part 2

%fs=5*fm;
% t1=-1:1/fm:1;
% y1=sin(2*pi*fm*t1);
% subplot(2,1,1);
% plot(t, y);
% title('Aliasing');
% xlabel('Time');
% ylabel('Amplitude');
% hold on
% stem(t1, y1)
% grid on
% hold off
% 
% fs=1.5*fm;
% t1=-1:1/fs:1;
% y1=sin(2*pi*fm*t1);
% subplot(2, 1, 2);
% plot(t, y);
% title('Aliasing');
% xlabel('Time');
% ylabel('Amplitude');
% hold on
% stem(t1, y1)
% grid on
% hold off





