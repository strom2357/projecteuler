def sum_sq_diff(low, high)
	ans = (sumsq(low, high) - sqsum(low,high)).abs
	return ans
end

def sumsq(low, high)
	i = low
	ans = 0
	while i <= high
		ans += i*i
		i += 1
	end
	ans
end

def sqsum(low, high)
	i = low
	ans = 0
	while i <= high
		ans += i
		i += 1
	end
	ans = ans*ans
	ans
end

puts sum_sq_diff(1,100)
