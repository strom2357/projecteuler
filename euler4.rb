def pal_array(lower,upper)
	i = lower
	pals = []
	while i < upper
		if is_pal(i.to_s)
			pals.push(i)
		end
		i += 1
	end
	return pals
end

def is_pal(str)
	j = 1
	while j < ((str.length)/2)+1
		if str[(j-1)] == str [-j]
			#carry on
		else
			return false
		end
		j += 1
	end
	return true
end

targets = pal_array(100*100, 999*999)
i = 1
while i < targets.count
	j = 100.0
	while j < 1000
		if targets[-i]/j == targets[-i]/j.to_i && targets[-i]/j >= 100 && targets[-i]/j <= 999
			puts targets[-i]
			puts j
			return targets[-i]
		end
		j+=1
	end
	i+=1
end