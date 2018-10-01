%{
    By  Prajval M   (16CO234)
        Sumukha PK  (16CO145)

    Problem Statement: Finding a prime P which is congruent to any given a
    and b such that p?a mod b
%}


% input a and b
a = input('\na: ');
b = input('\nb: ');

% display a and b
fprintf("\n\nFor a=%d and b=%d\n Finding prime that satisfies p?a mod b....\n", a, b);


% if isPresent is 1 then there are infinite primes else there are not
% p will be the first prime of the form p?a mod b
% p = -1 if it does not exist
p, isPresent = find_prime(a,b);

% if prime exists display the prime
if p ~= -1
    display(p);
end

%@ Sumukha ask for upper limit and display all primes till that

