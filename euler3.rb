target = 9
i = 2
factors = []
puts "Looking for factors of #{target}"
while i < (Math.sqrt(target))+1
	if target % i == 0
		factors.push(i)
	end
	i += 1
end

puts factors
puts "Now pulling out primes..."
#now cut out everything that can be broken down further
j = 0
primes = []
while j <= factors.count
	k = j+1
	while k < factors.count
		if factors[k]%factors[j] == 0
			factors.delete_at(k)
			j = 0
			k = j+1
		end
		k += 1
	end
	j += 1
end
puts factors.max
