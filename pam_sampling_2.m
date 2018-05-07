clc; clear
 close all 
fc=100;
fm=fc/10;
fs=100*fc;
 
t=0:1/fs:4/fm;
 
mt=cos(2*pi*fm*t);
 
ct=0.5*square(2*pi*fc*t)+0.5; 
st=mt.*ct;
figure(1)
subplot(4,1,1);
 
plot(t,mt); 
title('message signal'); 
xlabel('timeperiod'); 
ylabel('amplitude'); 
subplot(4,1,2); plot(t,ct); 
title('carrier signal'); 
xlabel('timeperiod');
 
ylabel('amplitude');
subplot(4,1,3);
 
plot(t,st); 
title('modulated signal'); 
xlabel('timeperiod'); 
ylabel('amplitude');
 
% Demodulation 
dt=st.*ct;
filter=fir1(200,fm/fs,'low'); 
% FIR filter
 
demod_signal=conv(filter,dt); % Convolution between filter coefficient and dt
t1=0:1/(length(demod_signal)-1):1; 
t1=linspace(0,1,length(demod_signal));
 
subplot(4,1,4); 
plot(t1,demod_signal); 
title('Demodulated signal'); 
xlabel('timeperiod'); 
ylabel('amplitude');
