%{
    By  Prajval M   (16CO234)
        Sumukha PK  (16CO145)

    Problem Statement: Finding a prime P which is congruent to any given a
    and b such that p modb = a mod b
%}


% input a and b
a = input('\na: ');
b = input('\nb: ');

%Copy of the variables to reference later
a_const = a;
b_const = b;

if b==0
    fprintf("Modulo operation is not defined for zero, please provide working conditions!\n");
    return
end


% if isPresent is 1 then there are infinite primes else there are not
% p will be the first prime of the form p?a mod b
% p = -1 if it does not exist
[p, isPresent] = find_prime(a,b);

% if prime exists display the prime
if isPresent == 0
    if p ~= -1
        fprintf("%d is the ONLY PRIME congruent to %d mod %d\n\n", p,a_const,b_const);
    else 
        fprintf("\nNO PRIMES EXIST of the form p mod %d = %d mod %d\n\n",b_const,a_const,b_const);
    end
    return
end

fprintf("\nINFINITE PRIMES EXIST\n%d is the first prime which is congruent to %d mod %d\n", p,a_const,b_const);

primes_range = input('\nInput range of numbers where the primes of form p mod b = a mod b must be searched: ');
output_array = find_all_primes(a,b,primes_range);

if size(output_array)==0
    fprintf("No primes of form ---p mod b = a mod b--- in range provided! Please provide bigger range!");
else
    fprintf("Output array: ");
    for i = 1:size(output_array)
        fprintf("%d ",output_array(i));
    end
end
fprintf("\n\n");

