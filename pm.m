clc;
close all;
clear all;

am=input('Enter the message amplitude')
fm=input('Enter the message frequency')
ac=input('Enter the carrier amplitude')
fc=input('Enter the carrier frequency')
B=input('Enter the Beta value');
t=0:0.001:1;
x=am*cos(2*pi*fm*t);
c=ac*cos(2*pi*fc*t);
smf=ac*cos((2*pi*fc*t)+(B*sin(2*pi*fm*t)));
pmf=ac*cos((2*pi*fc*t)+(B*cos(2*pi*fm*t)));

subplot(4, 1, 1);
plot(t, x, 'r');
title('The Message Signal');
ylable('---------Message signal amp');
xlabel('---------Time');
grid on;

subplot(4, 1, 2);
plot(t, c, 'y');
title('The Carrier Signal');
ylable('---------Carrier signal amp');
xlabel('---------Time');
grid on;



subplot(4, 1, 3);
plot(t, smf, 'r');
title('The Fm Signal');
ylable('---------Fm signal amp');
xlabel('---------Time');
grid on;



subplot(4, 1, 4);
plot(t, pmf, 'y');
title('The PM Signal');
ylable('---------Pm signal amp');
xlabel('---------Time');
grid on;

