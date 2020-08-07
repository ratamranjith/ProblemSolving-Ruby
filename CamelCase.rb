as = "aliceWroteaSequenceOfWordsinCamelCaseAsAStringOfLetters"
def count_words(words)
	count = 0
	count += 1 if (words.match(/^[a-z]+/))
	(words.length).times do |x|
		if(words[x].match(/[A-Z]+$/))
			count += 1
		end
	end
	return count
end

print(count_words(as))