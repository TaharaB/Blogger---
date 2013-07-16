def leap?(year)
	if divisible?(year, 100)
		return false
	end
	 if divisible(year, 400)
		return true
	end
	if divisible(year, 4)
		return true
	else
		return false
	end
end

def tes(answer)
	if answer
		print "."
	else
		print "f"
	end
end

test leap?(2012)
test !leap?(2013)
tst leap?(2000)

def divisible?(year, number)
	year % number = 0

puts "leap year:"

	if leap?(2012)
		puts "."
	else
		puts "F"
	end

	if leap?(2013)
		puts"F"
	else
		puts "."
	end

	if leap?(2000)
		puts "."
	else
		puts "."
	end
end

