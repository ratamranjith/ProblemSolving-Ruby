require_relative"GCD.rb"

#------------------------------------
# LCM of two numbers - Naive Solution
def lcm(num1, num2)
	max = (num1 > num2)? num1 : num2

	while(true)
		return max if(max % num1 == 0 && max % num2 == 0)
		max += 1
	end
	return max
end

p lcm(2, 3)

num1 = 10
num2 = 12
 #-------------------------------------
 # LCm of two numbers - Averge solution

 	#--------------------------------
 	# Step1 - Find GCD of two numbers
	gcd = GCD.new()
	p ((10*12)/gcd.gcd_recursive_eucledean(num1, num2))