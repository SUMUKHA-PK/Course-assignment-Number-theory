NTC ASSIGNMENT
=

## Question
<b>Write a MATLAB code to find a prime p satisfying p ≡ a(modb). Are
there infinitely many such primes, display it.</b>


## Solution Proposed

Problem analysis: 

* Given a and b, find gcd(a, b)
* gcd(a,b) = 1, <b> Infinite primes are present</b>
* Else if gcd(a,b) !=1 <b> Prime p exists if 'a' is prime </b>

___

Approach used : 
___

* Given a and b, find a(mod(b)) and find a list of primes p.  
* To the list of primes p, apply modulo b.  
* Check how many of the list of p(modb) are equal to a(modb).  

<b> Limitations of naive method:  </b>    
1. We must produce a lot of prime numbers. 
2. We might not know till where to produce numbers and may end up not finding relevant answers. 

We overcome above limitations by asking the user to input a limit of range of prime numbers to be seen.

How to run:

* Code can be run only on MATLAB compilers.
* Run the main.m file.
* Input the desired numbers 'a' and 'b'
* If relevant primes exist, the program prompts for a range until which the primes satisfying the equation will be displayed.
* Finally the list of primes is displayed.