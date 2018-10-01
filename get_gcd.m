%{
    By  Prajval M   (16CO234)
        Sumukha PK  (16CO145)

    This function is used to find the gcd of two numbers a and b such that 
    a < b and a, b > 0  
%}

% get_gcd function inputs a and b as input parameters
% returns gcd(a,b) as the output

% FUNCTION PARAMETERS:

% Return value : 
% gcd : greatest common divisor of a and b

% Input parameters:
% a and b: to find gcd of a and b

function gcd = get_gcd( a, b)

    % Euclidean algorithm to find coprime numbers
    if(b==0)
        gcd = abs(a);                               %Absolute is used because, if -a is a gcd then a is also. And the greatest of the two is a, not -a.
    else
        gcd = get_gcd(b,mod(a,b));
    end
    return
end