#!/usr/bin/env ruby -wKU

require 'mathn'

PRIMES_BELOW = 2_000_000
sum_of_primes = 0

Prime.each do |prime_number|
	if prime_number >= PRIMES_BELOW
		puts sum_of_primes
		break
	end
	sum_of_primes += prime_number
end
