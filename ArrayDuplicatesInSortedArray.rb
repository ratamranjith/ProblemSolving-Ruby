#---------------
# Naive Solution
def find_duplicates_length(arr)
	newIndex = 0
	length   = 0
	arr.each_with_index do |x, index|
		if(arr[index] != arr[index+1])
			arr[newIndex] = arr[index]
			length = newIndex
			newIndex += 1
		end
	end
	return length
end

arr = [1,1,2,2,3,3,4,4,5]
p find_duplicates_length(arr)