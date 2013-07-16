def bobs_answer(comment)

	if comment[-1] == "?"
	 "sure"
	end
	else comment[-1] == "."
	 "F"
	end





end

if bobs_answer("How are you?")== "sure."
	print "."
else
	print "F"
end

if bobs_answer("Do you homework.")== "Whatever"
	print "."
else
		print "F"	
end

if bobs_answer("HEY BOB") == "Whoah, chill out!"
	print "."
else
	priny "F"
end

if bobs_answer("") == "Fine, be that way!" &&
	bobs_answer(nil) == "Fine, be that way!"
	print "."
else
	print "F"
end

