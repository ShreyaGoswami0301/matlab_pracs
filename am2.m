close all;
clc;
Am=input('ENTER THE AMPLITUDE OF MODULATING SIGNAL ')
fm=input('ENTER THE FREQUENCY OF MODULATING SIGNAL ')
Ac=input('ENTER THE AMPLITUDE OF CARRIER SIGNAL ')
fc=input('ENTER THE FREQUENCY OF CARRIER SIGNAL ')
t=0:.001:1;
x=Am*cos(2*pi*fm*t);
c=Ac*cos(2*pi*fc*t);
s=(Ac+x).*cos(2*pi*fc*t);
d=s.*cos(2*pi*fc*t);
 
 
subplot(4, 1, 1);
plot(t, x, 'r');
title('Modulating signal');
xlabel('Time----->');
ylabel('Amplitude----->');
grid on;
 
 
subplot(4, 1, 2);
plot(t, c, 'b');
title('Carrier Signal');
xlabel('Time----->');
ylabel('Amplitude----->');
grid on;
 
subplot(4, 1, 3);
plot(t, s, 'g');
title('Amplitude Modulating signal');
xlabel('Time----->');
ylabel('Amplitude----->');
grid on;
 
subplot(4, 1, 4);
plot(t, d, 'c');
title('De-modulating signal');
xlabel('Time----->');
ylabel('Amplitude----->');
grid on;
 
m=Am/Ac;
Pc=(Ac^2)/2
Pt=Pc*(1+(m^2)/2)
 
