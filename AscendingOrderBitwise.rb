arr = [3, 4, 7, 8, 9]
big = 0
	p "arr[x] | big"
(0..arr.length - 1).each do |x|
	p "#{arr[x]} | #{big}"
	big = (arr[x] | big)
	p "#{big}"
end
