function [ prime ] = find_prime( a, b)
    if b == 0
        prime = -1;  
    elseif b < 0 && a > 0
        b = -b;
    elseif b < 0 && a < 0
        b = -b;
        a = b+a;
    end
    prime = a
end