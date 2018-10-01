%{
    By  Prajval M   (16CO234)
        Sumukha PK  (16CO145)

    This function is used to find the gcd of two numbers a and b such that 
    a < b and a, b > 0  
%}



% Euclidean algorithm to find coprime numbers

function gcd = get_gcd( a, b)
    while a ~= 0
        c = a;
        a = mod(b, a);
        b = c;
    end
    
    gcd = b;
    return
end