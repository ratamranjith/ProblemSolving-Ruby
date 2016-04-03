#--Input Value
value  = [23, 45, 67 ,89, 12, 2, 4 ,5 ,6]

#---First Iteration
(value.length).times do |x|
	x.times do |y|
		if(value[x] > value[y])
			swap_value = value[x]
			value[x]   = value[y]
			value[y]   = swap_value
		end	
	end
end
p "largest Number is: #{value[0]}"
p "Number in Descending Order : #{value}"