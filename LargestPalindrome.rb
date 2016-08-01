class LargestPalindrome
	def three_digit_number(rangeValue)
		largest, mulValue = 0, 0
		length = Array(rangeValue)
		length.each do |first|
			length.each do |second|
				mulValue = (first * second).to_s
				if (mulValue.eql? mulValue.reverse)
					if(largest <= mulValue.to_i)
						largest = mulValue.to_i
					end
				end
			end
		end
		return largest
	end
end

pal = LargestPalindrome.new
p pal.three_digit_number(111..999)