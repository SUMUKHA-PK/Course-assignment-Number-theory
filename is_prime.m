%{
    By  Prajval M   (16CO234)
        Sumukha PK  (16CO145)

    This function is used to find if a given a is prime or not.
    Input is the number to be checked.
    Output is a boolean answer 1(if prime) or 0(if not prime)
%}

% Checking whether the input number is prime
% Logic is to check whether a number is divisible by any number less than
% its square root
function result = is_prime(a)
    % flag is 1 if number is prime
    result=1;
    
    % if the number is <= 1 it cannot be a prime number
    if a<=1
        result=0;
    end

    % algorithm to find if a number is prime: if any number divides it,
    % break the loop
    for i = 2:sqrt(a)
        if(my_mod(a,i)==0)
            result=0;
            break;
        end
    end
    return
end