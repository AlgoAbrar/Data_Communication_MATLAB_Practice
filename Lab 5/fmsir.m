clc;
clear all;
close all;

% Asin(2*pi*f*t*phase)
Am= 0.5; %amplitude of message signal
Ac= 1; %amplitude of carrier signal
fm=5; %Frequency of message signal
fc=50; %Frequency of carrier signal
beta= 5;
t=0:0.0001:1; %Time Vector

m = Am* cos(2*pi*fm*t);
c= Ac* cos(2*pi*fc*t);
s = Ac * cos(2*pi*fc*t + beta * sin(2*pi*fm*t));
figure;
subplot(3,1,1);
plot(t,m,'m','LineWidth',1.5);
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t,c,'b');
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t,s,'r');
hold on;
plot(t, (Ac+m),'b','LineWidth',1);
plot(t, -(Ac+m),'b','LineWidth',1);
title('Modulated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
