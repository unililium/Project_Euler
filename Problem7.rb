#!/usr/bin/env ruby -wKU

require_relative 'MathTools.rb'
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

print "Insert desired cardinal value: "
cardinal = gets.chomp
TODO = cardinal.to_i
i = 3
c = 1
while i <= TODO ** 2
	if i.to_i.isPrime?
		c += 1
		if c == TODO
			puts "The #{c}st prime number is: #{i}"
			break
		end
	end
	i += 2
end
