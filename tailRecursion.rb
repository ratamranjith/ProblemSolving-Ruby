#-----------------------------------------------------#
# Tail recursion is the quickest way to get the output#

#----------------------------------------------------------------
# Comparison of tail and non-tail recursion
# Tail Recursion :
# 		There is no other operations is performed after recursion
# Non-tail Recursion :
#        Opposite to Tail recursion
#----------------------------------------------------------------
require "benchmark"
#-------------------
# Non-Tail Recursion
def fact(n)
	return 1 if(n == 0)
	return n * fact(n - 1)
end

#---------------
# Tail Recursion
def fact_tail(n, k)
	return k if(n == 0)
	return fact_tail(n-1, k*n)
end

Benchmark.bm do |x|
	x.report("Non-tail:") { p fact(100)}
	x.report("Tail:") { p fact_tail(100, 1)}
end