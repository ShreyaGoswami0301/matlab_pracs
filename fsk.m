
close all;
clear all;
clc;
clf;

fc1=5;
fc2=80;
n=[1 1 0 0 1 1];
l=length(n)
if(n(l)==1)
    n(l+1)=1
else
    n(l+1)=0
end

l1=length(n)

tn=0:l1-1
subplot(5, 1, 1)
stairs(tn, n, 'r');
title('Message signal');
ylabel('-------message amp');
xlabel('-------time');
grid on;

t=0:0.01:1
c1=sin(2*pi*fc1*t)
subplot(5, 1, 2);
plot(t, c1, 'y');
title('Carrieer 1 signal');
ylabel('-------carrier amp');
xlabel('-------time');
grid on;

t=0:0.01:1
c2=sin(2*pi*fc2*t);
subplot(5, 1, 3);
plot(t, c2, 'g');
title('Carrieer 2 signal');
ylabel('-------carrier amp');
xlabel('-------time');
grid on;


for i=1:l
    for j=(i-1)*100:i*100
        if(n(i)==1)
            s(j+1)=c1(j+1)
        else
            s(j+1)=c2(j+1)
        end
    end
end

subplot(5, 1, 4);
plot(t, s, 'c');
title('modulated fsk signal');
ylabel('-------fsk amp');
xlabel('-------time');
grid on;


for i=1:l
    for j=(i-1)*100:i*100
        if(s(j+1)==c1(j+1))
            x(j+1)=1
        else
            x(j+1)=0
        end 
    end
end

subplot(5, 1, 4);
plot(t, x, 'm');
title('demodulated fsk signal');
ylabel('-------demod fsk amp');
xlabel('-------time');
grid on;

    
    
    
    
    
    
    