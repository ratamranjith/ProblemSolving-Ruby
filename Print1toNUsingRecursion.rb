#-----------------------------
# Print 1 to N using Recursion
def print_numbers(number)
	if(number != 0)
		print("#{number} ")
		print_numbers(number-1)
	end
end

print_numbers(10)