%{
    By  Prajval M   (16CO234)
        Sumukha PK  (16CO145)

%}

function [ modulus ] = my_mod( a,b )
% Implements the modulus function
%   FUNCTION PARAMETERS: 'a' and 'b'
%   Function gives result of a modulo b

x = floor(a/b);

modulus = a - x*b;

end

