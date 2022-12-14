require 'benchmark'
#-------------------------------------------
# Program to find second largest in an array
class SecondLargest

	def initialize(arrayValue)
		@arrayValue = arrayValue
	end

	def secondLarge_naive()
		count = 0
		largest1 = 0
		largest2 = 0
		while (@arrayValue.length > count)
			if(largest1 < @arrayValue[count])
				
				#---------------------
				# Swapping takes place
				largest2 = largest1
				largest1 = @arrayValue[count]
			elsif(largest2 < @arrayValue[count])
				largest2 = @arrayValue[count]
			end
			count += 1
		end
		return largest2
	end
end

sec = SecondLargest.new([1,2,5,6,8,9,4,1,2])
Benchmark.bm do |x|
x.report("My Solution"){sec.secondLarge_naive}
end