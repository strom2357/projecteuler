arr = [1,2]
j = arr[-1]
bound = 4000000
while j < bound
	fibo = arr[-2]+arr[-1]
	if fibo > bound
		break
	end
	arr.push(fibo)
	j = arr[-1]
end

i = 0
ans = 0
while i < arr.count
	if arr[i] % 2 == 0
		ans += arr[i]
	end
	i += 1
end