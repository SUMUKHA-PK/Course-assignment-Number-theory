%{
    By  Prajval M   (16CO234)
        Sumukha PK  (16CO145)

    Problem Statement: Finding a prime P which is congruent to any given a
    and b such that p modb = a mod b
%}


% input a and b
a = input('\na: ');
b = input('\nb: ');

if b==0
    fprintf("Modulo operation is not defined for zero, please provide working conditions!\n");
    return
end

% display a and b
fprintf("For a=%d and b=%d\nFinding prime that satisfies p?a mod b....\n", a, b);


% if isPresent is 1 then there are infinite primes else there are not
% p will be the first prime of the form p?a mod b
% p = -1 if it does not exist
[p, isPresent] = find_prime(a,b);

% if prime exists display the prime
if isPresent == 0
    fprintf("Countable number of primes exist\n");
    if p ~= -1
        fprintf("%d is the only prime congruent to a mod b\n\n", p);
    end
    return
end

fprintf("\nINFINITE PRIMES EXIT\n%d is the first prime which is congruent to a mod b\n", p);

primes_range = input('\nHow many primes satisying the equation should be displayed?\n\n');
output_array = find_all_primes(a,b,primes_range);
for i = 1:size(output_array)
    fprintf("%d ",output_array(i));
end
fprintf("\n\n");

