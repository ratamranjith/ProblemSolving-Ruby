sentence = "to Find the largest number from a given sentence"
word = []
count = 0
word = sentence.split(" ")
(word.length).times do |x|
	x.times do |y|
		if (word[x].length > word[y].length)
			swap_word = word[x]
			word[x] = word[y]
			word[y] = swap_word
		end
	end
end
p "The Largest Word is #{word[0]}"