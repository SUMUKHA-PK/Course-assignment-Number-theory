**NTC ASSIGNMENT**


Question: Write a MATLAB code to find a prime p satisfying p ≡ a(modb). Are
there infinitely many such primes, display it.


**Solution Proposed**
    Naive method:
        1. Given a and b, find a(mod(b)) and find a list of primes p.
        2. To the list of primes p, apply modulo b.
        3. Check how many of the list of p(modb) are equal to a(modb).
    Limitations of naive method:
        1. We must produce a lot of prime numbers.
        2. We might not know till where to produce numbers and may end up not finding relevant answers.
