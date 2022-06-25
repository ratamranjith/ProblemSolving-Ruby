def power(number, powe)
	result = (powe == 0)? 1 : number
	return (result * (power(number, powe/2)))
end

p power(5, 2)