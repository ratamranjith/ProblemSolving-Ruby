#----------------------------------------------------
# Given array of 'n' number that has values in range (1...n+1). 
# Every  number appears exactly once.
# Find the missing number
# Example:
# 			arr1 = [1, 4, 3] => Here, 2 is missing
# 			arr2 = [1, 5, 3, 2] => Here, 4 is missing
class VariationMissing
	def initialize(arrayValue)
		@arrayValue = arrayValue
	end

	def naive_solution_1()

		#-------------------
		# Using Intersection
		return (Array((1..@arrayValue.length+1)) - @arrayValue)[0]
	end
end



miss = VariationMissing.new([1,5,3,2])
miss.naive_solution_1()

