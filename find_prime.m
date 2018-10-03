%{
    By  Prajval M   (16CO234)
        Sumukha PK  (16CO145)

    This function is used to find whether there are infinite primes. The 
    function returns a value indicating existance of atleeas
%}


% FUNCTION PARAMETERS

% Return values :
% isPresent: tells whether there are infinite primes present of not
% prime:  will be the first prime of the form prime congruent to a mod b

% Input parameters:
% a and b: to find prime congruent to a mod b
function [ prime, isPresent ] = find_prime( a, b) 
    
    % normalize a and b such that a, b > 0 and b > a
    if b < 0
        b = -b;
    end
    
    % reduces the abs value of a such that it is smaller than b
    a = mod(a, b);
    
    % get gcd of a and b from the function get_gcd
    gcd = get_gcd(a,b);
    
    % From dirichlets theorem of arithmetic progression
    % if gcd(a, b) is 1 there are finite primes of the form prime congruent to a mod b
    % As there are finite primes it is difficult to tell whether there is a
    % prime or not.
    % Thus 
    % if a is a prime, prime = a
    % else prime is unknown (-1)
    if gcd == 1
        isPresent = 1;
    else
        isPresent = 0;
        if is_prime(a)
            prime = a;
        elseif a == 0 && is_prime(b)
            prime = b;
        else
            prime = -1;
        end
        return
    end
    
    
    % solving congruencies  -> p modb = a mod b is same as solving prime = a + b*i 
    % where i is any integer is_prime checks if the given number is a prime number or not
    prime = a;
    i = 1;
    
    %Finds the first prime number of the form p mod b = a mod b
    while is_prime(prime) == 0
        
        % Each iteration gives prime to be a unique number of the form a mod b
        prime = b*i + a;
        i = i + 1;
    end

    return
end