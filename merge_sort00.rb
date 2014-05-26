def merge_sort(arr)
	# base case 
	return arr if arr.size <= 1

	#recursive case
	midpoint = arr.size/2
	left = merge_sort(arr[0..midpoint-1])
	right = merge_sort(arr[midpoint..-1])

	merge(left, right)
end

def merge(left, right)
	sorted = []
	while left.length > 0 || right.length > 0 
		if left.length > 0 && right.length > 0
			if left[0].to_i <= right[0].to_i
				sorted << left.shift
			else
				sorted << right.shift
			end
		elsif left.length > 0
			sorted << left.shift
			#sorted.concat(left)
		elsif right.length > 0
			sorted << right.shift 
			#sorted.concat(right)
		end
	end
	return sorted
end
				

input_arr = %w(1 2 8 7 68 467 97 44 12 732 13 46 858).shuffle
p input_arr

p merge_sort(input_arr)