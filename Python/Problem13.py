#!/usr/bin/env python

with open("Problem13_numbers") as f:
    content = f.readlines()

numbers = [int(string) for string in content]

total = sum(numbers)

solution = str(total)[:10]
print(solution)
