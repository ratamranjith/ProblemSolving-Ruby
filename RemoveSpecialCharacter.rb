class RemoveSpecialCharacter
	def processCharacter(character)
		stringVal = []
		len = character.length
		len.times do |index|
				if(character[index] =~ /[a-zA-Z\s]/)
					stringVal[index] = character[index]
				end
		end
		return stringVal.join
	end
end
chars = "Hello, Boss. How Are you?"
char = RemoveSpecialCharacter.new
p char.processCharacter(chars)