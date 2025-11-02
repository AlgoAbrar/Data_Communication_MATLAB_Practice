function [t, x] = diffmanchester(bits, bitrate)
    n = 100; % Samples per bit
    T = length(bits) / bitrate; % Total time duration
    N = n * length(bits); % Total number of samples
    dt = T / N; % Time step
    t = 0:dt:(T - dt); % Time vector
    x = zeros(1, length(t)); % Initialize signal
    last = 1; 
    for i = 0:length(bits)-1
        bit = bits(i + 1);
        if bit == 0
            last = -last;
            x(i * n + 1:i * n + 1 + floor(n/2)-1) = last;
            x(i * n + 1 + floor(n/2):i * n + 1 + n-1) = -last;
            last = -last; 
        else
            x(i * n + 1:i * n + 1 + floor(n/2)-1) = last;
            x(i * n + 1 + floor(n/2):i * n + 1 + n-1) = -last;
            last = -last; 
        end
    end
end
