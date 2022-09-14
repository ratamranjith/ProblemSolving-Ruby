#--------------------------#
# Base Cases for Recursion #
#--------------------------#
#------------------------------------------------------------------------------------
# 	1. Cannot Break it further:
#   		Foreg: Factorial of a number in recursion, we can break it until zero and 
#      after Zero, we cannot break it further
#------------------------------------------------------------------------------------

#---------------------------
# Wrong basecase - factorial
def fact(n)
	return 0 if(n == 1)
	return fact(n-1)
end

#----------------------------------------
# Here, the output leads to stackoverflow
# It will continuously use the memory infinite times
#	fact(0)
#		-> fact(0-1)
# 		   -> fact(0-2)
#            -> fact(0-3)
# 				-> ..........

#-----------------------------
# Correct basecase - factorial
def fact(n)
	return 0 if(n==0)
	return fact(n-1)
end
# Base case is more important

#-------------------------------------------------------------
#--------------------------
# Wrong basecase - fibonaci
def fibonacci(n)
	return 0 if(n == 0)
	return fibonacci(n-1) + fibonacci(n-2)
end

#----------------------------------------
# Here, the output leads to stackoverflow
# It will continuously use the memory infinite times
# fibonacci(0)
# 			-> fibonacci(0-1) + fibonacci(0-2)

#-----------------------------
# Correct basecase - fibonacci
def fibonacci(n)
	return n if(n <= 1) # Here, n may be 0 or 1
	return fibonacci(n-1) + fibonacci(n-2)
end