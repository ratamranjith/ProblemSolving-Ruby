require 'benchmark'
#------------------------------------------
# Find the largest number in an given array
class LargestNumber

	#------------
	# Constructor
	def initialize(arrayValue)
		@arrayValue = arrayValue
	end

	def findLargest_mine()
		largest = 0
		@arrayValue.length.times do |x|
			largest = (@arrayValue[x] >= largest)? @arrayValue[x] : largest
		end
		return largest
	end

	def findLargest_efficient()
		result = 0
		@arrayValue.length.times do |x|
			if(@arrayValue[x] > @arrayValue[result])
				result = x
			end
		end
		return @arrayValue[result]
	end

end

largest = LargestNumber.new [2,5,8,14,6,25, 4,198, 10, 12, 144, 23]
largest.methods


Benchmark.bm do |x|
x.report("My Solution"){largest.findLargest_mine}
x.report("Efficient Solution"){largest.findLargest_efficient}
end