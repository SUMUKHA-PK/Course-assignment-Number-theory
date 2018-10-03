%{
    By  Prajval M   (16CO234)
        Sumukha PK  (16CO145)

    This function is used to find all the primes of the form p mod b = a
    mod b from 0 to primes_range
%}

% Generates numbers up to given range and provides all  primes satisying
% the criteria

function array = find_all_primes(a,b,primes_range)
    array=[];
    %Primes are of the form a + i*b, so we start from 'a' and move in steps of 'b'
    i=a;
    while i<=primes_range
        if is_prime(i)
           array = [ array ; i];
       end
       % Were neglecting cases where primes relevant ceases to exist
       i = i + b;
    end
   return
end