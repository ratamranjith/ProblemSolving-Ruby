#------------------------------------------
# Array Rotation - using the rotation index

#-------------------
# Naive Solution - 1
def array_rotation(arrayValue, rotationIndex)
	length = nil
	tempArray = []
	tempArray1 = []
	begin
		length = arrayValue.length
		arrayValue.each_with_index do |x, index|
			if(index < rotationIndex)
				tempArray << x
			else
				tempArray1 << x
			end
		end
	ensure
		return (tempArray1 + tempArray)
	end
end
p array_rotation(arrayValue, 3)