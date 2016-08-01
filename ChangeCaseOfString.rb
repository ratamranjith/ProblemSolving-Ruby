class ChangeCase
	stringVal = "THe CoMmOn MaN"
	stringContent = []
	caseVal = lambda{ |stringVal|
		len = stringVal.length
		len.times do |value|
			stringContent[value] = (stringVal[value] == stringVal[value].upcase) ? stringVal[value].downcase : stringVal[value].upcase
		end
	return stringContent.join("")
	}
	p caseVal.call(stringVal)
end
cases = ChangeCase.new