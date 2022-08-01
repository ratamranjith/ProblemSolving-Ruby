#-----------------------------
# Print N to 1 using Recursion
def print_numbers(number)
	if(number != 0)
		print("#{number} ")
		print_numbers(number-1)
	end
end

#-----------------------------
# Print 1 to N using Recursion
def print_numbers_1_to_n(number)
	if(number != 0)
		print_numbers_1_to_n(number-1)
		print("#{number} ")
	end
	puts " "
end

print_numbers(10)
print_numbers_1_to_n(10)