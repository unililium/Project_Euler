#!/usr/bin/env python

with open("Problem13_numbers") as f:
    content = f.readlines()

numbers = [int(string) for string in content]

total = 0
for number in numbers:
    total += number

solution = str(total)[:10]
print(solution)
