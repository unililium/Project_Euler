#!/usr/bin/env ruby -wKU
class Fixnum
	def isPrime?
		return true if self == 2
		return false if self == 0 or self == 1 or self % 2 == 0
		i = 2
		while i <= (Math.sqrt(self)).ceil
			return false if self % i == 0
			i += 1
		end
		return true
	end
end