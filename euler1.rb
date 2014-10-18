def sums(lower, upper)
	i = lower
	fits = []
	while i < upper
		if (i % 3 == 0) || (i % 5 ==0)
			fits.push(i)
		end
		i += 1
	end
	j = 0
	ans = 0
	while j < fits.count
		ans += fits[j]
		j += 1
	end
	return ans
end