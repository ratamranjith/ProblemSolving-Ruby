#-----------------------------------------------------------------
# Armstrong Number: Sum of it's cubes will be same as given number
def armstrongNumber(num)
	totalvalue = 0
	splitted = num.to_s.split("")
	splitted.each {|x| totalvalue+= x.to_i** 3 }
	return (totalvalue.eql? num)? "armstrongNumber" : "Not armstrongNumber"
end

p armstrongNumber(153)