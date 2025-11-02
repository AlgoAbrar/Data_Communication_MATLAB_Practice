function [t,x] = polarnrzi(bits, bitrate)
    T = length(bits) / bitrate;  % total duration
    n = 1000;                   % samples per bit
    N = n * length(bits);       % total samples
    dt = T / N;                 % time step
    t = 0:dt:(T - dt);          % time vector
    x = zeros(1, length(t));    
    p_lvl = 1;                  % initial 
   
    for i = 0:length(bits)-1
        if bits(i+1) == 1
            p_lvl = -p_lvl;         % toggle '1' bit
            x(i*n+1:(i+1)*n) = p_lvl;
        else
            x(i*n+1:(i+1)*n) = p_lvl;  % keep '0' bit
        end
    end
end
