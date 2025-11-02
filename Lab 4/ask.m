clc;
clear all;
close all;
data = [1 0 1 0 1 1];

Tb = 1;              % Bit duration in seconds
fc = 10;             % Carrier frequency in Hz
fs = 500;            % Sampling frequency
t = 0:1/fs:Tb-1/fs;  % Time vector for one bit
carrier = sin(2*pi*fc*t);

ASK_signal = [];    
for i = 1:length(data)
    if data(i) == 1
        ASK_bit = carrier;     
    else
        ASK_bit = zeros(1, length(t));  
    end
    ASK_signal = [ASK_signal ASK_bit]; 
end

time = 0:1/fs:Tb*length(data)-1/fs;
figure;
% Binary Data
subplot(3,1,1);
stairs(0:Tb:Tb*length(data), [data data(end)], 'LineWidth', 2);
title('Binary Input Data');
xlabel('Time (s)');
ylabel('Amplitude');
ylim([-0.5 1.5]);
% Carrier Signal
subplot(3,1,2);
plot(t, carrier, 'LineWidth', 2);
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');
% ASK Modulated Signal
subplot(3,1,3);
plot(time, ASK_signal, 'LineWidth', 2);
title('ASK Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
