#--------------------------------------------------------------------
# File Name: TwoSumProblem
#--------------------------------------------------------------------
# Description: 
# Find all the pairs of two integers in an unsorted array that sum up
# to a given S.
#--------------------------------------------------------------------
# For Eg: if we need the sum of value is 7
#--------------------------------------------------------------------

#------------------
# Incremental Value
count = 0

#--------------
# Getting input
inputValue = 8

#-----------------------
# Initializing the Array
value = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

(value.length).times do |x|
	x.times do |y|
		if ((value[x]+ value[y]) == inputValue)
			print " [#{value[x]}, #{value[y]}] "
			count = count + 1
		end
	end
end

puts "The Total Count is : #{count}"		