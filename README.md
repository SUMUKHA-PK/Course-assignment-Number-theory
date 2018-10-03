NTC ASSIGNMENT
=

## Question
<b>Write a MATLAB code to find a prime p satisfying p ≡ a(modb). Are
there infinitely many such primes, display it.</b>
___

## Solution Proposed

Problem analysis: 

* Given a and b, find gcd(a, b)

* gcd(a,b) = 1, <b> Infinite primes congruent to a mod b exist</b>

* Else if gcd(a,b) !=1 <b> Prime p congruent to a mod b may or may not exist. If a mod b such that a > 0, a < |b| and a is a prime then p = a or there are no prime satisfying the conditon.</b>
___

## Approach used : 


### If infinite primes are present and finding the first prime :

* If b = 0, case is not defined as a mod 0 is undefined. Terminate.

* Given a and b, normalize a and b to obtain new a and b such that a, b > 0 and a < b.

* Find gcd of a and b.
    
    * If gcd(a,b) = 1. Infinite primes which are congruent to a mod b are present.
        
        * Find the first prime p, by incrementing i from 0 such that <b>p = a + ib</b>
        and checking if p is a prime
    
    * If gcd(a,b) = 0. Infinite primes which are congruent to a mod b do not exist.

        * If a is a prime, then only 1 prime exists of the form <b>a mod b i.e a</b>.

        * If a is not a prime, then no prime exists of the form a mod b.

### Finding all primes when gcd(a,b) = 1

* Given a and b, find a(mod(b)) and find a list of primes p. 

* To the list of primes p, apply modulo b.  
* Check how many of the list of p(modb) are equal to a(modb).  

<b> Limitations of naive method:  </b>    
1. We must produce a lot of prime numbers. 
2. We might not know till where to produce numbers and may end up not finding relevant answers. 

We overcome above limitations by asking the user to input a limit of range of prime numbers to be seen.
___

## How to run:

* Code can be run only on MATLAB compilers.
* Run the main.m file.
* Input the desired numbers 'a' and 'b'
* If relevant primes exist, the program prompts for a range until which the primes satisfying the equation will be displayed.
* Finally the list of primes is displayed.