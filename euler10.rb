def is_prime?(n)
	i = 2
	while i < (n**(0.5))+1
		if n % i == 0
			return false
		else
			i += 1
		end
	end
	return true
end

prime_arr = [2]
n = 3
while n <= 11 #2000000
	if is_prime?(n) 
		prime_arr.push(n)
	end
	n+=1
end

p prime_arr
i = 0
sum = 0
while i < prime_arr.length
	sum += prime_arr[i]
	i += 1
end

puts "SUM: #{sum}"