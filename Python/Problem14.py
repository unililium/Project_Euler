#!/usr/bin/env python

# Longest Collatz Sequence

nd = {}

def sequence(n):
    num = 0
    n_start = n
    while n != 1:
        if str(n) in nd:
            num += nd[str(n)]
            break
        elif n % 2 == 0:
            n = n/2
        else:
            n = 3*n + 1
        num += 1

    nd[str(n_start)] = num
    return num

max = 0
for n in xrange(1, 1000000):
    num = sequence(n)
    if num > max:
        max = num
        max_n_start = n

print(max_n_start)
