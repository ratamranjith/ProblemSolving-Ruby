#----------------------------
# Kill kth person by rotation
# for example:
# if total persons are n and we need to kill the kth person next to him in a round robin basis
# n = 7, k = 3
#
# step - 1: 1 2  3 4 5 6 7 , k = 3 => 1 , 2, killed, 4 , 5 ,6, 7
# step - 2: 4 5 6 7 1 2 , k = 3 => 4, 5, killed, 7, 1, 2 
# step - 3: 7 1 2 4 5 , k = 3 => 7, 1 killed, 4, 5
# step - 4: 4 5 7 1, k = 3 => 4, 5, killed, 1
# step - 5: 1 4 5, k = 3 => 1, 4, killed
# step - 6: 1 4, k = 3 => 1, 4 then round robin killed, 4
persons = ["ram", "ran", "rum", "mon", "tue", "wed", "thur"]

def kill_problem(n, k)
	return 0 if(n.eql? 1)
	return (kill_problem(n-1, k) + k)%n
end

p "Leftover  Person is : "+ persons[kill_problem(5, 3)].to_s