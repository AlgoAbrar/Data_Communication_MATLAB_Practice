function [t, x] = unipolarnrz(bits, bitrate)
    n = 100; % Number of samples per bit (increase for smooth)
    T = length(bits) / bitrate; % total time duration
    N = n * length(bits); % total samples

    dt = T / N; % time step
    t = 0:dt:(T - dt); % time vector

    x = zeros(1, length(t)); % initialize signal

    for i = 0:length(bits)-1
        if bits(i+1) == 1
            x(i*n+1:(i+1)*n) = 1;
        else
            x(i*n+1:(i+1)*n) = 0;
        end
    end
end
