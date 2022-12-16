#---------------------------------------------
# Program to remove duplicates in sorted array
# Naive Solution
def remove_duplicates_in_array(arrayValue)
	finalArray = []
	tempArray = 0
	arrayValue.each do |x|
		if(tempArray != x)
			finalArray << x
			tempArray = x
		end
	end
	return finalArray
end

p remove_duplicates_in_array([1,1,2,2,2,3,5])