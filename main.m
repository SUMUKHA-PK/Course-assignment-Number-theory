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

p = find_prime(a,b);

display(p);