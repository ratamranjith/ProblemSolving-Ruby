#------------------------------
# Sum of digits using recursion
def sum_of_numbers(number)
quotient = number % 10
remainder = number / 10
	if(quotient == 0)
		return 0
	end
	return quotient + sum_of_numbers(remainder)
end

p sum_of_numbers(123)