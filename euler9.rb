a = 1
c = 3
def squarecheck(c)
	a = 1
	while a < c-1
		b = a +1
		while b < c
			if (a*a)+(b*b)==(c*c)
				puts "A = #{a}, B = #{b}, A2+B2 = #{c*c}; A+B+C = #{a+b+c}"
				if a+b+c == 1000
					puts "ANS: #{a*b*c}"
					return
				end
			end
			b += 1
		end
		a += 1
	end
end

while c < 500
	squarecheck(c)
	c += 1
end