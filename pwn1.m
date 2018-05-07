clc;
close all;
clear all;
fm=input('Enter the message frequency');
fc=input('Enter the carrier frequency');
A=5;
t=0:.001:1;
c=A.*sawtooth(2*pi*fc*t);
m=0.75*A.*sin(2*pi*fm*t);

subplot(3, 1, 1)
plot(t,c);
xlabel('------time');
ylabel('-------Amplitude');
title('Message Signal');
grid on;

subplot(3, 1, 2)
plot(t, m);
xlabel('------time');
ylabel('-------Amplitude');
title('Carrier Signal');
grid on;

n=length(c);
for i=1:n
    if(m(i)>=c(i))
        pwn(i)=1;
    else
        pwn(i)=0;
    end
end

subplot(3, 1, 3)
plot(t, pwn);
xlabel('------time');
ylabel('-------Amplitude');
title('Plot of PWN Signal');
axis([0 1 0 2]);
grid on;


