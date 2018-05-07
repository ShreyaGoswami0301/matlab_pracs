clc;
close all;
clear all;
clf;

fc=20;
n=[ 1 1 0 1 1 ];
l=length(n);

if (n(l)==1)
    n(l+1)=1;
else 
    n(l+1)=0;
end

l1=length(n);
t=0:l1-1;
subplot(4, 1, 1);
stairs(t, n, 'r');
title('Message Signal');
ylabel('-----Message amp');
xlabel('------Time');
grid on;


t1=0:.01:1;
c=sin(2*pi*fc*t1);
subplot(4, 1, 2);
plot(t1, c, 'y');
title('Carrier Signal');
ylabel('-----Carrier amp');
xlabel('------Time');
grid on;

for i=1:1
    for j=(i-1)*100:i*100
        if (n(i)==1)
            s(j+1)=c(j+1);
        else 
            s(j+1)=0;
        end
    end
end
            
subplot(4, 1, 3);
plot(t1, s, 'g');
title('ASK Signal');
ylabel('-----ASK amp');
xlabel('------Time');
grid on;


for i=1:1
    for j=(i-1)*100:i*100
        if(s(j+1)==c(j+1))
            x(j+1)=1;
        else
            x(j+1)=0;
        end
    end
end

subplot(4, 1, 4);
plot(t1, x, 'c');
title('ASK DEMOD Signal');
ylabel('-----ASK DEMOD amp');
xlabel('------Time');
grid on;


