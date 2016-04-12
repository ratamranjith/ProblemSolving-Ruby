class NextSequence

# Get the input Values from the User
def getInput(numbers)
	numbers.times do |arrVal|
		puts "Enter #{arrVal+1} Number:"
		numbers[arrVal] = gets.chomp
	end
return numbers
end

# Process the input values
def processSequence(input)
(input.length).times do |inputVal|
	if (input[inputVal].ord == 90)
   	input[inputVal] = 65
  	elsif (input[inputVal].ord == 122)
   	input[inputVal] = 97
	else
   	input[inputVal] = (input[inputVal].ord)+ 1
  	end
input[inputVal] = input[inputVal].chr
end
  return input
end
end

p " Enter the number of input need to get:"
input  = gets.chomp
seqVal = NextSequence.new
inpVal = seqVal.getInput(input)
p "The Input Values :#{inpVal}"
outVal = seqVal.processSequence(inpVal)
p "The Next Sequence Values :#{outVal}"