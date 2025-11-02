function [t, x] = polarnrzl(bits, bitrate)

    T = length(bits) / bitrate;  % Total time duration
    n = 1000;                   % Samples per bit
    N = n * length(bits);       % Total samples
    
    dt = T / N;                 % Time step
    t = 0:dt:(T - dt);          % Time vector
    x = zeros(1, length(t));    % Initialize signal vector
    
    for i = 0:length(bits)-1
        if bits(i+1) == 1
            x(i*n+1:(i+1)*n) = -1;
        else
            x(i*n+1:(i+1)*n) = 1;
        end
    end   
end
