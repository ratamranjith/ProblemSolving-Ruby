=begin
Problem Description
Given two integer arrays A and B, and an integer C.
Find the number of integers in A which are greater than C and find the number of integers in B which are less than C.
Return maximum of these two values.
Problem Constraints
1 <= |A|, |B| <= 105
1 <= Ai, Bi, C <=109
Input Format
First argument is an integer array A.
Second argument is an integer array B.
Third argument is an integer C.
Output Format
Return an integer.
Example Input
Input 1:
A = [1, 2, 3, 4]
B = [5, 6, 7, 8]
C = 4
Input 2:
A = [1, 10, 100]
B = [9, 9, 9]
C = 50
Example Output
Output 1:
0
Output 2:
3
Example Explanation
Explanation 1:
There are no integers greater than C in A.
There are no integers less than C in B.
Explanation 2:
Integers greater than C in A are [100].
Integers less than C in A are [9, 9, 9].
=end

def solve(a, b, c)
	acount = 0
	bcount = 0
	a.each_with_index do |x, index|
		acount += 1 if(x > c)
		bcount += 1 if(b[index] < c)
	end
	return (acount >= bcount)? acount : (bcount == 0)? 0 : bcount
end

A = [1, 2, 3, 4]
B = [5, 6, 7, 8]
C = 4

p solve(A, B, C)

A = [1, 10, 100]
B = [9, 9, 9]
C = 50

p solve(A, B, C)