function [t, x] = sudoternary(bits, bitrate)
    n = 100; % Samples per bit (increase for smoother waveform)
    T = length(bits) / bitrate; % Total time duration
    N = n * length(bits); % Total number of samples
    dt = T / N; % Time step
    t = 0:dt:(T - dt); % Time vector

    x = zeros(1, length(t)); % Initialize signal
    last = 1; 

    for i = 0:length(bits)-1
        bit = bits(i + 1);
    
        if bit == 1
            x(i * n + 1:(i + 1) * n) = 0;
        else
            last = -last;
            x(i * n + 1:(i + 1) * n) = last; 
        end
    end
end
