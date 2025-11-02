clc;
clear all;
close all;
data = [1 0 1 0 1 1];

Tb = 1;              % Bit duration (seconds)
fc1 = 5;             % Frequency for binary 1
fc2 = 10;            % Frequency for binary 0
fs = 500;            % Sampling frequency
t = 0:1/fs:Tb-1/fs;  % Time vector for one bit
FSK_signal = [];

% FSK Modulation
for i = 1:length(data)
    if data(i) == 1
        FSK_bit = sin(2*pi*fc1*t);  
    else
        FSK_bit = sin(2*pi*fc2*t);  
    end
    FSK_signal = [FSK_signal FSK_bit];  
end

time = 0:1/fs:Tb*length(data)-1/fs;
figure;

% Binary Data
subplot(4,1,1);
stairs(0:Tb:Tb*length(data), [data data(end)], 'LineWidth', 2);
title('Binary Input Data');
xlabel('Time (s)');
ylabel('Amplitude');
ylim([-0.5 1.5]);

% Carrier for binary 1
subplot(4,1,2);
plot(t, sin(2*pi*fc1*t), 'LineWidth', 2);
title(['Carrier Signal for bit 1 (f = ' num2str(fc1) ' Hz)']);
xlabel('Time (s)');
ylabel('Amplitude');

% Carrier for binary 0
subplot(4,1,3);
plot(t, sin(2*pi*fc2*t), 'LineWidth', 2);
title(['Carrier Signal for bit 0 (f = ' num2str(fc2) ' Hz)']);
xlabel('Time (s)');
ylabel('Amplitude');

% FSK Signal
subplot(4,1,4);
plot(time, FSK_signal, 'LineWidth', 2);
title('FSK Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
