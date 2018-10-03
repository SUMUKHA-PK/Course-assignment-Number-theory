%Checking whether the input number is prime
%Logic is to check whether a number is divisible by any number less than
%its square root
function result = is_prime(a)
    f=1;
    for i = 2:sqrt(a)
        if(mod(a,i)==0)
            f=0;
            break;
        end
    end
    result = f;
    return
end