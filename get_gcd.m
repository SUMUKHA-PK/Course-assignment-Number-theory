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
    % pseudo code for the algorithm
    % function gcd(a, b)
    %     while a ? 0
    %        t := a; 
    %        a := b mod a; 
    %        b := t; 
    %     return a;
    while a ~= 0
        t = a;
        a = my_mod(b, a);
        b = t;
    end
    
    gcd = b;
    return
end