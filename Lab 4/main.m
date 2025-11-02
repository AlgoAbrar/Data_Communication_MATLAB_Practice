clc; %terminal clear 
clear all; %all variable clear from work place
close all; %clear all figure from previous open
disp('My Name is Abrar');
% define bit pattern
bits = [1 0 1 1 0 1 0 1 1 1]; 
Tb= 1;
Fc= 4;
Fs= 500;
figure; 

[t,ask_signal]=ask(bits,Tb,Fc,Fs); 


subplot(3,1,1); %at a time 3 signal 3 row and 1 column
stairs(0:Tb:Tb*length(bits), [bits bits(end)],'LineWidth', 2);
xlabel('Time in Sec'); %x okkho name
ylabel('Amplitude'); %y okkho name
ylim([-1.5 1.5]);
title(['ASK Singal: ' num2str(bits)]);
grid on;

%Carrier Signal

% figure; 
% subplot(3,1,2); %at a time 3 signal 3 row and 1 column
% stairs(t, carrier,'LineWidth', 2);
% title('Carrier Signal');
% xlabel('Time in Sec'); %x okkho name
% ylabel('Amplitude'); %y okkho name
% ylim([-1.5 1.5]);

%Modulated Signal

% figure; 
% subplot(3,1,3); %at a time 3 signal 3 row and 1 column
% plot(time, ask_signal,'LineWidth', 2);
% title('Modulated Signal');
% xlabel('Time in Sec'); %x okkho name
% ylabel('Amplitude'); %y okkho name
% ylim([-1.5 1.5]);