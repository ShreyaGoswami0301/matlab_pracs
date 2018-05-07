close all;
clc;

t=0:.001:1;
am=input('Enter the message signal')
fm=input('Enter the message frequency')
ac=input('Enter the carrier signal')
fc=input('Enter the carrier frequency')
x=am*cos(2*pi*fm*t);
c=ac*cos(2*pi*fc*t);
s=(ac+x).*cos(2*pi*fc*t);
d=s.*cos(2*pi*fc*t);

subplot(4, 1, 1)
plot(t, x, 'r');
title('Message signal');
xlabel('----------Time');
ylabel('----------Message_Amplitude');
grid on;

subplot(4, 1, 2);
plot(t, c, 'y');
title('Carrier signal');
xlabel('----------Time');
ylabel('----------Carrier_Amplitude');
grid on;


subplot(4, 1, 3)
plot(t, s, 'c');
title('Modulated Signal signal');
xlabel('----------Time');
ylabel('----------Modulation_Signal');
grid on;

subplot(4, 1, 4)
plot(t, d, 'b');
title('Demodulated signal');
xlabel('----------Time');
ylabel('----------Demodulated_Amplitude');
grid on;

m=am/ac;
pc=(ac^2)/2
p=pc*(1+(m^2)/2)