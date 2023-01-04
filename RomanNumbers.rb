romanHash = {"I" => "1", "V" => "5", "X" => "10", "L" => "50", "C" => "100", "D" => "500", "M" => "1000"}

def roman_to_int(x)
	sum = 0
	prevIndex = 0
	currentIndex = 0
	splitted = x.split("")
	splitted.each do |val|
		currentIndex = @ha[val].to_i
		if(prevIndex.eql? currentIndex or prevIndex > currentIndex)
			sum += @ha[val].to_i
		else
			sum += (currentIndex.to_i - prevIndex.to_i) - prevIndex.to_i
		end
		prevIndex = @ha[val].to_i
	end
	return sum
end

p roman_to_int("III")
p roman_to_int("LVIII")
p roman_to_int("XXVII")
p roman_to_int("XXXVIII")
p roman_to_int("CCCXCV")
p roman_to_int("CM")
p roman_to_int("MCMXCIV")