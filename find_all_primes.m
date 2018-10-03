% Generates numbers up to given range and provides all  primes satisying
% the criteria

function array = find_all_primes(a,b,primes_range)
   array=[];
    for i = 1:primes_range
       if is_prime(i) && mod(i,b) == mod(a,b)
           array = [ array ; i];
       end
   end
   return
end