clc;
close all;
clear all;
clf;

n1=input('Enter the number of bits');

for i=1:n1
    n(i)=input('Enter the bits');
end
l=length(n);
if(n(l)==1)
    n(l+1)=1;
else
    n(l+1)=0;
end

l1=length(n);
tn=0:l1-1;
subplot(4, 1, 1);
stairs(tn, n, 'r');
title('--------Message signal');
ylabel('--------message amp');
xlabel('--------time');
grid on;


t=0:.01:1;
c=sin(2*pi*fc*t);
subplot(4, 1, 2);
plot(t, c, 'y');
title('--------Carrier signal');
ylabel('--------carrier amp');
xlabel('--------time');
grid on;


for i=1:1
    for j=(i-1)*100:i*100
        if(n(i)==1)
            s(j+1)=c(j+1)
        else
            s(j+1)=0;
        end
    end
end


subplot(4, 1, 3);
plot(t, s, 'g');
title('--------ASK signal');
ylabel('--------ASK amp');
xlabel('--------time');
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
plot(t, x, 'c');
title('--------ASK demod signal');
ylabel('--------ASK demod amp');
xlabel('--------time');
grid on;



