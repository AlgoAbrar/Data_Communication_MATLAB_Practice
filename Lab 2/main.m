clc; %terminal clear 
clear all; %all variable clear from work place
close all; %clear all figure from previous open
disp('My Name is Abrar');
% define bit pattern
bits = [0 1 0 0 1 1]; 
bitrate = 1; %bit per second

figure; %open a new figure

% call the function
[t,s]=sudoternary(bits,bitrate); % t-> time vector s-> signal amplitude vector

plot(t,s,'linewidth',3);
xlabel('Time in second', 'fontsize',14,'fontWeight','bold'); %x okkho name
ylabel('Amplitude in Volts', 'fontsize',14,'fontWeight','bold'); %y okkho name
title(['Pseudo Ternary: ' num2str(bits)]);
