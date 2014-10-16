#!/usr/bin/ruby

matrix = Hash.new(0)

file = File.new("text11.txt", "r")
row = 0
file.each_line { |line|
	column = 0
  	words = line.split
  	words.each { |word|
  		matrix[[row, column]] = word.to_i
  		column += 1
	}
	row += 1
}  
file.close

max = 0
a = []
m = 4
for i in 0..19
	for j in 0..19
		z = 0
		p1 = 1
		p2 = 1
		p3 = 1
		p4 = 1
		while z < m
			p1 *= matrix[[i, j + z]]
			p2 *= matrix[[i + z, j]]
			p3 *= matrix[[i + z, j + z]]
			p4 *= matrix[[i - z, j + z]]
			z += 1
		end
		max = p1 if p1 > max
		max = p2 if p2 > max
		max = p3 if p3 > max
		max = p4 if p4 > max
	end
end
puts max