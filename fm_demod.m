close all;
clear all;
clc;
t=0:0.001:1;
am=input('Enter the amplitude of message signal')
fmm=input('Enter the frequency of message signal')
ac=input('Enter the amplitude of carrier signal')
fc=input=('Enter frequency of carrier signal')
B=input('Enter the Beta value')
x=am*cos(2*pi*fmm*t);
c=ac*cos(2*pi*fc*t);
smf=ac*cos((2*pi*fc*t)+B*(sin(2*pi*fmm*t)));
dim=diff(smf);
dim1=[0 dim];
vout=abs(dim1);
[b, a]=butter(10, 0.2);
dim2=filter(b, a, vout);

subplot(5, 1, 1);
plot(t, x, 'r');
title('Message Signal');
ylabel('--------Message signal amp');
xlabel('--------time');
grid on; 


subplot(5, 1, 2);
plot(t, c, 'y');
title('Carrier Signal');
ylabel('--------Carrier signal amp');
xlabel('--------time');
grid on; 


subplot(5, 1, 3);
plot(t, smf, 'r');
title('FM Signal');
ylabel('--------Fm signal amp');
xlabel('--------time');
grid on; 



subplot(5, 1, 4);
plot(t, vout, 'y');
title('Fm without demodulation Signal');
ylabel('--------Fm without signal amp');
xlabel('--------time');
grid on; 



subplot(5, 1, 5);
plot(t, dim2, 'r');
title('Fm demodulated with filter Signal');
ylabel('--------fm with filter signal amp');
xlabel('--------time');
grid on; 