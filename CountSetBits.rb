#---------------------------------------------------
# Count Set Bits
# Find the set bits in the number 
# For Eg: 
# 		 3 -> 0000011 => 2 set bits (means two 1's)
# 		13 -> 0001101 => 3 set bits (means three 1's)
require 'benchmark'
class SetBits
	def initialize()
		p ""
	end

	def naive_solution_1(number)
		p "Naive Solution - While Loops and condition"
		sets = 0
		while(number > 0)
			sets += 1 if(number % 2 != 0)
			number = number/2
		end
		return sets
	end

	def naive_solution_2(number)
		p "Naive Solution 2 - While and condition using logical operator"
		sets = 0
		while(number > 0)
			sets += 1 if(number & 1 != 0)
			number = number/2 
		end
		return sets
	end

	def naive_solution_3(number)
		p "Naive Solution 3 - While and condition using logical and right operator"
		sets = 0
		while(number > 0)
			sets += 1 if((number & 1) == 1)
			number = number >> 1
		end
		return sets
	end

	def naive_solution_4(number)
		p "Average Solution - logical operator"
		sets = 0
		while(number > 0)
			sets = sets + (number & 1)
			number = number >> 1
		end
		return sets
	end

	def average_solution(number)
		p "Average Solution - Brian and Kerningham Algorithm"
		#---------------------------------------------
		# 1st loop : 40 & (40 - 1)   => 32
		# 			101000 - 100111 => 100000 (i.e) 32
		# 2nd loop : since number > 0
		#           32 & (32 - 1)   => 0
		#           100000 - 011111 => 0
		sets = 0
		while(number > 0)
			number = (number & (number - 1))
			sets += 1
		end
		return sets
	end
end


sets = SetBits.new()
Benchmark.bm do |x|
	x.report("Naive Solution - 1") {p sets.naive_solution_1(40)}
	x.report("Naive Solution - 2") {p sets.naive_solution_2(40)}
	x.report("Naive Solution - 3") {p sets.naive_solution_3(40)}
	x.report("Naive Solution - 4") {p sets.average_solution(40)}
	x.report("Average Solution")   {p sets.average_solution(40)}
end