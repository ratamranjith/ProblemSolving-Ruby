#--------------------------------------------------------
# Method to check the given number is power of two or not
# Power of are,
# 			2 to the power 0 => 1
# 			2 to the power 1 => 2
#           2 to the power 2 => 4
# 			2 to the power 3 => 8
class PowerOfTwo
	def initialize()
		p ""
	end

	def naive_solution(number)

		return ((number == 1 or (number > 0 and (number & (number-1)) == 0))? true : false)
	end
end

power = PowerOfTwo.new()
256.times do |x|
	if(power.naive_solution(x))
		p "#{x}"
	end
end