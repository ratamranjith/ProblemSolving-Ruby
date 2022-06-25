def iterative(number, power)
	x = 1
	while(power > 0)
		# if(power & 1)
			x 	   = (x * number)
			number = (number * number)
			power  = (power/2).to_i
		# end
	end
	return x
end

p iterative(4, 2)