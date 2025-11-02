clc;
clear all;
close all;
data = [1 0 1 0 1 1];

Tb = 1;              % Bit duration in seconds
fc = 10;             % Carrier frequency in Hz
fs = 500;            % Sampling frequency
t = 0:1/fs:Tb-1/fs;  % Time vector for one bit
carrier = sin(2*pi*fc*t);
PSK_signal = [];

% PSK Modulation
for i = 1:length(data)
    if data(i) == 1
        PSK_bit = carrier;         
    else
        PSK_bit = -carrier;      
    end
    PSK_signal = [PSK_signal PSK_bit];
end

time = 0:1/fs:Tb*length(data)-1/fs;
figure;
% Binary Input
subplot(3,1,1);
stairs(0:Tb:Tb*length(data), [data data(end)], 'LineWidth', 2);
title('Binary Input Data');
xlabel('Time (s)');
ylabel('Amplitude');
ylim([-0.5 1.5]);
% Carrier Signal
subplot(3,1,2);
plot(t, carrier, 'LineWidth', 2);
title(['Carrier Signal (f = ' num2str(fc) ' Hz)']);
xlabel('Time (s)');
ylabel('Amplitude');

% PSK Modulated Signal
subplot(3,1,3);
plot(time, PSK_signal, 'LineWidth', 2);
title('PSK Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
