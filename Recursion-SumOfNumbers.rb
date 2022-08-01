#---------------------------------
# Sum of N numbers using recursion
def sum_of_numbers(number)
	value = (number == 0)? "=" : "+"
	print("#{number} #{value} ")
	return number if(number == 0)
	return number + sum_of_numbers(number - 1)
end

p sum_of_numbers(10)