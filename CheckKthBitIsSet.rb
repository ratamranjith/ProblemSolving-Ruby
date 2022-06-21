#------------------------------------------------------------
# This Program is used to find the kth bit is set or not
# For Example
# Binary Value of 5 is 00000101
# k = 1 (position is 1)
# so the Kth bit is set, means it is not zero..it has value 1
class Check_bit

	# attr_accessor :position?\
	def initialize(position, number)
		@position = position
		@number   = number
	end

	#-------------------------
	# Using Leftshift operator
	def check_kth_bit_left()
		return ((@number & (1 << (@position-1)) != 0))? "Kth Bit is set" : "Kth Bit is Not Set"
	end

	def check_kth_bit_right()
		return ((1 & (@number >> (@position - 1))) == 1)? "Kth Bit is set" : "Kth Bit is Not Set"
	end

end

c = Check_bit.new 2,5
p c.check_kth_bit_left
p c.check_kth_bit_right