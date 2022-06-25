#----------------------
# Odd Occuring numberrs
# Example:
# 		1.	[3,4,3,4,5,6,7,8,7,8]
# 			Odd occuring elements are => 5, 6
#       2.  [20, 15, 16, 20]
# 			Odd occuring elements are => 15, 16
class TwoOddOccuring
	def initialize(numArray)
		@arrayValue = numArray
	end

	def naive_solution()
		number 		= nil
		storeNumber = nil
		len = @arrayValue.length - 1
		@arrayValue.each_with_index do |x, index|
			
		end
	end
end

oddOccur = TwoOddOccuring.new([3,4,3,4,5,6,7,8,7,8])
oddOccur.naive_solution()