class Player
  def play_turn(warrior)
		@warrior = warrior
	
		if should_walk_backward?
			@warrior.walk!(:backward) 
		elsif should_rescue_backwards? 
			rescue_captive(:backward)
		elsif should_retreat?
			@warrior.walk!(:backward)
		elsif should_walk?
			@warrior.walk!
		elsif should_rest?
			@warrior.rest!
		elsif should_rescue?
			rescue_captive
		elsif should_attack?
			@warrior.attack!

		end 

		@last_turn_hps = @warrior.health 
		end

	def rescue_captive(direction = :forward)
		@warrior.rescue!(direction)
		@captives_rescued = @captives_rescued.to_i + 1
	end 

	def should_walk_backward?
		should_rescue_backwards? && @warrior.feel(:backward).empty?
	end

	def should_retreat?
		being_attacked? && (@warrior.health < 8)	
	end

	def should_rescue_backwards?
		@captives_rescued.to_i == 0
	end

	def should_rescue?
		!space? && @warrior.feel.captive?
	end

	def should_walk?
		space? && (!need_rest? || being_attacked?)
	end

	def should_rest?
		space? && need_rest? && !being_attacked?
	end 

	def should_attack?
		!space?
	end 

 	 def being_attacked? 
 		if @warrior.health < @last_turn_hps.to_i
 			being_attacked = true
 		else 
 			being_attacked = false
 		end

 	puts "Being attacked? #{being_attacked}"

 	
 	return being_attacked 
  end

  	def space?
   		@warrior.feel.empty? 
  	end

  	def need_rest?
 	 @warrior.health <= 15
  end
end