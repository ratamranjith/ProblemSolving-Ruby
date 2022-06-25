#-----------
# Good Pairs
# input
# 2 -> Test Cases
# 4 -> Size of Arrays A and B
# 1234 -> Elements of an array A
# 4321 -> Elements of an array B

def good_pairs(tc, size, list1, list2)

	count = size
	for i in list1
		for j in list2
			print("(A#{i}, B#{j})")
		end
		puts "\n"
	end
	return size
end


good_pairs(2, 4, [1,2,3,4], [4,3,2,1])