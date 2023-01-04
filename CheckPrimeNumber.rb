#-----------------------------
# Program to find prime number
def check_prime(input)

	#----------
	# Base Case
	return false if(input.eql? 0 or input.eql? 1)

	(2..(input-1)).each do |x|
		if(input % x == 0)
			return false
		end
	end
	return true
end

for i in (2..1000)
	puts i if(check_prime(i))
end