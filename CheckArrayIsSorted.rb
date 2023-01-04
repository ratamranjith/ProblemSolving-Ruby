#-------------------------------------------------
# Program to find the given array is sorted or not
def check_sorted(arrayValue)
	value = 0
	arrayValue.each do |x|
		if(value <= x)
			value = x
		else
			return false
		end
	end
	return true
end

p check_sorted([1,2,2,4,5])