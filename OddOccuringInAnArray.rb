#----------------------------------
# Find the odd occuring in an array
class Occurings
	def initialize()
		p "Occurings"
	end

	def odd_occurings_naive_1(arrValue)
		count = 0
		arrValue.each do |x|
			count += 1 if(x%2 != 0)
		end
		return count
	end

	def odd_occurings_naive_2(arrValue)
		length = arrValue.length
		count = 0
		arrValue.each do |value|
			count = count ^ value
		end
		return count
	end



end


occur = Occurings.new()
p occur.odd_occurings_naive_1([1, 3, 5, 4, 8])
p occur.odd_occurings_naive_2([1, 3, 5, 4, 8])