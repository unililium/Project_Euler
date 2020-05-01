#!/usr/bin/env ruby -wKU

a, b, c = 3, 4 ,5

499.times do
	b = 4
	499.times do
		c = 5
		999.times do
			if a + b + c == 1000 and a**2 + b**2 == c**2
				puts "a: #{a}, b: #{b}, c: #{c}."
				puts "abc = #{a*b*c}"
				break
			end
			c += 1
		end
		break if a + b + c == 1000 and a**2 + b**2 == c**2
		b += 1
	end
	break if a + b + c == 1000 and a**2 + b**2 == c**2
	a += 1
end
