#---------------------------
# Palindrome using recursion
def palindrome(str, start = 0, endval = 0)
	if(start >= endval)
		return true
	end
	return ((str[start].eql? str[endval]) && palindrome(str, start + 1 , endval - 1))
end

string = "MALAYALAM"
len = string.length

p palindrome(string, 0, len-1)