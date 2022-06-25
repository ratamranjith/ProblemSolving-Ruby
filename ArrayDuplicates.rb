a = [2,3,1,2,3]
def find_duplicates(nums)
    nums.each_with_object([]) do |num, array|
      if(nums[num.abs - 1] < 0)
      	p "invoke: #{num.abs}"
      	array << num.abs
      else
      	p "multiply before : #{nums[num.abs - 1]}"
      	nums[num.abs - 1] = nums[num.abs - 1] * -1
      	p "multiply after : #{nums[num.abs - 1]}"
      end
    end
end

p find_duplicates(a)
#Note: It willwork only for the numbers less than the given length