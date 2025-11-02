% Problem 1: Log10 Function Plot
%x = logspace(0,3,200); % from 10^0 to 10^3
%y = log10(x);
%semilogx(x, y, 'b', 'LineWidth', 2);
%title('Logarithmic X vs log10(x)');
%xlabel('X (log scale)');
%ylabel('log10(X)');
%grid on;

% Problem 2: Compare log10 and ln
% x = logspace(0,2,200);
% y1 = log10(x);
% y2 = log(x);
% semilogx(x, y1, 'r', 'LineWidth', 2); 
% hold on;
% semilogx(x, y2, 'g--', 'LineWidth', 2);
% title('Comparison: log10(x) vs ln(x)');
% xlabel('X (log scale)');
% ylabel('Log Value');
% legend('log10(x)', 'ln(x)');
% grid on;

% Problem 3: Area Plot of Sin(x)
% x = 0:0.5:2*pi;
% y = sin(x);
% area(x, y);
% title('Area Plot of Sin(x) from 0 to 2\pi');
% xlabel('X');
% ylabel('Sin(X)');
% grid on;

% Problem 4: Area Plot of Sin(x) + 0.5Cos(2x)
% x = 0:0.01:2*pi;
% y = sin(x) + 0.5*cos(2*x);
% area(x, y);
% title('Area Plot of Sin(x) + 0.5Cos(2x)');
% xlabel('X');
% ylabel('Value');
% grid on;

% Problem 5: Phase Change by ?/2
% x = 0:0.01:2*pi;
% y1 = sin(x);
% y2 = sin(x + pi/2);
% plot(x, y1, 'b', 'LineWidth', 2);
% hold on;
% plot(x, y2, 'r--', 'LineWidth', 2);
% title('Phase Change: sin(x) and sin(x + \pi/2)');
% xlabel('X');
% ylabel('Value');
% legend('sin(x)', 'sin(x + \pi/2)');
% grid on;


% Problem 6: Phase Change in Cosine Wave
% x = 0:0.01:2*pi;
% y1 = cos(x);
% y2 = cos(x + pi/4);
% plot(x, y1, 'g', 'LineWidth', 2);
% hold on;
% plot(x, y2, 'm--', 'LineWidth', 2);
% title('Phase Shift in Cosine: 0 and \pi/4');
% xlabel('X');
% ylabel('Value');
% legend('cos(x)', 'cos(x + \pi/4)');
% grid on;

% Problem 7: Frequency Comparison
% x = 0:0.001:1;
% y1 = sin(2*pi*1*x); % 1 Hz
% y2 = sin(2*pi*2*x); % 2 Hz
% plot(x, y1, 'b', 'LineWidth', 2);
% hold on;
% plot(x, y2, 'r--', 'LineWidth', 2);
% title('Frequency Change: 1 Hz vs 2 Hz');
% xlabel('Time (s)');
% ylabel('Amplitude');
% legend('1 Hz', '2 Hz');
% grid on;


% Problem 8: Cosine Frequency Change
x = 0:0.001:1;
y1 = cos(2*pi*5*x);  % 5 Hz
y2 = cos(2*pi*10*x); % 10 Hz
plot(x, y1, 'g', 'LineWidth', 2);
hold on;
plot(x, y2, 'm--', 'LineWidth', 2);
title('Cosine Waves: 5 Hz vs 10 Hz');
xlabel('Time (s)');
ylabel('Amplitude');
legend('5 Hz', '10 Hz');
grid on;

