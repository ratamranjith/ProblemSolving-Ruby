a = [1,2,3,4,5,7,8,4,3,2,4,5,6,87]
p sorted = a.sort #Without sorting Binary search is not possible
searchItem = 5
def binarySearch(arrayList, searchItem)
	startPosition = 0
	midPosition = 0
	endPosition = arrayList.length
	midPosition = ((startPosition + endPosition)/2).to_i
	while(startPosition <= endPosition)
		if(arrayList[midPosition] === searchItem)
			return "Search found"
		elsif(arrayList[midPosition] < searchItem)
			p midPosition = ((startPosition + endPosition)/2).to_i
			p startPosition = midPosition + 1
		else
			midPosition = ((endPosition + startPosition)/2).to_i		
			endPosition = midPosition - 1
		end
	end
end
p binarySearch(a, searchItem)