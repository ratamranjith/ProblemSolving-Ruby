require "benchmark"
class GCD

	def initialize()
		num1 = nil
		num2 = nil
	end

	#-----------------------------------------------
	# GCD - Greatest Common Divisor - Naive Solution
	def gcd_numbers(num1, num2)

		#----------------------------
		# Find Minimum of two numbers
		min = (num1 > num2)? num2 : num1

		#--------------------------------
		# Loop until minumum reaches zero
		while(min > 0)
			if(num1%min == 0 && num2%min == 0)
				break #Break if both the conditions satisfied
			end
			min -= 1
		end
		print(" \n  Naive Solution: ")
		return min
	end

	#---------------------------------------------------------------------
	# Average Solution - Using multiple subtractions (Euclidean Algorithm)
	def gcd_euclidean(num1, num2)

		#------------------------------
		# num1 should not equal to num2
		while(num1 != num2)
			if(num1 > num2)
				num1 = num1 - num2
			else
				num2 = num2 - num1
			end
		end
		print("\n  Average Solution - Using multiple subtractions: ")
		return num1
	end

	#---------------------------------------------------
	# Average Solution - Using mod (Euclidean algorithm)
	def gcd_mod_euclidean(num1, num2)
		while(num2 != 0)
			temp = num2
			num2 = num1 % num2
			num1 = temp
		end
		print("\n  Average Solution - Using mod (Euclidean algorithm): ")
		return num1
	end

	#---------------------------------------------------------------
	# Best Solution  Using Recursive by applying Eucledean Algorithm
	def gcd_recursive_eucledean(num1, num2)
		retVal = 0
		retVal = (num2 == 0)? num1 : gcd_recursive_eucledean(num2, (num1 % num2))
		return retVal
	end
end

Benchmark.bm do |x|
gcd = GCD.new()
x.report("Naive 1"){p gcd.gcd_numbers(10, 15)}
x.report("Naive 2"){p gcd.gcd_euclidean(10, 15)}
x.report("euclidean algorithm"){p gcd.gcd_mod_euclidean(10, 15)}
x.report("Best Solution  Using Recursive by applying Eucledean Algorithm:"){p gcd.gcd_recursive_eucledean(10, 15)}
end