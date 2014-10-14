# def make_change(amount, coins = [25,10,5,1])
# 	return [] if amount == 0

# 	best_change = nil
# 	coins.each do |coin|
# 		next if coin > amount

# 		change_for_rest = make_change(amount-coin, coins)
# 		change = [coin] + change_for_rest

# 		if best_change.nil? || change.count < best_change.count
# 			best_change = change
# 		end
# 	end

# 	best_change
# end

def make_change(amount, coins = [25,10,5,1])
	return [] if amount == 0

	best_change = nil
	coins.each do |coin|
		next if coin > amount
		change_for_rest = make_change(amount-coin, coins)
		change = [coin] + change_for_rest

		if best_change.nil? || change.count < best_change.count
			best_change = change
		end
	end

	best_change
end
# p make_change(14, [10,7,1])


class Array
	def bubble_sort!(&blk)
		blk = Proc.new { |x, y| x <=> y } unless blk

		sorted = false
		until sorted
			sorted = true

			count.times do |i|
				next if i == count - 1

				if blk.call(self[i], self[i+1]) == 1
					self[i], self[i+1] = self[i+1], self[i]
					sorted = false
				end
			end
		end

		self
	end
end

#p [3,2,1].bubble_sort!
def bsearch(arr, num)
	return nil if arr.empty?

	middle = arr.length/2
	p middle
	if arr[middle] == num
		return middle
	elsif num < arr[middle]
		bsearch(arr[0..middle-1], num)
	else
		middle + bsearch(arr[middle..-1], num)
	end

end


p bsearch([3,4,5,6],6)
		







