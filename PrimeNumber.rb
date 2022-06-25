#----------------------------------
# Naive method to find prime number
def primeCheck(num)
	retVal = true
	if(num == 1)
		retVal = false
	else
		(2..num).each do |i|
			return ((num % (i) == 0)? false : true)
		end
	end
end
 
#---------------------------------
# Average Solution - Sqrt of log n
def primeNumber(num)
	i = 2
	return false if(num == 1)
	while(i*i <= num)
		if(num % i == 0)
			return false
		end
		i += 1
	end
	return true
end

