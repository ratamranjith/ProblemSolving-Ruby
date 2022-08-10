#----------------------------
# Print the Following Pattern
# P 			M
# 	R 		 A
# 	   O   R
# 	     G
# 	   O   R
# 	R   	 A 
# P 			M 
#-----------------
# Pattern Printing
def pattern_1(input)

	inputArray = input.split("")
	len = inputArray.length - 1
	count = 0
	input.length.times do |x|
		if(x < (len - x))
			p " "*(x)+inputArray[x] + " "*(len - (x+x)) + inputArray[len - x]
		elsif(x.eql? (len - x))
			p " "*(x)+inputArray[x] + " "*(len - (x+x))
		else
			count += 2
			p " "*(len - (x)) + inputArray[len - x]+ " " * (count) +inputArray[x]
		end
	end
end

pattern_1("PROGRAM")
p "================="
pattern_1("HELLO WORLD")