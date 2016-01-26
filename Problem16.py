#!/usr/bin/env python

n = 2**1000
s = str(n)
l = [ int(c) for c in s ]
sol = sum(l)
print(str(sol))
