clc;
close all;
clear all;
am=input('Enter the message amplitude')
fm=input('Enter the frequency of message')
ac=input('Enter the amplitude of carrier')
fc=input('Enter the frequency of carrier')
t=0:0.001:1;
n=(am/2)*square(2*pi*fm*t)+(am/2);
c=ac*cos(2*pi*fc*t);
s=c.*n;

subplot(3, 1, 1);
plot(t, n, 'r');
title('Message signal');
ylabel('-------Message amplitude');
xlabel('-------time');
grid on;


subplot(3, 1, 2);
plot(t, c, 'y');
title('Carrier signal');
ylabel('-------Carrier amplitude');
xlabel('-------time');
grid on;


subplot(3, 1, 3);
plot(t, s, 'g');
title('Modulated square ask signal');
ylabel('-------mod ask square amplitude');
xlabel('-------time');
grid on;

