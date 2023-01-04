#------------------------
# Reversing a given array

#--------------------------------------------
# Naive Solution - Using Additional Varaibles
#------#
# Times#
def reverse_array_1(arrayValue)
	retVal = []
	len = arrayValue.length
	(arrayValue.length).times do |x|
		retVal << arrayValue[len - (x+1)]
	end
	return retVal
end

#----------------#
# Each with index#
def reverse_array_2(arrayValue)
	retVal = []
	length = (arrayValue.length - 1)
	arrayValue.each_with_index do |value, index|
		retVal << arrayValue[length - index]
	end
	return retVal
end

#-----#
# Each#
def reverse_array_3(arrayValue)
	retVal = []
	length = arrayValue.length - 1
	count = 0
	arrayValue.each do |x|
		retVal[length - count] = x
		count += 1
	end
	return retVal
end

#------------------------------------------------------
# Using Swapping Mechanism - Optimized theta(n/2) times
def reverse_array_swap(arrayValue)

	#-------------------------
	# Variables initialization
	last    = arrayValue.length - 1
	counter = 0
	temp    = nil
	while( counter < last)
		temp = arrayValue[counter]
		arrayValue[counter] = arrayValue[last]
		arrayValue[last] = temp
		counter += 1
	end
	return arrayValue
end