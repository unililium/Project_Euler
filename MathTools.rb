#!/usr/bin/env ruby -wKU

def isPrime?(num)
	return true if num == 2
	return false if num == 0 or num == 1 or num % 2 == 0
	i = 2
	while i <= (Math.sqrt(num)).ceil
		return false if num % i == 0
		i += 1
	end
	return true
end