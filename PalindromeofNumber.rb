def is_palindrome(x)
    sum = 0
    temp = x
    return false if(x < 0)
    while(temp > 0)
        rem = temp % 10
        p sum = rem + (sum * 10)
        temp = temp/10
    end
    return (x.eql? sum)
end


p is_palindrome(-121)