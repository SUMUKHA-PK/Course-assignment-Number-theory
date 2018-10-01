NTC ASSIGNMENT
=

## Question
<b>Write a MATLAB code to find a prime p satisfying p ≡ a(modb). Are
there infinitely many such primes, display it.</b>


## Solution Proposed

Naive method:
___

* Given a and b, find a(mod(b)) and find a list of primes p.  
* To the list of primes p, apply modulo b.  
* Check how many of the list of p(modb) are equal to a(modb).  

<b> Limitations of naive method:  </b>    
1. We must produce a lot of prime numbers.  
2. We might not know till where to produce numbers and may end up not finding relevant answers.