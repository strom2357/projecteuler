#1 
=begin
total = 0
1000.times do | number |
	if (number % 3 == 0) || (number % 5 == 0)
		total += number
	end
end
puts total	
=end

=begin
#2
fibarray = [1,2]
total = 2
while fibarray[-1] + fibarray[-2] < 4000001
	fibarray.push(fibarray[-1]+fibarray[-2])
	if fibarray[-1] % 2 == 0
		total += fibarray[-1]
	end
end
puts total
=end

=begin
j = 2.0
factors = []
while j < Math.sqrt(600851475143)+1
	if 600851475143 % j == 0
		factors.push(j)
	end
	j += 1.0
end
k = 0
while k < factors.count
	test = 2
	while test < factors[k]
		if factors[k]%test == 0
			factors.delete_at(k)
			k -= 1
		end
		test += 1
	end
	k+=1
end
puts factors.max
=end

=begin
def factor_search(target)
	factors = []
	i = 1
	while i < (Math.sqrt(target)+1)
		if target % i == 0
			factors.push(i)
			if (target/i) != i
				factors.push(target/i)
			end
		end
		i += 1
	end
	return factors.length
end

triangle = 1
val_to_add = 2

while factor_search(triangle) < 500
	triangle += val_to_add
	val_to_add += 1
	if factor_search(triangle) > 100
		puts "#{triangle} #{val_to_add-1} #{factor_search(triangle)}"
	end
end

puts triangle
puts factor_search(triangle)
=end

=begin
#14
#longest collatz sequence
$lengths = [1]
def chainsearch(int, sequence)
	if int != 1
		if int.even?
			next_int = int/2
		else
			next_int = (3*int)+1
		end
		sequence.push(next_int)
		chainsearch(next_int, sequence)
	else 
		$lengths.push(sequence.length)
	end
end

#def sequence(int)
#	if int < 1000000
#		chainsearch(int, [int])
#		sequence(int+1)
#	else 
#		p $lengths
#	end
#end
i = 2
while i < 1000000
	chainsearch(i, [i])
	i += 1
end
maximum = $lengths.max
p maximum
p $lengths.index(maximum)+1
#~25 seconds
#837799
=end

#num 16 and #num20
def digital_root(num)
	next_step =  digital_root_step(num)
	if next_step > 9
		digital_root(next_step)
	else 
		return next_step
	end
end
	
def digital_root_step(num)
	num_arr = []
	while num > 0
		num_arr.push(num % 10)
		num = ((num-num % 10)/10)
	end
	step_result = 0
	num_arr.each do |i|
		step_result += i
	end
	return step_result
end

fact = 1
i = 100
while i > 1
	fact *= i
	i -= 1
end
puts digital_root_step((fact))








